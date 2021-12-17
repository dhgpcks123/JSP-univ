#데이터베이스

### 스키마
- 테이블의 구조
- 테이블 구성하는 속성들에 대한 정보를 스키마라고 함.
- 필드(이름), 데이터 타입, 길이 등등 내용을 스키마
- 몇개 항목 있고 이름 뭐고 타입 뭐고 길이 뭐고 => 스키마

###
자바커넥터 다운로드해서 연결
자바 커넥터는 JDBC(자바 db 연결 표준) API 구현한거지
lib에 저장. lib은 라이브러리 저장하는 곳

###
- 세미콜론으로 끝내.
- show database; 데이터베이스 목록 보여주는 명령
- create database db이름;
- use db이름 db쓰겟다.
- show tables; 현재 db 목록
- drop database 데이터베이스이름; ddl drop
- drop table 테이블이름; drop table
- create user 명령 -> 계정 생성
 : create user user@localhost identified by 'user1234';
- grant -> 권한 부여
  : grant all privileges on my_db.* to user@localhost with grant option;
- grant option은 권한을 주는 권한을 주겠느냐임.
- flush privileges -> 권한 적용

접속 mysql -uuser -p
mysql -uroot -p

update 테이블이름 set 바꿀 꺼 where 조건
delete from 테이블이름 where 조

---
### db 연결 변수 선언
- con 접속 관리
- url 서버 주소
- user 계정
- pw 비번
- stmt sql 구문 저장
- rs 결과

```
Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3306/my_db"
String user = "user";
String pw = "user1234";
try(Connection con = DriverManger.getConnection(url, user, pw)){
...
}catch(Exception e){
   ... 
}
```
이건 try-with-resources 구문 썼다. 오... 갑자기 신문물

try -catch -finally{
    if(con != null) con.close();
}
close 해야하는 자원 자동으로 정리해준다. try-with-resources

```
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("sql");
    rs.next();
    out.print(rs.getString("필드이름"));
```


- executeQuery(sql) select
- executeUpdate(sql) update, insert, delete : pstmt 안 쓰네??????
: 영향 받은 행의 개수 리턴
  
pstmt는 setInt, setString 등등 하려고 쓴다.
얘는 prepareStatement만들 때 sql 넣어준다.
왜냐고? sql 문 완성시켜줘야하니까
con.prepareStatement(sql);