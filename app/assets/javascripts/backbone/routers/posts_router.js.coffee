class Blog.Routers.PostsRouter extends Backbone.Routers
  initialize: (options) ->
    @post = new Blog.Collections.PostsCollection()
    @posts.reset options.posts
  
  routes:
    "index"     : "index"
    "new"       : "newPost"
    ":id"       : "show"
    ":id/edit"  : "edit"
    ".*"        : "index"
  
  index: ->
    @view = new Blog.Views.PostsIndexView({collection: @posts})
  
  newPost: ->
    @view = new Blog.Views.PostsNewView({collection: @posts}) 
  
  show: ->
    post = @post.get(id)
    @view = new Blog.Views.PostsShowView({model: post})

  edit: (id) ->
    post = @post.get(id)
    @view = new Blog.Views.PostsEditView({model: post})