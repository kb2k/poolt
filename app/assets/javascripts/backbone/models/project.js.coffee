class Poolt.Models.Project extends Backbone.Model
  paramRoot: 'project'

  defaults:
    title: null

class Poolt.Collections.ProjectsCollection extends Backbone.Collection
  model: Poolt.Models.Project
  url: '/projects'
