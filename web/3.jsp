<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>JSP 기술</title>
</head>
<body>
    <%
        Date today = new Date();
        out.println(today);
    %>

    <pre>
        JSP 동적으로 웹 컨텐츠를 만들기 위한 기술
        서버 측 스크립트 언어. HTML 페이지 안에 자바 코드 포함할 수 있음.

        확장을 위해 표현 언어(EL)의 사용
        서버 측 객체나 데이터를 쉽게 사용하고 표현할 수 있음.
        JSTL 같은 태그 라이브러리 사용
        -----------------------------
        템플릿 데이터
        응답 결과 만들 때 그대로 출력되는 텍스트 template인거임
        JSP 요소
        동적인 데이터 추가(java로 번역되어 이것저것 넣어주겟지)
    </pre>
</body>
</html>