<!DOCTYPE HTML>
<!--
	Hielo by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Hielo by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/resources/css/main.css?ver=2" />

<style>
.subpage {
	background: linear-gradient(120deg, #D3959B, #BFE6BA) fixed
}

.outer {
	padding-top: 5%;
	background-color: #ffffff;
	background-color: rgba(255, 255, 255, 0.6);
}

.mytable {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
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
.fileList
{
width: 96.8%;
            height: 100px;
            padding: 20px;
            border: 1px solid #ccc;
    background: rgba(144, 144, 144, 0.075);
    margin: 0 10px 40px 10px; 
     float:right;

}
/* body {
	background-image: url(/resources/images/bg.jpg);
} */
</style>
</head>
<body class="subpage">

	<!-- Header -->
	<header id="header">
		<div class="logo">
			<a href="/board/list">Hielo <span>by TEMPLATED</span></a>
		</div>
		<a href="#menu">Menu</a>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="/board/list">Home</a></li>
			<li><a href="/up/ajax">Image gallery</a></li>
		</ul>
	</nav>

	<!-- One -->
	<section id="One" class="wrapper style3">
		<div class="inner">
			<header class="align-center">
				<h1>select</h1>
				<P></P>
				<h2>select</h2>
			</header>
		</div>
	</section>

	<!-- Main -->
	<div id="main" class="container">
		<div class="outer">
			<div class="mytable">
				<h3>form</h3>

				<form method="post" action="register" id="registerForm">
					<div class="row uniform">
						<div class="6u 12u$(xsmall)">
							<input type="text" name="title" id="name" value="제목"
								placeholder="title" />
						</div>

						<div class="6u 12u$(xsmall)">
							<input type="text" name="writer" id="writer" value="작성자"
								placeholder="writer" />
						</div>

						<div class="12u$">
							<textarea name="content" id="message"
								placeholder="Enter your message" rows="20"></textarea>
						</div>
						<div class="fileDrop">
						
						</div>
					<div class="fileList">
					</div>
						<div class="12u$">
							<ul class="actions">
								<li><input type="button" class="special list" value="List"></li>
								<li><input type="submit" class="special list" value="Register"></li>
							</ul>
						</div>
					</div>
				</form>
				<hr />
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

$(document).ready(function () {
	

     	var template = Handlebars.compile($("#template").html());
       $(".fileDrop").on("dragenter", function (e) {
    	   e.preventDefault();
       });
       $(".fileDrop").on("dragover",function(e){
           e.stopPropagation();
           e.preventDefault();
       });
       
       $(".fileDrop").on("drop", function (e) {
    	   e.preventDefault();
    	   var files = e.originalEvent.dataTransfer.files;
    	   var file = files[0];
    	   console.log("dropZone",file);
    	   var formData = new FormData();
    	   formData.append("file",file);
    	   $.ajax({
             	 type: 'post',
             	 url: "/file/new",
             	 dataType: "text",
             	 data: formData,
             	 processData: false,
             	 contentType: false,             	 
             	 success: function (data) {
             	

             	  alert("등록이 완료되었습니다.");
             	  console.dir("sss",data);
             	 console.log("ddll......"+data[0].val);
             	   var fileInfo = getFileInfo(data);
             	   
             	 console.log("fileInfo",fileInfo);
             	   var html = template(fileInfo);
             	  console.log("html",html);
             	  $(".fileList").append(html);             	  
             	 }   
    	   });
       });

       
       $("#registerForm").submit(function(event){
    	   e.preventDefault();
    	   var that =$(this);
    	   var str="";
    	   
    	  $(".fileList").each(function(index){
    		  str+="<input type='hidden' name ='files["+index+"]' value='"+$(this).attr("href")+"'>";
    		  });
       that.append(str);
       that.get(0).submit();
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
		<div class="copyright">&copy; Untitled. All rights reserved.</div>
	</footer>

	<!-- Scripts -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery.scrollex.min.js"></script>
	<script src="/resources/js/skel.min.js"></script>
	<script src="/resources/js/util.js"></script>
	<script src="/resources/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(e) {
			$(".actions").on("click", ".list", function(e) {
				self.location = "/board/list${cri.makeSearch(cri.page)}";
			});
		});
	</script>
</body>
</html>