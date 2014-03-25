class App.Views.Side extends Backbone.View

  swap: (view) ->
    $('#side').html(view.render().el)