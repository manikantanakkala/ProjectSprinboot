
<%@page isELIgnored="false" import="java.util.*"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
 
 <b>HelloEdit</b>
 
 
 <c:form modelAttribute="emp" >
 
 <table align="center" >
 
 <tr>
 <td>EmpId</td> <td> <input path="eid" readOnly="true" /> </td>
 
 </tr>
 
 <tr>
 
 <td>EmpName</td>   <td> <input path="ename" /> </td>
 
 </tr>
 
 <tr>
 
 <td>EmpJob</td>   <td> <input path="job"  />  </td>
 
 </tr>
 
 <tr>
 
 <td>EmpSal</td>   <td> <input path="sal"  />  </td>
 
 </tr>
 
  <tr>
 
    <td> <input type="submit" value="update" /> </td>    <td>  <input type="reset" value="cancel" /> </td>
 
 </tr>
 
 </table>
 
  </c:form>