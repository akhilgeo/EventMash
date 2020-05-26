 <%@ page language ="java" import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Event Mash</title>
        <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="font/css/fontello.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<!-- Navigation Bar -->
<div class="navbar">
      <div class="navbar-inner">
        <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="home.jsp"><img src="img/user.jpg"/></a>
          <ul class="nav nav-collapse pull-right">
              <li><a href="home.jsp"><i class="icon-user"></i> Home</a></li>
            <li><a href="adminlogin.jsp" class="active><i class="icon-trophy"></i> Admin</a></li>
            <li><a href="stafflogin.jsp" "><i class="icon-trophy"></i> Staff</a></li>
            <li><a href="participantlogin.jsp"><i class="icon-doc-text"></i> Participant</a></li>
          </ul>
          <!-- Everything you want hidden at 940px or less, place within here -->
          <div class="nav-collapse collapse">
            <!-- .nav, .navbar-search, .navbar-form, etc -->
          </div>
        </div>
      </div>
    </div>
    <!-- End of Navigation Bar -->
    
    <!-- Main Block -->
    <div class="container profile">
    <div id="login">
                  
					 
  <h1><strong>Admin.</strong> Please login.</h1>
  

  <form name="form" action="" method="post" onsubmit="if (this.checker.checked) toMem(this);return validate();">  

   <fieldset>

    <p><input type="text" required value="Username" onBlur="if(this.value=='')this.value='sUserName'" onFocus="if(this.value=='sUserName')this.value='' "name="sUserName" id="sUserName"></p> <!-- JS because of IE support; better: placeholder="Username" -->

    <p><input type="password" required value="PAssword" onBlur="if(this.value=='')this.value='sPwd'" onFocus="if(this.value=='sPwd')this.value='' " name="sPwd" id="sPwd"></p> <!-- JS because of IE support; better: placeholder="Password" -->

   

    <p><input type="submit" value="Login" ></p>
	 <p><input type="reset" value="Reset"></p>

   </fieldset>

  </form>

  
  

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

                    String strQuery = "select * from event.adminlogin where username='"+userid+"' and password='"+password+"'"; 

                   
                    ResultSet rs = st.executeQuery(strQuery);



                    while(rs.next()){

                    if((rs.getString(1).equals("admin")) && (rs.getString(2).equals("admin")))

                    {

                    	response.sendRedirect("error.jsp");
                    	
                    	//session.setAttribute("userid",userid);
                    	 

                    
                    }


                    else{
                    	
                    response.sendRedirect("adminhome.jsp");
                                        String name = request.getParameter("name");
                    //session.setAttribute("username",name);
                                        session.setAttribute("userid", userid);
                    }


                    }

                    System.out.println("Connected to the database");

                    con.close();



                    } catch (Exception e) {

                    e.printStackTrace();

                    }
                    %>  
         
                   
        </form>  
          
    
    </div>
    <!-- End of Main Block -->


<!-- Footer -->    
 <div class="footer">
 
 </div>
 <!-- End of Footer -->
    

</body>
</html>