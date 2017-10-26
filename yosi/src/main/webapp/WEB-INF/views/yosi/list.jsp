<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
<title>List Table</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://bootsnipp.com/dist/bootsnipp.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">	
<meta charset="utf-8" />
</head>
<style>
body {
	background-image:
		url("/resources/images/ns.png");
	background-size: cover;
	background-repeat: no-repeat;
}

.panel {
	margin-left: 5%;
	margin-right: 5%;
	background: transparent;
	margin-right: 10%;
	border-color: white;
}

tr {
	transition: all 0.5s;
}

tr:hover {
	background-color: #f0ad4e;
	transition: 0.5s;
}

.btn-warning {
	transition: all 0.8s;
}

.btn-warning:hover, .btn-warning:focus {
	transition: 0.8s;
	background-color: #428bca;
	border-color: white;
}

.panel-footer {
	background-color: #5bc0de;
	color: white;
}

.pagination>li>a, .pagination>li>span {
	border-radius: 50% !important;
	margin: 0 5px;
}

.pagination {
	margin: 5px;
}

.panel-success>.panel-heading {
	background-color: transparent;
	border-color: white;
}

.panel-footer {
	background-color: transparent;
	color: white;
	border-color: white;
}

.panel-heading {
	padding: 10px 5px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
}
.table>tbody>tr>td{
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid white;
}
.text-center {
    text-align: center;
    color: white;
}
strong, b {
    color: white;
    font-weight: 700;
}
</style>

				
	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-3">
						<h2 class="text-center pull-left"
							style="padding-left: 20px; padding-top: 20px;">
							<span class="glyphicon glyphicon-list-alt"></span> Baseball Board
						</h2>
					</div>
					<div class="col-xs-9 col-sm-9 col-md-9">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="col-xs-12 col-md-4">
								<div class="form-group">
									<div class="input-group"></div>
								</div>

							</div>

						</div>




						<a href="/yosi/register?page=${cri.page}" aria-hidden="true">
							<button class="btn btn-primary" style="float: right;">
								<font size="3" color="white">+ADD</font>
							</button>
						</a>
					</div>
				</div>
			</div>

			<div class="panel-body table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center">No.</th>
							<th class="text-center">Title</th>
							<th class="text-center">Writer</th>
							<th class="text-center">Regdate</th>
							<th class="text-center">ViewCnt</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${list}" var="board">
							<tr class="edit" id="detail">
								<td id="no" class="text-center">${board.tno}</td>
								<td id="title" class="text-center"><a class='link'
									href="/yosi/view?page=${cri.page}&tno=${board.tno}">${board.title}</a>[${board.replycnt}]</td>

								<td id="writer" class="text-center">${board.writer}</td>
								<td id="regdate" class="text-center"><fmt:formatDate
										value="${board.regdate}" pattern="yyyy-MM-dd HH:ss" /></td>
								<td id="viewcnt" class="text-center">${board.viewcnt}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav aria-label="Page navigation" class="text-center">
				<ul class="pagination">

					<!-- <li><a href="#" aria-label="Previous"> 
					<span aria-hidden="true">«</span>
					</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> 
					<span aria-hidden="true">»</span>
					</a></li> -->

				</ul>
				</nav>
			</div>

			<div class="panel-footer">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-md-8"></div>
						<div class="col-md-4">
							<p class="muted pull-right">
								<strong> © 2017 Yosi Mini Project </strong>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>	
	<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
	integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
	crossorigin="anonymous"></script>
	
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/skel.min.js"></script>
	<script src="/resources/assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="/resources/assets/js/main.js"></script>
		
	<script src="/resources/js/paging.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		
		
		var msg = '${result}';
		
		if (msg === 'success'){
			alert("게시글 등록완료.");
		}else if(msg === 'delsuccess'){
			alert("삭제 되었습니다.");
		};
		
		var pageStr = makePage({
			total:${cri.total},
	        current:${cri.page},
	        liCount:5
	    });
		
		/* console.log("jsp : " + pageStr); */
		
		$(".pagination").html(pageStr);
	
				
	    $(function(){
	        var pageBtn = $("ul > li");    //ul > li 이를 pageBtn 으로 칭한다. (클릭이벤트는 li에 적용 된다.)
	         pageBtn .find("a").click(function(){   // pageBtn 에 속해 있는  a 찾아 클릭.
	         pageBtn .removeClass("active");     // pageBtn 속에 (active) 클래스를 삭제.
	         $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
	        })
	    });
	});
		
	
		
	</script>
	

</body>
</html>