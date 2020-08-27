class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.all.order(id: "DESC") # すべてのレコードを@postsに代入し、新しいレコードが上に来る
  end
  
  def create
    Post.create(content: params[:content])
  end

end
