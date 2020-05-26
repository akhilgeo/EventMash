<%@ page language ="java" import="java.sql.*"%>  
<html>  
    <head>  
        <title></title>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
                <script>  
            function trim(s)   
            {  
                return s.replace( /^\s*/, "" ).replace( /\s*$/, "" );  
            }  
  
            function validate()  
            {  
                if(trim(document.form.sUserName.value)=="")  
                {  
                  alert("Login empty");  
                  document.form.sUserName.focus();  
                  return false;  
                }  
                else if(trim(document.form.sPwd.value)=="")  
                {  
                  alert("password empty");  
                  document.form.sPwd.focus();  
                  return false;  
                }  
            }  
        </script>  
        <script type="text/javascript" src="rememberMe.js"></script>  
    </head>  
    <body bgcolor="#00CC66">                
        <form name="form" action="" method="post" onsubmit="if (this.checker.checked) toMem(this);return validate();">  
         <table border="0" cellpadding="0" cellspacing="3" align="center" width="400">  
                  <th colspan=2 width="270" align="center">  
                     <img src="logo.jpg" alt="logo">
					 <font size=6 color="white">LOGIN</font>  
                  </th>  
          <tr>  
            <td width="170" align="right">  
              Username:     
            </td>  
            <td width="290">  
             <input size="30" type="text" name="sUserName" id="sUserName">  
            </td>  
  
          </tr>  
          <tr>  
            <td width="170" align="right">  
              Password:     
            </td>  
            <td width="290">  
             <input size="30" type="password" name="sPwd" id="sPwd">  
            </td>  
          </tr>  
          <tr>  
            <td width="170" align="right">  
              Remember me?:     
            </td>  
            <td width="290">  
             <input type="checkbox" id="checker" name="checker">  
            </td>  
          </tr>  
          <tr>  
            <td colspan="2" align="center">  
              <input type="submit" value="Submit">   
              <input type="reset" value="Reset">  
                          <input type="button"   
                            onclick="window.location.href='http://localhost:8084/registration/registration.jsp'" value="Go to Register">  
            </td>  
          </tr>  
                  <tr>  
                      <td colspan="2" align="center">  
                          <input type="button" onclick="delMem(this)" value="Delete Information(Just for testing)">  
                      </td>  
                  </tr>  
         </table>  
         
                    <%  
                    String userid = request.getParameter("sUserName");

                    String password = request.getParameter("sPwd");



                    Connection con = null;
                    String url = "jdbc:mysql://localhost:3306/";;
                    String db = "event";
                    String driver = "com.mysql.jdbc.Driver";
                    String userName ="root";
                    String pass="4jjxb";

                    try {

                    Class.forName(driver);
                    con = DriverManager.getConnection(url+db,userName,pass);

                    Statement st = con.createStatement();

                    String strQuery = "select * from event.login where username='"+userid+"' and password='"+password+"'"; 

                   
                    ResultSet rs = st.executeQuery(strQuery);



                    while(rs.next()){

                    if((rs.getString(1).equals("admin")) && (rs.getString(2).equals("admin")))

                    {

                    	response.sendRedirect("error.jsp");
                    	session.setAttribute("userid",userid);

                    
                    }


                    else{

                    response.sendRedirect("welcome.jsp");

                    }


                    }

                    System.out.println("Connected to the database");

                    con.close();



                    } catch (Exception e) {

                    e.printStackTrace();

                    }
                    %>  
        </form>  
          
    </body>  
</html>  