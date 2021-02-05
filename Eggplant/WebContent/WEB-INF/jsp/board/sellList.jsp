<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.table {
    width: 100%;
    margin-bottom: 1rem;
    color: #858796;
}
.table td,
.table th {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 1px solid #e3e6f0;
}
.table thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #e3e6f0;
}
.table tbody+tbody {
    border-top: 2px solid #e3e6f0;
}
.table-sm td,
.table-sm th {
    padding: 0.3rem;
}
.table-bordered {
    border: 1px solid #e3e6f0;
}
.table-bordered td,
.table-bordered th {
    border: 1px solid #e3e6f0;
}
.table-bordered thead td,
.table-bordered thead th {
    border-bottom-width: 2px;
}
.table-borderless tbody+tbody,
.table-borderless td,
.table-borderless th,
.table-borderless thead th {
    border: 0;
}
.table-striped tbody tr:nth-of-type(odd) {
    background-color: rgba(0,0,0,.05);
}
.table-hover tbody tr:hover {
    color: #858796;
    background-color: rgba(0,0,0,.075);
}
.table-primary,
.table-primary > td,
.table-primary > th {
    background-color: #cdd8f6;
}
.table-primary tbody+tbody,
.table-primary td,
.table-primary th,
.table-primary thead th {
    border-color: #a3b6ee;
}
.table-hover .table-primary:hover {
    background-color: #b7c7f2;
}
.table-hover .table-primary:hover > td,
.table-hover .table-primary:hover > th {
    background-color: #b7c7f2;
}
.table-secondary,
.table-secondary > td,
.table-secondary > th {
    background-color: #dddde2;
}
.table-secondary tbody+tbody,
.table-secondary td,
.table-secondary th,
.table-secondary thead th {
    border-color: #c0c1c8;
}
.table-hover .table-secondary:hover {
    background-color: #cfcfd6;
}
.table-hover .table-secondary:hover > td,
.table-hover .table-secondary:hover > th {
    background-color: #cfcfd6;
}
.table-success,
.table-success > td,
.table-success > th {
    background-color: #bff0de;
}
.table-success tbody+tbody,
.table-success td,
.table-success th,
.table-success thead th {
    border-color: #89e2c2;
}
.table-hover .table-success:hover {
    background-color: #aaebd3;
}
.table-hover .table-success:hover > td,
.table-hover .table-success:hover > th {
    background-color: #aaebd3;
}
.table-info,
.table-info > td,
.table-info > th {
    background-color: #c7ebf1;
}
.table-info tbody+tbody,
.table-info td,
.table-info th,
.table-info thead th {
    border-color: #96dbe4;
}
.table-hover .table-info:hover {
    background-color: #b3e4ec;
}
.table-hover .table-info:hover > td,
.table-hover .table-info:hover > th {
    background-color: #b3e4ec;
}
.table-warning,
.table-warning > td,
.table-warning > th {
    background-color: #fceec9;
}
.table-warning tbody+tbody,
.table-warning td,
.table-warning th,
.table-warning thead th {
    border-color: #fadf9b;
}
.table-hover .table-warning:hover {
    background-color: #fbe6b1;
}
.table-hover .table-warning:hover > td,
.table-hover .table-warning:hover > th {
    background-color: #fbe6b1;
}
.table-danger,
.table-danger > td,
.table-danger > th {
    background-color: #f8ccc8;
}
.table-danger tbody+tbody,
.table-danger td,
.table-danger th,
.table-danger thead th {
    border-color: #f3a199;
}
.table-hover .table-danger:hover {
    background-color: #f5b7b1;
}
.table-hover .table-danger:hover > td,
.table-hover .table-danger:hover > th {
    background-color: #f5b7b1;
}
.table-light,
.table-light > td,
.table-light > th {
    background-color: #fdfdfe;
}
.table-light tbody+tbody,
.table-light td,
.table-light th,
.table-light thead th {
    border-color: #fbfcfd;
}
.table-hover .table-light:hover {
    background-color: #ececf6;
}
.table-hover .table-light:hover > td,
.table-hover .table-light:hover > th {
    background-color: #ececf6;
}
.table-dark,
.table-dark > td,
.table-dark > th {
    background-color: #d1d1d5;
}
.table-dark tbody+tbody,
.table-dark td,
.table-dark th,
.table-dark thead th {
    border-color: #a9aab1;
}
.table-hover .table-dark:hover {
    background-color: #c4c4c9;
}
.table-hover .table-dark:hover > td,
.table-hover .table-dark:hover > th {
    background-color: #c4c4c9;
}
.table-active,
.table-active > td,
.table-active > th {
    background-color: rgba(0,0,0,.075);
}
.table-hover .table-active:hover {
    background-color: rgba(0,0,0,.075);
}
.table-hover .table-active:hover > td,
.table-hover .table-active:hover > th {
    background-color: rgba(0,0,0,.075);
}
.table .thead-dark th {
    color: #fff;
    background-color: #5a5c69;
    border-color: #6c6e7e;
}
.table .thead-light th {
    color: #6e707e;
    background-color: #eaecf4;
    border-color: #e3e6f0;
}
.table-dark {
    color: #fff;
    background-color: #5a5c69;
}
.table-dark td,
.table-dark th,
.table-dark thead th {
    border-color: #6c6e7e;
}
.table-dark.table-bordered {
    border: 0;
}
.table-dark.table-striped tbody tr:nth-of-type(odd) {
    background-color: rgba(255,255,255,.05);
}
.table-dark.table-hover tbody tr:hover {
    color: #fff;
    background-color: rgba(255,255,255,.075);
}
</style>
<script src="js/demo/chart-area-demo\".js"></script>
<script src="js/demo/chart-pie-demo.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		type: 'post',
		url: '<%=request.getContextPath()%>/sellList',
		dataType: "json",
		success: function(result) {
			console.log(result);
			console.log('ajax GET 성공쓰');
			for(let i=0; i<6; i++){
				let tr= document.createElement('tr');
				let tbody = document.createElementById("show").append(tr);
				console.log(result[i]);
				for(filed in result[i]){
				 let td = document.createElement('td');
				 td.innerHTML = result [i][filed];
				 tr.appendChild(td);
			}
			}
			
		}
		
	})
}))
</script>
<body>
 <div align="center">
        <h1>판매리스트</h1>
        </div>
        <div>
                <form id="frm" name="frm" action="" method="post">
                    <input type="hidden" id="tNumber" name="tName">
                </form>
                <table border="1" class="table table-bordered" id="dataTable" width="100%"
                cellspacing="0" style="width:200px">
                    <tr>
                        <th colspan="2" width="150" height="100">이미지</th>
                    </tr>
                    <tr>
                        <th colspan="2">제목</th>
                    </tr>
                    <tr>
                        <th colspan="2">기종</th>
                    </tr>
                    <tr>
                        <th>색상</th>
                        <th>용량</th>
                    </tr>
                    <tr>
                        <th colspan="2">가격</th>
                    </tr>
                    <tr>
                        <th>조회수</th>
                        <th>좋아요</th>
                    </tr>
        
                </table><br />
            </div>
	</div>

<div align = "center">
		<button type="button" onclick="location.href='phoneSellList.do'">목록보기</button>
		<button type="button" onclick="deleteAlert('${vo.tNumber}')">삭제</button>
		<button type="button" onclick="updateAlert('${vo.tNumber}')">수 정</button>
</div>

</body>
</html>