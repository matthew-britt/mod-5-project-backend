class PostsController < ApplicationController

    def index
        posts = Post.all 
        render json: posts     
    end
    
    def create
        post = Post.create(post_params)
        render json: post
        # post = Post.new(post_params)
        # if post.save
        #     render json: post
        # else
        #     render :action => "new"
        # end
        
    end

    def show
        post = Post.find(params[:id])
        render json: post 
    end


    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy    
        render json: {message: "Post has been removed to comply with standards and practices."}
    end

    # def category
    #     render json: Post.all.map{ |s| s.name}.uniq
    # end
    
    # def categorylist
    #     render json: Post.search_by_category(params[:name])
    # end

    private

    def post_params
        params.require(:post).permit(:header, :story, :user_id)
    end
end
