<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>

<h3> Information for all Employees</h3>
<br>
<br>
<security:authorize access="hasRole('HR')">
    <input type="button" value="Salary"
           onclick="window.location.href = 'hr_info'">
    Only for HR staff
</security:authorize>

<br>
<security:authorize access="hasRole('Manager')">
<input type="button" value="Performance"
       onclick="window.location.href = 'manager_info'">
Only for Managers staff
</security:authorize>

</body>
</html>