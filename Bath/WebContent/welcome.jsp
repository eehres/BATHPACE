<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Welcome Bathpace!</title>
</head>
<style>

#video {
     position: fixed;
     top: 0px;
     left: 0px;
     min-width:100%;
     min-height:100%;
}

@font-face {
     font-family: 'S-CoreDream-9Black';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-9Black.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
a{
position : fixed;
font-family: 'S-CoreDream-9Black';
font-size : 100px;
color : white;
z-index : 1;
left : 30%;
top : 40%;
text-decoration:none
}

</style>

<body>
<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="images/Bathpace_welcome.mp4" type="video/mp4" alt="">
</video>
<a href="./main.jsp">BATHPACE</a>
</body>
</html>