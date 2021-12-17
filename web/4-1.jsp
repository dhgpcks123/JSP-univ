<%@ page contentType = "text/html; charset=utf-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>
    <%
        String str = "hello jsp";
    %>
<h3><%= str %></h3>

--> tomcat이 바꿔
하나하나 읽어서 템플릿 메서드인 건 두고, request 체크해보고
    스크립트 요소 번역해서 만들어, 그리고 .class로 컴파일해서 실행한 다음에
보내줘. 버퍼 꽉 차면 바로 넘겨줘.
</body>
</html>