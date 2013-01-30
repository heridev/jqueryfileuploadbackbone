window.Jqueryfileuploadbackbone =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  ManageImages: ->
    new Jqueryfileuploadbackbone.Routers.Qrcodes()
    Backbone.history.start()

$(document).ready ->
  Jqueryfileuploadbackbone.ManageImages()
