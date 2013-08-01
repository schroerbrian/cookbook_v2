class CommentsController < ApplicationController
	respond_to :js

  def new
  	@comment = Comment.new
  	@comment.book_id = params[:book_id] #to render the form, ui needs comment and book id
  end

	def create
	  c = params[:comment]
	  @comment = Comment.new(c)
	  flash[:notice] = 'Comment was successfully created.' if @comment.save
	end

end
