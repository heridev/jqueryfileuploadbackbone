class Jqueryfileuploadbackbone.Views.QrcodesShow extends Backbone.View
  
  template: JST['qrcodes/show']

  render: ->
    @$el.html @template qrcode: @model
    @
