<!DOCTYPE html>
<html>
<head>
    <title>Task Details</title>
</head>
<body>
    <h2>Task Details</h2>
    <p><strong>Description:</strong> {{task[1]}}</p>
    <br>
    <a href="/tasks/{{task[0]}}/update">Update Task</a>
    <br>
    <a href="/tasks/{{task[0]}}/delete">Delete Task</a>
    <br>
    <a href="/tasks">Back to Task List</a>
</body>
</html>
