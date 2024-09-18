<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Add Employee</h1>
    <form:form method="post" action="/employees/add" modelAttribute="employee">
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="name" class="form-control" id="name" />
        </div>
        <div class="form-group">
            <label for="department">Department</label>
            <form:input path="department" class="form-control" id="department" />
        </div>
        <div class="form-group">
            <label for="salary">Salary</label>
            <form:input path="salary" type="number" class="form-control" id="salary" />
        </div>
        <button type="submit" class="btn btn-primary">Add Employee</button>
    </form:form>
</div>
</body>
</html>
