class App.Views.Content extends Backbone.View

  swap: (view) ->
    @$('#content').html(view)