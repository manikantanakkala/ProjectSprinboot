<%@ page isELIgnored="false" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>



<table align ="center"  border="2px" bgcolor="cyan">

<frm:form action="register" method="post" modelAttribute="emp">
  
   <th>Employee Name</th>
    <td><frm:input type="text" path="ename"/></td>
  </tr>
  
  <tr>
    
    <th>job</th>
    <td ><frm:input type="text" path="job"/></td>
  </tr>
  <tr>
   <th>salary</th>
    <td><frm:input type="text" path="sal"/></td>
  </tr>
  
  <tr>
   <td bgcolor="red"><input type="submit" value="add"/></td>
    <td  bgcolor="red"><input  type="reset" path="cancel"/></td>
  </tr>
  
  </frm:form>
  
</table>


