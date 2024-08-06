
<%@page isELIgnored="false" import="java.util.*"%>

 <%@taglib  uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>
 
<h1>welcome to report</h1>

${resultmsg}
<c:choose>

 <c:when test="${!empty empdata}">
 
  	    <table align="center" border="2px" bgcolor="cyan" >
  	    
  		<tr bgcolor="white" >
  		
  			<td >eid</td><td>ename</td><td>job</td><td>sal</td>
  			
  		</tr>
  		
  		<c:forEach var="emp" items="${empdata}">
  		
  			<tr>
  			 <td>${emp.eid}</td> <td>${emp.ename}</td> <td>${emp.job}</td> <td>${emp.sal} </td>
  			 
  			 <td> <a href="edit?eid=${emp.eid}">Edit</a>   <a href="delete?eid=${emp.eid}">Delete</a></td>
 			
 			</tr>
 
  		</c:forEach>
  	
  		</table>
  
  </c:when>
  
  <c:otherwise> No data found</c:otherwise>
  
  </c:choose>
 
 <a href="./" > Home Page</a>
 
  <a href="register" >Add Employee</a>
 

 