class Api::V1::CommentsController < ApplicationController
      before_action :define_current_comment
    
    def index
        render json: Comment.all
    end
    
    def show
        render json: current_comment
    end
    
    def update
        current_comment.update(comment_params)
        render json: current_comment
    end
    
    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def comment_params
        params.permit(:description, :story_id)
    end
    
    def define_current_comment
        if(params[:id])
            @current_comment = Comment.find(params[:id])
        end
    end
    
    def current_comment
        @current_comment
    end
end
