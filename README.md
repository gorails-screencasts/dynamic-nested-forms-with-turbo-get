# README

## Dynamic Nested Forms with Turbo GET request

Screencast outline
- Introduce the app. Rails 7 app using esbuild and tailwind. Has a Project model that has_many :tasks and
    a task belongs_to :project. For simplicity, each only has a name string attribute aside from the
    project_id attibute on tasks.
- Walk through the code in `app/views/projects/new.html.erb` and `app/views/projects/edit.html.erb` and
    then the code in the form located in `app/views/projects/_form.html.erb`.
- While walking through the form touch on `<fieldset>` tag, using the `collection:` option
    to render the "task" partial for each task associated to the project.
- Show the form in the browser and then talk about the `button_tag` that is being used to trigger
    a function call in the related stimulus controller.
- Open up the stimulus controller code and walk through the initial setup that uses Request.js with
    a GET request to the `ProjectsController#task_fields` endpoint. Talk about why `layout: false`
    is there and then click the button with that commented out and in and look at the network
    tab and inspect the response.
