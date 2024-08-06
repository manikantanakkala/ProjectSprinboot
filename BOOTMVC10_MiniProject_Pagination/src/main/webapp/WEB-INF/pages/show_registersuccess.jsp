<%@ page isELIgnored="false" import="java.util.*"%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>

<b>${resultmsg}</b>



<c:choose>

 <c:when test="${!empty empdata}">
 
  	    <table align="center" border="2px" bgcolor="cyan" >
  	    
  		<tr bgcolor="white" >
  		
  			<td >eid</td><td>ename</td><td>job</td><td>sal</td>
  			
  		</tr>
  		
  		<c:forEach var="emp" items="${empdata}">
  		
  			<tr>
  			 <td>${emp.eid}</td> <td>${emp.ename}</td> <td>${emp.job}</td> <td>${emp.sal} </td>
  			 
  			 <td> <a href="edit">Edit</a>   <a href="delete">Delete</a></td>
 			
 			</tr>
 
  		</c:forEach>
  	
  		</table>
  
  </c:when>
  
  <c:otherwise> No data found</c:otherwise>
  
  </c:choose>
 
 <a href="./" > Home Page</a>
 