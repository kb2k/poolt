class App.Views.Users.SideList extends Backbone.View

  template: JST['templates/users/side_list']

  render: ->
    $(@el).html(@template())
    @