## JSP 콘텐츠의 재사용

### jsp:include
> 정적 include 방법
> include 지시어
> - 번역 과정에서 파일의 내용인 텍스트 자체를 포함시킬 때 사용
> > <%@ include file = "/jsp/info_page.jsp" %>

> 동적 include 방법
> > <jsp:include page="/templates/user.jsp" flush="true"> 액션태그
> - 해당 페이지의 실행 결과를 포함시킬 때 사용
> - 요청이 처리될 때, 즉 JSP 페이지가 실행될 때 처리
> 요청 -> included 페이지 실행 완료! 그리고 includeing 페이지에 응답 포함
> - 그럼 실행 결과들어가겠지.
> flush="true"이면 included 페이지 먼저 보냄
> false면 다 합쳐서 보내주겠지.

-> 이를 활용해서 JSP 페이지를 모듈화해서 사용한다.
- 공통으로 사용되는 페이지들은 코드의 중복을 피하기 위해 분리할 필요가 있음.
- 별도 페이지로 만들고 <jsp:include>를 사용

- include 지시어는 <@ 서블릿 프로그램 변환전에 삽입
- 공통 메서드나 메소드 정의 이런 거 여기에 넣어서 include해줌
- include 지시어는 단순 텍스트 include지시어는 공통의 스크립트 쓸 때 한다.
### jsp:param
> include 쓸 때 파라미터 넘겨서 사용할 수 있음.
> jsp 붙은 건 액션태그
```html
<jsp:include page="page.jsp" flush="false">
    <jsp:param name="p1" value="v1"/>
    <jsp:param name="p2" value="v2" />
</jsp:include>
```
이게... jsp에도 있는데 타임리프에서도 넘겨서 쓸 수 있었겠네....
공통화 하는데 좀 더 공을 들일 필요가 있어. vue나 react쓸 때도 좀 더 신경써줘.

included페이지에선
```html
<%= request.getParameter("p1") %>
<%= request.getParameter("p2") %>
```
이렇게 하면 v1과 v2 받아와지겠군.

-jsp:include와 jsp:forward 수행할 때 기존 파라미터보다
jsp:param태그에서 정의 된 파라미터가 우선함.
http://localhost:8080/HelloJSP/8-5.jsp?p1=hi
요청하더라도 p1에 hi가 아닌 param으로 넘긴 v1이 출력된다.


### jsp:forward 액션태그
> 다른 페이지로 강제 이동 시키는 것
```html
<jsp:forward page="이동할 페이지"/>
```
원래 페이지 실행 포워딩 되면서 종료.
버퍼 내용 지워짐. 같은 request 영역에 존재.
원래 페이지의 URL이 남아있고, 강제 이동인지 알수 없음.
redirect와 다른 거야.

- 버퍼 사용한 경우
> 포워딩 전에 버퍼 다 지움
> 근데 이미 포워딩 된 적 있다? 예외 발생함.
> 버퍼 안 썼다?
= 이미 다 보냈다. 예외 발생
> 
> - 즉 forward쓰려면 무조건 버퍼 써야하는데  
> - 이 말은..데이터를 안 보냈어야 forward쓸 수 있단 것
> 
> - include 액션태그처럼 jsp:forward도 파라미터 넘길 수 있다.
> - 파라미터 데이터는 String으로 제한됨.
> 다른 종류 쓸려면 request내장 객체에 저장해주세용~