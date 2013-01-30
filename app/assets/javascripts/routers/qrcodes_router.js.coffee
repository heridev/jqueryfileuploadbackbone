class Jqueryfileuploadbackbone.Routers.Qrcodes extends Backbone.Router
  routes:
    ''              :   'showManageImages'
    'qrcode/add'    :   'addNewImage'

  showManageImages: ->
    @collection = new Jqueryfileuploadbackbone.Collections.Qrcodes()
    @collection.fetch()
    view = new Jqueryfileuploadbackbone.Views.QrcodesIndex collection: @collection
    $('#container-app').html view.render().el

  addNewImage : ->
    view = new Jqueryfileuploadbackbone.Views.QrcodesAddView
    $('#container-app').html view.render().el


