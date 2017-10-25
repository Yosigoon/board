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
.myButton {
	-moz-box-shadow: inset 0px 1px 0px 0px #9fb4f2;
	-webkit-box-shadow: inset 0px 1px 0px 0px #9fb4f2;
	box-shadow: inset 0px 1px 0px 0px #9fb4f2;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #7892c2
		), color-stop(1, #476e9e));
	background: -moz-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background: -webkit-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background: -o-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background: -ms-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background: linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#7892c2',
		endColorstr='#476e9e', GradientType=0);
	background-color: #7892c2;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 12px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
}

.myButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #476e9e
		), color-stop(1, #7892c2));
	background: -moz-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background: -webkit-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background: -o-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background: -ms-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background: linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#476e9e',
		endColorstr='#7892c2', GradientType=0);
	background-color: #476e9e;
}

.myButton:active {
	position: relative;
	top: 1px;
}

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

.yButton {
	-moz-box-shadow: inset 0px 1px 0px 0px #f7c5c0;
	-webkit-box-shadow: inset 0px 1px 0px 0px #f7c5c0;
	box-shadow: inset 0px 1px 0px 0px #f7c5c0;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #fc8d83
		), color-stop(1, #e4685d));
	background: -moz-linear-gradient(top, #fc8d83 5%, #e4685d 100%);
	background: -webkit-linear-gradient(top, #fc8d83 5%, #e4685d 100%);
	background: -o-linear-gradient(top, #fc8d83 5%, #e4685d 100%);
	background: -ms-linear-gradient(top, #fc8d83 5%, #e4685d 100%);
	background: linear-gradient(to bottom, #fc8d83 5%, #e4685d 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fc8d83',
		endColorstr='#e4685d', GradientType=0);
	background-color: #fc8d83;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #d83526;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 12px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #b23e35;
}

.yButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #e4685d
		), color-stop(1, #fc8d83));
	background: -moz-linear-gradient(top, #e4685d 5%, #fc8d83 100%);
	background: -webkit-linear-gradient(top, #e4685d 5%, #fc8d83 100%);
	background: -o-linear-gradient(top, #e4685d 5%, #fc8d83 100%);
	background: -ms-linear-gradient(top, #e4685d 5%, #fc8d83 100%);
	background: linear-gradient(to bottom, #e4685d 5%, #fc8d83 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e4685d',
		endColorstr='#fc8d83', GradientType=0);
	background-color: #e4685d;
}

.yButton:active {
	position: relative;
	top: 1px;
}
.modbtn {
	-moz-box-shadow: 3px 4px 0px 0px #bbdaf7;
	-webkit-box-shadow: 3px 4px 0px 0px #bbdaf7;
	box-shadow: 3px 4px 0px 0px #bbdaf7;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #6aa8e6));
	background:-moz-linear-gradient(top, #79bbff 5%, #6aa8e6 100%);
	background:-webkit-linear-gradient(top, #79bbff 5%, #6aa8e6 100%);
	background:-o-linear-gradient(top, #79bbff 5%, #6aa8e6 100%);
	background:-ms-linear-gradient(top, #79bbff 5%, #6aa8e6 100%);
	background:linear-gradient(to bottom, #79bbff 5%, #6aa8e6 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#6aa8e6',GradientType=0);
	background-color:#79bbff;
	-moz-border-radius:18px;
	-webkit-border-radius:18px;
	border-radius:18px;
	border:1px solid #84bbf3;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:10px;
	padding:7px 25px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528ecc;
}
.modbtn:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #6aa8e6), color-stop(1, #79bbff));
	background:-moz-linear-gradient(top, #6aa8e6 5%, #79bbff 100%);
	background:-webkit-linear-gradient(top, #6aa8e6 5%, #79bbff 100%);
	background:-o-linear-gradient(top, #6aa8e6 5%, #79bbff 100%);
	background:-ms-linear-gradient(top, #6aa8e6 5%, #79bbff 100%);
	background:linear-gradient(to bottom, #6aa8e6 5%, #79bbff 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6aa8e6', endColorstr='#79bbff',GradientType=0);
	background-color:#6aa8e6;
}
.modbtn:active {
	position:relative;
	top:1px;
}


.delbtn {
	-moz-box-shadow: 3px 4px 0px 0px #f29c93;
	-webkit-box-shadow: 3px 4px 0px 0px #f29c93;
	box-shadow: 3px 4px 0px 0px #f29c93;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffdfdb), color-stop(1, #db2e2e));
	background:-moz-linear-gradient(top, #ffdfdb 5%, #db2e2e 100%);
	background:-webkit-linear-gradient(top, #ffdfdb 5%, #db2e2e 100%);
	background:-o-linear-gradient(top, #ffdfdb 5%, #db2e2e 100%);
	background:-ms-linear-gradient(top, #ffdfdb 5%, #db2e2e 100%);
	background:linear-gradient(to bottom, #ffdfdb 5%, #db2e2e 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffdfdb', endColorstr='#db2e2e',GradientType=0);
	background-color:#ffdfdb;
	-moz-border-radius:18px;
	-webkit-border-radius:18px;
	border-radius:18px;
	border:1px solid #d83526;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:10px;
	padding:7px 25px;
	text-decoration:none;
	text-shadow:0px 1px 0px #b23e35;
}
.delbtn:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #db2e2e), color-stop(1, #ffdfdb));
	background:-moz-linear-gradient(top, #db2e2e 5%, #ffdfdb 100%);
	background:-webkit-linear-gradient(top, #db2e2e 5%, #ffdfdb 100%);
	background:-o-linear-gradient(top, #db2e2e 5%, #ffdfdb 100%);
	background:-ms-linear-gradient(top, #db2e2e 5%, #ffdfdb 100%);
	background:linear-gradient(to bottom, #db2e2e 5%, #ffdfdb 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#db2e2e', endColorstr='#ffdfdb',GradientType=0);
	background-color:#db2e2e;
}
.delbtn:active {
	position:relative;
	top:1px;
}

.setbtn {
	-moz-box-shadow: 3px 4px 0px 0px #a4e271;
	-webkit-box-shadow: 3px 4px 0px 0px #a4e271;
	box-shadow: 3px 4px 0px 0px #a4e271;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #e1faa8), color-stop(1, #7dad0e));
	background:-moz-linear-gradient(top, #e1faa8 5%, #7dad0e 100%);
	background:-webkit-linear-gradient(top, #e1faa8 5%, #7dad0e 100%);
	background:-o-linear-gradient(top, #e1faa8 5%, #7dad0e 100%);
	background:-ms-linear-gradient(top, #e1faa8 5%, #7dad0e 100%);
	background:linear-gradient(to bottom, #e1faa8 5%, #7dad0e 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#e1faa8', endColorstr='#7dad0e',GradientType=0);
	background-color:#e1faa8;
	-moz-border-radius:18px;
	-webkit-border-radius:18px;
	border-radius:18px;
	border:1px solid #74b807;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:10px;
	padding:7px 25px;
	text-decoration:none;
	text-shadow:0px 1px 0px #82ba27;
}
.setbtn:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #7dad0e), color-stop(1, #e1faa8));
	background:-moz-linear-gradient(top, #7dad0e 5%, #e1faa8 100%);
	background:-webkit-linear-gradient(top, #7dad0e 5%, #e1faa8 100%);
	background:-o-linear-gradient(top, #7dad0e 5%, #e1faa8 100%);
	background:-ms-linear-gradient(top, #7dad0e 5%, #e1faa8 100%);
	background:linear-gradient(to bottom, #7dad0e 5%, #e1faa8 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#7dad0e', endColorstr='#e1faa8',GradientType=0);
	background-color:#7dad0e;
}
.setbtn:active {
	position:relative;
	top:1px;
}

body {
	padding-top: 30px;
}

.widget .panel-body {
	padding: 0px;
}

.widget .list-group {
	margin-bottom: 0;
}

.widget .panel-title {
	display: inline
}

.widget .label-info {
	float: right;
}

.widget li.list-group-item {
	border-radius: 0;
	border: 0;
	border-top: 1px solid #ddd;
}

.widget li.list-group-item:hover {
	background-color: rgba(86, 61, 124, .1);
}

.widget .mic-info {
	color: #666666;
	font-size: 11px;
}

.widget .action {
	margin-top: 5px;
}

.widget .comment-text {
	font-size: 12px;
}

.widget .btn-block {
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
}

.ui-group-buttons .or {
	position: relative;
	float: left;
	width: .3em;
	height: 1.3em;
	z-index: 3;
	font-size: 12px
}

.ui-group-buttons .or:before {
	position: absolute;
	top: 50%;
	left: 50%;
	content: '';
	background-color: #5a5a5a;
	margin-top: -.1em;
	margin-left: -.9em;
	width: 1.8em;
	height: 1.8em;
	line-height: 1.55;
	color: #fff;
	font-style: normal;
	font-weight: 400;
	text-align: center;
	border-radius: 500px;
	-webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1);
	box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1);
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box
}

.ui-group-buttons .or:after {
	position: absolute;
	top: 0;
	left: 0;
	content: ' ';
	width: .3em;
	height: 2.84em;
	background-color: rgba(0, 0, 0, 0);
	border-top: .6em solid #5a5a5a;
	border-bottom: .6em solid #5a5a5a
}

.ui-group-buttons .or.or-lg {
	height: 1.3em;
	font-size: 16px
}

.ui-group-buttons .or.or-lg:after {
	height: 2.85em
}

.ui-group-buttons .or.or-sm {
	height: 1em
}

.ui-group-buttons .or.or-sm:after {
	height: 2.5em
}

.ui-group-buttons .or.or-xs {
	height: .25em
}

.ui-group-buttons .or.or-xs:after {
	height: 1.84em;
	z-index: -1000
}

.ui-group-buttons {
	display: inline-block;
}

.ui-group-buttons:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden
}

.ui-group-buttons .btn {
	float: left;
	border-radius: 0
}

.ui-group-buttons .btn:first-child {
	margin-left: 0;
	border-top-left-radius: .25em;
	border-bottom-left-radius: .25em;
	padding-right: 15px
}

.ui-group-buttons .btn:last-child {
	border-top-right-radius: .25em;
	border-bottom-right-radius: .25em;
	padding-left: 15px
}

.rbtn {
	-moz-box-shadow: inset 0px 1px 0px 0px #caefab;
	-webkit-box-shadow: inset 0px 1px 0px 0px #caefab;
	box-shadow: inset 0px 1px 0px 0px #caefab;
	background-color: transparent;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #268a16;
	display: inline-block;
	cursor: pointer;
	color: #306108;
	font-family: Arial;
	font-size: 12px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #aade7c;
}

.rbtn:hover {
	background-color: transparent;
}

.rbtn:active {
	position: relative;
	top: 1px;
}
</style>
<body>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<h2>글 조회</h2>

			</thead>
			<tbody>
				<form method="post" action="yosi/view">
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="title"
							class="form-control" readonly="readonly" value="${board.title}" /></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="10" placeholder="내용을 입력하세요. "
								name="contents" class="form-control" readonly="readonly">${board.contents}</textarea></td>
					</tr>
					<tr>
						<th>작성자:</th>
						<td><input type="text" placeholder="작성자 이름입니다.. "
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
								type="button" id="btnUpdete">수정</button>
							<button class="btn yButton pull-right" data-oper='del'
								type="button" id="btnDelete">삭제</button>
						</td>
					</tr>
				</form>
				등록 날짜 :
				<fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd HH:ss" />
				<a href='/yosi/list?page=${cri.page}'><button
						class="meButton pull-right">목록으로</button></a>
			</tbody>
		</table>
		<!-- 댓글 등록 -->
		<div class="row" style="padding: 0px 15px">
			<div class="panel panel-default widget">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-comment"></span>
					<h3 class="panel-title">Reply</h3>
				</div>
				<div class="col">
					<div class="panel-body">
						<fieldset>
							<div class="form-group">
								<textarea id="reply" class="form-control" rows="3" placeholder="댓글을 입력하세요"></textarea>
							</div>
							<button id="addReply" class="rbtn pull-right">댓글 등록</button>
							
						</fieldset>
					</div>
				</div>
			</div>
		</div>
		<!--댓글생성  -->
		<div class="replyDiv"></div>
	</div>

	<form class='form1' method="get">
		<input type='hidden' name='page' value='${cri.page}'>
		<input type='hidden' name='tno' value='${board.tno}'>
	</form>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>

	<script type="text/javascript">
	$(document).ready(function(){	
		  
		  var formObj = $(".form1")
		  
		  $(".btn").click(function(e){
			  
			  
			  e.preventDefault();
			 
			  var $this = $(this);
			  var oper = $this.attr("data-oper");
			  
			  if(oper  === 'del' && confirm("삭제하시겠습니까?")){
				 formObj.attr("action","/yosi/remove")
				 .attr("method","post");
			  }else if(oper === 'mod'){
				 formObj.attr("action","/yosi/modify");
			  }
			  
			  formObj.submit();
		  });
		  
		var msg = '${result}';
		if (msg === 'modsuccess'){
			alert("게시글 수정완료.");
		};
		
		getReplies();
	  });
	
	
	
	//댓글 리스트
	function getReplies(){
		var str = "";
	    $.getJSON("/reply/list/" + ${board.tno}, function(arr){
	    	
	     for(var i=0; i< arr.length; i++){
			 var time = new Date(arr[i].replydate);
			 var replyDate = (time.getFullYear()+"-"+(time.getMonth()+1)+"-"+ time.getDate()+" "+time.getHours()+":"+time.getMinutes());
	    	console.log(replyDate);
            str += "<div>댓글 등록 날짜 : "+replyDate+"</div><table class = 'table table-bordered'><tr><td colspan='3' data-rno="+ arr[i].rno + "><input name='set' type='text' class='form-control' readonly='readonly' value="+ arr[i].reply +' data-rno='+ arr[i].rno +'><button data-rno='+ arr[i].rno +" id='modBtn' class='modbtn pull-right'>수정</button><button data-rno='" + arr[i].rno +"' class='delbtn pull-right' id='delBtn'>삭제</button></td></tr></table>";
	     }
	     //console.log(str);
         $(".replyDiv").html(str);
		});
	};
	
	
	//댓글 등록
	$("#addReply").click(function(e){
		e.preventDefault();
		var temp = $("#reply").val();
		if(temp.length === 0){
			alert('댓글에 내용이 없습니다.');
			return;
		}
			//console.log("addReply test");
			var tno = $("input[name ='tno']").val();
		    var data = {reply:$("#reply").val(), tno:tno};
		    // id를 줘서 편하게 처리
		    $("#reply").val(""); // 댓글등록 후 작성문 초기화
			    $.ajax({ // 대소문자 조심
			        url:'/reply/add',
			        type:'POST',
			        contentType: "application/json; charset=utf-8", //받는 레코드타입
			        data:JSON.stringify(data),
			        success: function(result){
			        	getReplies();
			        	alert("댓글이 등록되었습니다.");
			        }
			 	});
		});
	
	
	//댓글 삭제
	$(".replyDiv").on("click", "#delBtn", function(e){
		e.preventDefault();
		var rno = $(this).attr("data-rno");
		if(confirm("삭제하시겠습니까?")){
		
			$.ajax({
	            url:'/reply/' + rno,
	            type: 'DELETE',
	            contentType: "application/json; charset=utf-8",
	            data:JSON.stringify(rno),
	            success: function(result){
	            	alert("댓글이 삭제되었습니다.");
	                getReplies();
	            }
	   	    })
		}
	});
	
	//댓글 수정버튼(readonly 해제)
	$(".replyDiv").on("click", "#modBtn", function(e){
		e.preventDefault();
		var rno = $(this).attr("data-rno");
		var set = $(this).parent().find("input[name='set']").attr("readonly",false);
		$(this).replaceWith("<button data-rno='"+ rno +"'id='setBtn' class='setbtn pull-right'>완료</button>");
			
	});
	
	//댓글 최종 수정
	$(".replyDiv").on("click", "#setBtn", function(e){
		e.preventDefault();
		var rno = $(this).attr("data-rno");
		var set = $(this).parent().find("input[name='set']").attr("readonly",true);
		var reply = $(this).parent().find("input[name='set']").val();
		var data = { rno: rno, reply: reply };
	
		$.ajax({
            url:'/reply/' + rno,
            type: 'PUT',
            contentType: "application/json; charset=utf-8",
            data:JSON.stringify(data),
            success: function(result){
            	alert("댓글이 수정되었습니다.");
                getReplies(); 
            }
   	    });
	});
	
	</script>

</body>
</html>
