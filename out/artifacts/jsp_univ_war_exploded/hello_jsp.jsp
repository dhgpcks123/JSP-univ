<%@ page contentType = "text/html; charset=utf-8" %>
<html lang="en">
<head>
    <title>Hello JSP</title>
</head>
<body>
    <h2>첫번째 JSP 페이지 입니다.</h2>
    <%
        int a = 10, b = 20;
        out.print(a+b);
        out.print("<br>");
    %>
    <pre>
        1.
        이클립스는 오픈 소스 커뮤니티의 이름 또는 이클립스 프로젝트의 사눔ㄹ이다.
        무료 오픈 소스 소프트웨어이고 기능의 확장성이 뛰어나다.
        JAVA외에도 C/C++언어를 지원한다.
    </pre>
    <pre>
        2.
        WAR 파일은 JSP 페이지, 서블릿, 클래스 파일, HTML 파일등을 묶은 형태이다.
        파일의 확장자는 .war이다.
        이클립스를 사용하면 손 쉽게 웹 프로젝트를 WAR 파일로 만들 수 있다.
        웹 애플맄케이션을 웹 컨테이너에 배포하기 위한 것이다.
    </pre>
    <pre>
        3.
        이클립스를 이용하여 개발한 동적 웹 프로젝트를 WAR 파일로 톰캣에 배포할 때
        [톰캣설치폴더]\webapps에 프로젝트이름.war로 배포되어야 한다.
    </pre>
</body>
</html>