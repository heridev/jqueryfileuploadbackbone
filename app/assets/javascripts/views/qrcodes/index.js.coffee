class Jqueryfileuploadbackbone.Views.QrcodesIndex extends Backbone.View

  initialize: ->
    @model.on "change", @render, @

  helpers:
    blockPagination: ->
      segment = @model.get('perPage')
      current =  @model.get('current_page') || 1
      range = _.range (current - segment), (current + segment+1), 1
      middle = _.filter range, (num) =>
        num > 0 and num <= @model.get('total_pages')

    nextPage: ->
      value = @model.get('current_page')
      total_pages = @model.get('total_pages')
      value = value + 1 unless value is total_pages
      value

    previousPage: ->
      value = @model.get('current_page')
      value = value - 1 unless value is 1
      value

    currentPage: ->
      @model.get('current_page')

    totalPages: ->
      @model.get('total_pages')

  template: JST['qrcodes/index']

  render: ->
    @$el.html @template _.extend(@, @helpers)
    @addOnebyOne @model.get('models')
    @

  addOnebyOne: (models) ->
    _.each models, ((qrcode) ->
      view = new Jqueryfileuploadbackbone.Views.QrcodesShow model: qrcode
      @$('#qrcodes').append view.render().el
    ), @

