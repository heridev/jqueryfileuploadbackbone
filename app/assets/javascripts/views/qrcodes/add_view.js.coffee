class Jqueryfileuploadbackbone.Views.QrcodesAddView extends Backbone.View
  
  template: JST['qrcodes/add']

  render: ->
    @$el.html @template 
    @uploadQrcode()
    @

  uploadQrcode: =>
    @$el.fileupload
      add: (e, data) ->
        $('#qrcode_image').hide()
        $("#fileupload-loading").html 'Cargando...'
        data.submit()

      #We need to add this line to avoid close session in internet explorer
      formData: [
        name: "authenticity_token"
        value: $("meta[name=\"csrf-token\"]").attr("content")
      ]

      done: (e, data) =>
        window.location = "/"
