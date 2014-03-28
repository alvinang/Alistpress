window.Alistpress.Collections.Todos = Backbone.Collection.extend({
  url: '/api/todos',
  model: Alistpress.Models.Todo,    
});