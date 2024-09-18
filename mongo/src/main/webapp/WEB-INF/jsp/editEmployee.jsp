<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Edit Employee</h1>
    <form:form method="post" action="/employees/update" modelAttribute="employee">
        <input type="hidden" id="id" path="id" />
        <div class="form-group">
            <label for="name">Name</label>
            <form:input type="text" id="name" path="name" class="form-control" />
        </div>
        <div class="form-group">
            <label for="department">Department</label>
            <form:input type="text" id="department" path="department" class="form-control" />
        </div>
        <div class="form-group">
            <label for="salary">Salary</label>
            <form:input type="number" id="salary" path="salary" class="form-control" />
        </div>
        <button type="submit" class="btn btn-primary">Update Employee</button>
    </form:form>
</div>
</body>
</html>
