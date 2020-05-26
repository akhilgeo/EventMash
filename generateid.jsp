 <%@ page language ="java" import="java.sql.*"%>  
<%@ page contentType="image/jpeg"
import="java.awt.*,java.awt.image.*,
com.sun.image.codec.jpeg.*,java.util.*"
%>
<%
String name=(String)session.getAttribute("fnn");
String college=(String)session.getAttribute("clg");
String phone=(String)session.getAttribute("phn");
String event=(String)session.getAttribute("evt");

// Create image
int width=400, height=400;
Random rn = new Random();

String s=(String)session.getAttribute("userid");
BufferedImage image = new BufferedImage(width,
height, BufferedImage.TYPE_INT_RGB);
// Get drawing context
Graphics g = image.getGraphics();
// Fill background
g.setColor(Color.cyan);
g.fillRect (0,0, width, height);

g.drawRect (0,0,350,40); 
g.setFont(new Font(null, Font.PLAIN, 28));
g.drawString ("EventMash ID", 0,120);



g.setColor (Color.WHITE); 
g.fillRect (0,0,400,40); 
g.setColor (Color.black); 
g.drawString ("EventMash ID", 100, 30);
g.setColor (Color.RED); 

 
g.setColor (Color.black); 
g.setFont(new Font(null, Font.PLAIN, 18));
g.drawRect (0,0,400,40); 
g.drawString ("Participant Name:", 10,150);
g.drawString (name, 200,150);

g.drawString ("College:", 10,180);
g.drawString (college, 200,180);

g.drawString ("Phone:", 10,200);
g.drawString (phone, 200,200);

g.drawString ("Events:", 10,220);
g.drawString (event, 200,220);

g.setFont(new Font(null, Font.PLAIN, 15));
g.drawString ("<<DIGITAL ID CARD>><<NOT TRANSFERABLE>>", 10,390);


g.setColor (Color.BLUE); 
g.fillRect (30,55,120,20); 
g.setColor (Color.black); 
g.drawRect (30,55,120,20); 
//g.drawString (rn, 155,70);
g.setColor (Color.YELLOW); 
g.fillRect (30,80,90,20); 
g.setColor (Color.black); 
g.drawRect (30,80,90,20); 
g.drawString ("#11234", 125,95); 

 

// Dispose context
g.dispose();
// Send back image
ServletOutputStream sos = response.getOutputStream();
JPEGImageEncoder encoder =
JPEGCodec.createJPEGEncoder(sos);
encoder.encode(image);
%>
