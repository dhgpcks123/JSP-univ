## 객체의 종류
> 사용자 정의 객체
> - 스크립트릿이나 선언에서 객체를 생성한 경우
> - <jsp:useBean>을 이용해 자자빈 객체 생성한 경우
> - ex> <jsp:useBean id="userinfo" class="member.MemberInfo"> </jsp:useBean>

> JSP 내장 객체
> - JSP 페이지 안에 묵시적으로 선언되어 있는 객체
> - 선언이나 초기화 없이 사용할 수 있는 변수
> - 스크립트릿, 표현식, 표현 언어 등에서 사용함
> - request, response, pageContext, session, application

> - out : 출력 스트림
> - config : JSP 설정 정보 관리
> - page : JSP 페이지를 구현한 자바 클래스의 인스턴스
> - exception : 에러 페이지 안에서 오류메시지 출력등의 예외 처리 사용(오류페이지 안에서만 사용 가능)

### pageContext 내장 객체
- 페이지 컨텍스트를 관리하는 객체
- page 표현, page 영역 관리
- buffer 인코딩 등등
- 페이지에서 사용되는 객체드르이 레퍼런스를 저장하고 있음.
- 다른 내장 객체의 참조 값을 리턴하는 메소드 제공
- JSP 페이지에서 잘 사용하지 않음

- pageContext.getRequest() : request
- pageContext.getServletContext() : application 객체
- pageContext.getServletConfig() : config 객체 리턴. 이거 안 써도 그냥 <%@에다가 값 줘도 되잖어

### application 내장 객체
- 웹애플리케이션 관련 정보 관리
- web.xml에 저장된 설정 정보 조회
- 로그 메시지 기록
- 웹 컨테이너 관련 정보
- 웹 애플리케이션의 폴더 정보 조회
- 서블릿 컨텍스트를 관리하는 객체
- 특정 웹 애플리케이션에 포함된 모든 JSP페이지는 하나의 application 객체를 공유함

application내장 객체? 이거 설정 web.xml에 설정하는거야!
헐 이게 그거라니
- 웹 애플리케이션 내의 모든 JSP 페이지에서 공유되는 설정 정보 저장
- webapp/WEB-INF/web.xml
- <context-param>태그를 이용하여 설정을 공유할 수 있음.
- <web-app ...>
모든 페이지에서 공유해서 쓰는 객체같은 거 설정해주는 군.
- 키 값 같은 것도 해줄 수 있겠군.
- getInitParameter(String name) 웹 애플리케이션 초기화 파라미터 읽어옴
- getInitParameterNames() 웹 애플리케이션 초기화 파라미터 이름 목록 리턴

<context-param>
    <description>DB 사용 여부</description>
    <param-name>isDBEnabled</param-name>
    <param-value>true</param-value>
</context-param>

이 정보를 가져다 쓰는 거야...  

웹 컨테이너 정보를 읽기위한 메서드
- application.getServletInfo()
- application.getMajorVersion()
- application.getMinorVersion()  

----- out 내장 객체  
response.getWriter() 활용해서 out 함
out.print(String) -> 문자열
out.print(수식) -> 인자 // 수식 결과 값 나온다는 말 java


> newline() 줄 바꿈 문자 출력

## scope
같은 영역 내의 JSP 페이지들은 협력 작업을 위해 정보를 공유함

> scope속성 page, request, session, application이 존재함
> - page : page 내에서만 작성 1개 JSP (pageContext)
> - request : request 내에서만 사용 (request)
>> jsp:forward , jsp:include // request안 끊김.
>> 요청 처리 끝나면 없어짐. 요청 1개 페이지에서 끝나? 그러면 page와 같지 뭐
> - session : session 안 끊긴 작업 내에서만. 브라우저 안 끄면 session 유지 (session)
> - application : 모든 영역에서 사용 (application)

## 페이지 간 데이터 공유
- 내장 객체 이용해서 JSP 페이지 내 데이터 공유가능
- setAttribute("이름", "값") 박싱 일어남. 그래서 언박싱해서 써야함.
- pageContext, request, session, application 다 가지고 있군...
- getAttribute(), removeAttribute(), getAttributeNames()

