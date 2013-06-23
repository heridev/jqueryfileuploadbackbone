class Jqueryfileuploadbackbone.Routers.Qrcodes extends Backbone.Router
  routes:
    ''              : 'showManageImages'
    'qrcodes/:page' : 'showManageImages'
    'qrcode/add'    :   'addNewImage'

  showManageImages: (page = 1) ->
    $('#container-app').html JST['helpers/loading']
    model = new Jqueryfileuploadbackbone.Models.Qrcode()
    indexView = new Jqueryfileuploadbackbone.Views.QrcodesIndex 
                                                    model: model
                                                    el: $('#container-app')
    indexView.model.fetch data: { page: page }

  addNewImage : ->
    view = new Jqueryfileuploadbackbone.Views.QrcodesAddView
    $('#container-app').html view.render().el
