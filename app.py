# project_task_manager
from bottle import route, post, run, template, redirect, request
import task_database

# Initialize the task database
task_database.initialize_database()

@route("/")
def get_index():
    redirect("/tasks")

@route("/tasks")
def get_tasks():
    tasks = task_database.get_all_tasks()
    return template("tasks.tpl", tasks=tasks)

@route("/tasks/add")
def get_add_task():
    return template("add_task.tpl")

@post("/tasks/add")
def post_add_task():
    task_description = request.forms.get("description")
    task_database.add_task(task_description)
    redirect("/tasks")

@route("/tasks/<task_id>")
def get_task_details(task_id):
    task = task_database.get_task_details(task_id)
    return template("task_details.tpl", task=task)

@route("/tasks/<task_id>/update")
def get_update_task(task_id):
    task = task_database.get_task_details(task_id)
    return template("update_task.tpl", task=task)

@post("/tasks/<task_id>/update")
def post_update_task(task_id):
    new_description = request.forms.get("description")
    task_database.update_task(task_id, new_description)
    redirect("/tasks")

@route("/tasks/<task_id>/delete")
def get_delete_task(task_id):
    task_database.delete_task(task_id)
    redirect("/tasks")

run(host='localhost', port=8080)
