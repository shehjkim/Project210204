package co.micol.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.sell.SellList;



@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HashMap<String, Command> map = new HashMap<>();
       
    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		map.put("/loading.do", new Loading());
		map.put("/loginForm.do", new LoginForm());
		
		
		
		//현정
		map.put("/SellList.do", new SellList()); //판매리스트
//		map.put("/SellView.do", new phoneSellView()); //상세리스트
//		map.put("/phoneSellInsert.do", new phoneSellInsert()); //새글등록
//		map.put("/SellUpdateForm.do", new SellUpdateForm()); // 글수정
//		map.put("/SellDelete.do", new SellDelete()); // 글삭제
//		map.put("/", new ());
//		map.put("/", new ());
//		map.put("/", new ());
//		map.put("/", new ());
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		String path = uri.substring(contextPath.length());
		
		Command command = map.get(path);
		String viewPage = command.exec(request, response);
		
		if(!viewPage.endsWith(".do")) viewPage = "WEB-INF/jsp/"+viewPage+".jsp";
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
