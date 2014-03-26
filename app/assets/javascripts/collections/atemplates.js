window.Alistpress.Collections.Atemplates = Backbone.Collection.extend({
  model: Alistpress.Models.Atemplate,
  url: '/api/atemplates',
  
  getOrFetch: function (id, callback) {
    var model;
    callback = callback || (function () {});
    
    if (this.get(id)) {
      model = this.get(id);
      model.fetch({success: callback});
    } else {
      model = new this.model({id: id});
      var that = this;
      model.fetch({success: function (model) {
        that.add(model);
        callback(model);
      }})
    }
    
    return model;
  }
  
});