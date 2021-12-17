import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDao {


    private Connection getConnection() throws Exception{
        Class.forName("org.mariadb.jdbc.Driver");
        Connection con = DriverManager.getConnection("url", "user", "password");
        return con;
    }

    public ArrayList<MemberDto> selectAll(){
        ArrayList<MemberDto> memberDtos = new ArrayList<>();
        try{
//            Connection con = getConnection();
//            Statement stmt = con.createStatement();
//            ResultSet rs = stmt.executeQuery("sql");
//            while(rs.next()){
//                MemberDto memberDto = new MemberDto();
//                memberDto.setId(rs.getId());
//                memberDto.setName(rs.getName());
//            }
        }catch(Exception e){

        }finally {
//            con.close();
//            stmt.close();
//            rs.close();
        }
        return memberDtos;
    }
}
