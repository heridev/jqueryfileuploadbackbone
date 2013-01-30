class Jqueryfileuploadbackbone.Views.QrcodesIndex extends Backbone.View

  template: JST['qrcodes/index']

  render: ->
    @$el.html @template
    #@collection.each @appendQrcode
    @
