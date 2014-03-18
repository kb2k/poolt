class Poolt.Routers.ProjectsRouter extends Backbone.Router
  initialize: (options) ->
    @projects = new Poolt.Collections.ProjectsCollection()
    #@projects.reset options.projects

  routes:
    ""                  : "index"
    "projects"          : "index"
    "projects/new"      : "newProject"
    "projects/:id/edit" : "edit"
    "projects/:id"      : "show"
    "projects/.*"       : "index"

  newProject: ->
    @view = new Poolt.Views.Projects.NewView(collection: @projects)
    $("#content").html(@view.render().el)

  index: ->
    @view = new Poolt.Views.Projects.IndexView(projects: @projects)
    $("#content").html(@view.render().el)

  show: (id) ->
    project = @projects.get(id)

    @view = new Poolt.Views.Projects.ShowView(model: project)
    $("#content").html(@view.render().el)

  edit: (id) ->
    project = @projects.get(id)

    @view = new Poolt.Views.Projects.EditView(model: project)
    $("#content").html(@view.render().el)
