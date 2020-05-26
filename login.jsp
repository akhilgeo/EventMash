 <%@ page language ="java" import="java.sql.*"%>  
<html>  
    <head>  
        <title>EventMash Login</title>  
        	<link rel="stylesheet" type="text/css" href="style.css" />
        


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
                <script type="text/javascript">  
            function trim(s)   
            {  
                return s.replace( /^\s*/, "" ).replace( /\s*$/, "" );  
            }  
  
            function validate()  
            {  
                if(trim(document.form.sUserName.value)=="")  
                {  
                	
                	
                	alert("Check Input"); 
                	
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
    <body>
 
 <div id="login">
<img src="logo.jpg" alt="logo" align="center">
                  
                    
					 
  <h1><strong>Welcome.</strong> Please login.</h1>
  

  <form name="form" action="" method="post" onsubmit="if (this.checker.checked) toMem(this);return validate();">  

   <fieldset>

    <p><input type="text" required value="Username" onBlur="if(this.value=='')this.value='sUserName'" onFocus="if(this.value=='sUserName')this.value='' "name="sUserName" id="sUserName"></p> <!-- JS because of IE support; better: placeholder="Username" -->

    <p><input type="password" required value="PAssword" onBlur="if(this.value=='')this.value='sPwd'" onFocus="if(this.value=='sPwd')this.value='' " name="sPwd" id="sPwd"></p> <!-- JS because of IE support; better: placeholder="Password" -->

   

    <p><input type="submit" value="Login" ></p>
	 <p><input type="reset" value="Reset"></p>

   </fieldset>

  </form>

  <p><span class="btn-round">or</span></p>

  <p>

   <a class="Register-before"><span class="fontawesome-Register"></span></a>
   <button class="Register"  onclick="window.location.href='http://localhost:8084/registration/registration.jsp'">Register</button>

  </p>

  

 </div> <!-- end login -->


         
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
                    	
                    	//session.setAttribute("userid",userid);

                    
                    }


                    else{
                    	
                    response.sendRedirect("profile/welcome.jsp");
                                        String name = request.getParameter("name");
                    session.setAttribute("username",name);
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