<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
</head>
<style>
body { padding-top:30px; }

.meButton {
	-moz-box-shadow: inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow: inset 0px 1px 0px 0px #ffffff;
	box-shadow: inset 0px 1px 0px 0px #ffffff;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f9f9f9
		), color-stop(1, #e9e9e9));
	background: -moz-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background: -webkit-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background: -o-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background: -ms-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background: linear-gradient(to bottom, #f9f9f9 5%, #e9e9e9 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f9f9f9',
		endColorstr='#e9e9e9', GradientType=0);
	background-color: #f9f9f9;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #dcdcdc;
	display: inline-block;
	cursor: pointer;
	color: #666666;
	font-family: Arial;
	font-size: 12px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #ffffff;
}

.meButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #e9e9e9
		), color-stop(1, #f9f9f9));
	background: -moz-linear-gradient(top, #e9e9e9 5%, #f9f9f9 100%);
	background: -webkit-linear-gradient(top, #e9e9e9 5%, #f9f9f9 100%);
	background: -o-linear-gradient(top, #e9e9e9 5%, #f9f9f9 100%);
	background: -ms-linear-gradient(top, #e9e9e9 5%, #f9f9f9 100%);
	background: linear-gradient(to bottom, #e9e9e9 5%, #f9f9f9 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e9e9e9',
		endColorstr='#f9f9f9', GradientType=0);
	background-color: #e9e9e9;
}

.meButton:active {
	position: relative;
	top: 1px;
}

.myButton {
	-moz-box-shadow: inset 0px 1px 0px 0px #d9fbbe;
	-webkit-box-shadow: inset 0px 1px 0px 0px #d9fbbe;
	box-shadow: inset 0px 1px 0px 0px #d9fbbe;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #b8e356
		), color-stop(1, #a5cc52));
	background: -moz-linear-gradient(top, #b8e356 5%, #a5cc52 100%);
	background: -webkit-linear-gradient(top, #b8e356 5%, #a5cc52 100%);
	background: -o-linear-gradient(top, #b8e356 5%, #a5cc52 100%);
	background: -ms-linear-gradient(top, #b8e356 5%, #a5cc52 100%);
	background: linear-gradient(to bottom, #b8e356 5%, #a5cc52 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#b8e356',
		endColorstr='#a5cc52', GradientType=0);
	background-color: #b8e356;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #83c41a;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 12px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #86ae47;
}

.myButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #a5cc52
		), color-stop(1, #b8e356));
	background: -moz-linear-gradient(top, #a5cc52 5%, #b8e356 100%);
	background: -webkit-linear-gradient(top, #a5cc52 5%, #b8e356 100%);
	background: -o-linear-gradient(top, #a5cc52 5%, #b8e356 100%);
	background: -ms-linear-gradient(top, #a5cc52 5%, #b8e356 100%);
	background: linear-gradient(to bottom, #a5cc52 5%, #b8e356 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#a5cc52',
		endColorstr='#b8e356', GradientType=0);
	background-color: #a5cc52;
}

.myButton:active {
	position: relative;
	top: 1px;
}

.cButton {
	-moz-box-shadow: inset 0px 1px 0px 0px #dcecfb;
	-webkit-box-shadow: inset 0px 1px 0px 0px #dcecfb;
	box-shadow: inset 0px 1px 0px 0px #dcecfb;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #bddbfa
		), color-stop(1, #80b5ea));
	background: -moz-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
	background: -webkit-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
	background: -o-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
	background: -ms-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
	background: linear-gradient(to bottom, #bddbfa 5%, #80b5ea 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#bddbfa',
		endColorstr='#80b5ea', GradientType=0);
	background-color: #bddbfa;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #84bbf3;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 12px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #528ecc;
}

.cButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #80b5ea
		), color-stop(1, #bddbfa));
	background: -moz-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
	background: -webkit-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
	background: -o-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
	background: -ms-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
	background: linear-gradient(to bottom, #80b5ea 5%, #bddbfa 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80b5ea',
		endColorstr='#bddbfa', GradientType=0);
	background-color: #80b5ea;
}

.cButton:active {
	position: relative;
	top: 1px;
}
</style>
<body>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<h2>글 수정</h2>

			</thead>
			<tbody>
				<form method="post" action="/yosi/modify" id='modForm'>
					<tr>
						<th>제목:</th>
						<td><input type="text" name="title" class="form-control"
							value="${board.title}" /></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" name="contents" class="form-control">${board.contents}</textarea></td>
					</tr>
					<tr>
						<th>작성자:</th>
						<td><input type="text" placeholder="작성자 이름입니다.."
							name="writer" class="form-control" readonly="readonly"
							value="${board.writer}" /></td>
					</tr>
					<tr>
						<th>첨부파일:</th>
						<td><input type="text" placeholder="파일을 선택하세요. "
							name="filename" class="form-control" /></td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="btn myButton pull-right" data-oper='mod'
								type="button" id="btnUpdete">확인</button>
							<button class="btn cButton pull-right" data-oper='view'
								type="button" id="btnDelete">취소</button>
						</td>
					</tr>
					<input type='hidden' name='tno' value='${board.tno}'> <input
						type='hidden' name='page' value='${cri.page}'>
				</form>
				등록 날짜 :
				<fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd HH:ss" />
				<a href='/yosi/list?page=${cri.page}'><button
						class="meButton pull-right">목록으로</button></a>
			</tbody>
		</table>
	</div>
	<form class='form1' method="get">
		<input type='hidden' name='page' value='${cri.page}'> <input
			type='hidden' name='tno' value='${board.tno}'>
	</form>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>


	<script type="text/javascript">
	
	var actionForm = $(".form1");
	$(".btn").click(function(e){
		 e.preventDefault(); 
	  });
	
	 
	 $(".btn[data-oper='mod']").click(function(e){
		
		 $("#modForm").submit(); 
	  });
	 
	 $(".btn[data-oper='view']").click(function(e){
		 actionForm.attr("method","get")
		 .attr("action", "/yosi/view?page="+${cri.page}+"&tno="+${board.tno}).submit(); 
	  });
	 </script>

</body>
</html>