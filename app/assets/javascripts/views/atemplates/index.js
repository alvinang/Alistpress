window.Alistpress.Views.AtemplatesIndex = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/index'],
  
  initialize: function() {
    this.listenTo(Alistpress.atemplates, "sync add remove change", this.render); 
  },
  
  addActive: function() {
    this.$el.find('.tab-content > div:first-child').addClass('active');          
    this.$el.find('ul > li:first-child').addClass('active');      
  },
  
  _getCategories: function() {
    var atemplates = this.collection;
    
    var result = [];
    var categoriesAry = [];
    _.each(atemplates.models, function(atemplate){
      categoriesAry.push(atemplate.attributes.category);
    });
    
    _.each(categoriesAry, function(category){
      if (result.indexOf(category) == -1){
        result.push(category)
      };
    });

    return result;
  },

  render: function() {
    var renderedContent = this.template({
      atemplates: this.collection,
      categories: this._getCategories()    
    });
    
    this.$el.html(renderedContent);
    this.addActive();
    return this;
  }
  
});