<!DOCTYPE html>
<html>
<head>
    <title>Add Task</title>
</head>
<body>
    <h2>Add New Task</h2>
    <form action="/tasks/add" method="post">
        <label for="description">Task Description:</label>
        <input type="text" id="description" name="description" required>
        <br>
        <input type="submit" value="Add Task">
    </form>
    <br>
    <a href="/tasks">Back to Task List</a>
</body>
</html>
