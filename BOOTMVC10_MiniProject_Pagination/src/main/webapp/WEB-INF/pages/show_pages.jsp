
<%@page isELIgnored="false" import="java.util.*" %>

 <%@taglib  uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>
 
<h1>welcome to Pages</h1>


<c:choose>

 <c:when test="${!empty data.getContent()}">
 
  	    <table align="center" border="2px" bgcolor="cyan" >
  	    
  		<tr bgcolor="white" >
  		
  			<td >eid</td><td>ename</td><td>job</td><td>sal</td>
  			
  		</tr>
  		
  		<c:forEach var="emp" items="${data.getContent()}">
  		
  			<tr>
  			 <td>${emp.eid}</td> <td>${emp.ename}</td> <td>${emp.job}</td> <td>${emp.sal} </td>
  			 
  			 <td> <a href="edit?eid=${emp.eid}">Edit</a>   <a href="delete?eid=${emp.eid}">Delete</a></td>
 			
 			</tr>
 
  		</c:forEach>
  	
  		</table>
  		
  		<br>
  		<br>
  		<br>
  		
  		<center>
  		
  		<c:if test="${!data.isFirst()}">
  		
  			<a href="getpages?page=0">First</a>  &nbsp
  		
  		</c:if>
  		
  
  		
  		<c:if test="${data.hasNext()}">
  			<a href="getpages?page=${data.getPageable().getPageNumber()+1} & size=10 "> Next </a>  &nbsp
  		</c:if>
  		
  		
  		<c:forEach var="i" begin="0" end="${data.getTotalPages()-1}"  step="1">
  			<a href="getpages?page=${i}"> ${i+1} </a> &nbsp&nbsp
  		</c:forEach>
  		
  		<c:if test="${data.hasPrevious()}">
  			<a href="getpages?page=${data.getPageable().getPageNumber()-1}"> Back </a>  &nbsp
  		</c:if>
  		
  		<c:if test="${!data.isLast()}">
  		
  			<a href="getpages?page=${data.getTotalPages()-1}">Last</a>  &nbsp
  		
  		</c:if> 
  		
  		</center>
  
  </c:when>
  
  
  
  
  
  <c:otherwise> No data found</c:otherwise>
  
  </c:choose>






