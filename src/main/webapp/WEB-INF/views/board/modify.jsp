<!DOCTYPE HTML>
<!--
    Hielo by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>Hielo by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/resources/css/main.css" />
<style>
.contentbox {
	min-height: 500px;
}

.mytable {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
}

.subpage {
	background: linear-gradient(120deg, #D3959B, #BFE6BA) fixed
}

.outer {
	padding-top: 5%;
	padding-bottom: 5%;
	background-color: #ffffff;
	background-color: rgba(255, 255, 255, 0.6);
}
.fileDrop
{
width: 96.8%;
            height: 100px;
            padding: 20px;
            border: 1px solid #ccc;
     background: rgba(144, 144, 144, 0.075);
      margin: 40px 10px 0px 10px; 
      float:right;

            }
.uploadedList
{
width: 96.8%;
            height: 100px;
            padding: 20px;
            border: 1px solid #ccc;
    background: rgba(144, 144, 144, 0.075);
    margin: 0 10px 40px 10px; 
     float:right;

}
</style>
</head>

<body class="subpage">

	<!-- Header -->
	<header id="header">
		<div class="logo">
			<a href="/board/list">Hielo <span>by TEMPLATED</span></a>
		</div>
			<li><a href="/board/list">Home</a></li>
			<li><a href="/up/ajax">Image gallery</a></li>
	</header>
	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="/board/list">Home</a></li>
		</ul>
	</nav>
	<!-- One -->
	<section id="One" class="wrapper style3">
		<div class="inner">
			<header class="align-center">
				<p>Sed amet nulla</p>
				<h2>Candy</h2>
			</header>
		</div>
	</section>
	<!-- Main -->

	<div id="main" class="container">
		<div class="outer">

			<div class="mytable">
				<h3>Modify</h3>
				<form method="post" action="modify" id="registerForm">
					<div class="row uniform">
						<div class="6u 12u$(xsmall)">
							<input type="text" name="title" id="title" id="name" value="${vo.title}" />
						</div>
						<div class="6u 12u$(xsmall)">
							<input type="text" name="writer" id="writer" value="${vo.writer}"
								placeholder="writer" />
						</div>
						<div class="12u$">
							<textarea name="content" id="message"
								placeholder="Enter your message" rows="20">${vo.content}</textarea>
						</div>
						<div class="fileDrop">
						
						</div>
					<div class="uploadedList">
					</div>
						<div class="12u$">
							<ul class="actions">
								<li><input type="button" class="special list" value="Cancel"></li>
								<li><input type="submit" class="special list" value="Register"></li>
							</ul>
						</div>
					</div>
					<input type="hidden" name="bno" value="${vo.bno}">
					<input type="hidden" name="keyword" value="${cri.keyword}">
					<input type="hidden" name="page" value="${cri.page}">
					<input type="hidden" name="type" value="${cri.type}">
				</form>


			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
		
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script id="template" type="text/x-handlebars-template">
<li><span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"><span>
<div class="mailbox-attachment-info">
<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a></div>
</li>
</script>		
		
		
		
	<script>
	
		$(document).ready(function() {

			$(".list").on("click", function(e) {
				self.location = "/board/list${cri.makeSearch(cri.page)}";
			});
		});
		
		var template = Handlebars.compile($("#template").html());
		$(".fileDrop").on("dragenter dragover", function(e){
				e.preventDefault();		
		});

		$(".fileDrop").on("drop", function(e){
			e.preventDefault();
			
			var files = e.originalEvent.dataTransfer.files;
			
			var file = files[0];
			
			var formData = new FormData();
			
			formData.append("file" , file);
			
			
			$.ajax({
				url: '/ex/uploadAjax',
				data:formData,
				dataType: 'text',
				processData:false,
				contentType:false,
				type: 'POST',
				success: function(data){

			
					console.log("data.....",data);
		     	   
					var fileInfo = getFileInfo(data);
		     	   
		     	   console.log("FileInfo....",fileInfo);
		     	   
		       	   var html = template(fileInfo);
		       	   
		       	   console.log("html....", html);
		       	   
					$(".uploadedList").append(html);
				
				}
			});
			
			console.log(file);
		});
	       $("#registerForm").submit(function(e){
	    	   
	    	   e.preventDefault();
	    	   var that =$(this);
	    	   console.log("that..1",that);
	    	   var str="";
	    	   $(".uploadedList .delbtn").each(function(index){
	     		  str+="<input type='hidden' name ='files["+index+"]' value='"+$(this).attr("href")+"'>";
	     		  alert(index);
	     		  });
	    	   
	    	   	 console.log("that..2",that.get(0));
	    	   
	      		 that.append(str);
	     	 	 that.get(0).submit();
	     	 	 
	      	 });
	       
	   	$(".uploadedList").on("click",".delbtn",function(e){
	   		e.preventDefault();
			e.stopPropagation();
	   		console.log("click remove....");
			var that = $(this);
			
			$.ajax({
				url: '/ex/deleteFile',
				type: 'POST',
				data:{fileName:$(this).attr("href")},
				dataType: 'text',
				success:function(result){
					if(result =='deleted'){
						that.parent("div").parent("span").parent("span").parent("li").remove();
						alert("deleted");
						console.dir(that);
						console.log(that.parent("div").parent("span").parent("span").parent("li"));
					}
				}
				
				
			});
			
	   	});
	       
		
	</script>
<script type="text/javascript" src="/resources/js/upload.js"></script>	
	<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
		</div>
		<div class="copyright">Untitled. All rights reserved.</div>
	</footer>
	<!-- Scripts -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery.scrollex.min.js"></script>
	<script src="/resources/js/skel.min.js"></script>
	<script src="/resources/js/util.js"></script>
	<script src="/resources/js/main.js"></script>
</body>
</html>