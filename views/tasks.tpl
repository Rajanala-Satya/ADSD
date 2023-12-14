<!DOCTYPE html>
<html>
<head>
    <title>Task Manager</title>
</head>
<body>
    <h2>Task List</h2>
    <ul>
        % for task in tasks:
            <li><a href="/tasks/{{task[0]}}">{{task[1]}}</a></li>
        % end
    </ul>
    <a href="/tasks/add">Add New Task</a>
</body>
</html>
