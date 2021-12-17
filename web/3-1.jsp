<%@ page contentType = "text/html; charset=utf-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>JSP 요소</title>
</head>
<body>
    <h1>스크립트 릿</h1>
    <pre>jsp페이지에 삽입되는 JAVA 코드 조각</pre>
    <%
        String a = "hello Java";
    %>
    <h1>표현식</h1>
    <pre>변수나 수식의 값 출력할 때 사용 %=</pre>
    <%=
        a
    %>
    <h1>선언</h1>
    JSP코드에서 사용될 변수 또는 메서드 선언문
    <%!
        public int add(int a, int b){
            return a+b;
        }
    %>
    <%=
        add(3, 5)
    %>
    옛날엔 이렇게 썼구나... 코드 조금만 길어져도 난장판이겠다;;;
    MVC2가 혁신이었구만

    <hr>
    <pre>
    지시어
    : JSP 페이지에 대한 정보를 웹 컨테이너에 지시
    <\%@ \%>
    이런식으로 써서 넣는구나.
    번역 과정에서 복사하여 삽입시킬 텍스트나 코드를 지정
    </pre>
    include, page, taglib

    <jsp:include page="3.jsp" />
    포함해서 가져왔네 ~ ㅎㅎ
</body>
</html>