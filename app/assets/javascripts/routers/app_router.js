window.Alistpress.Routers.AppRouters = Backbone.Router.extend({
  
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
  },
  
  routes: {
    "": "index"
  },
  
  index: function() {
    var indexAtemplate = new Alistpress.Views.Atemplates({
      collection: Alistpress.atemplates
    });
    
    this._swapView(indexAtemplate);
  },
  
  _swapView: function(view) {
    this._swapView && this._swapView.remove();
    this._swapView = view;
    this.$rootEl.html(view.render().$el);
  }
  
});