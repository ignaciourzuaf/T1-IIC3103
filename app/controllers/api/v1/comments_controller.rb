module Api
  module V1
    class CommentsController < ApplicationController
      #rescue ActiveRecord::RecordNotFound
      respond_to :json

       def index
         @comments = Comment.all
         render "api/v1/comments/index.json.jbuilder"
       end

       def show
         @comment = Comment.find(params[:id])
         if @comment
           render "api/v1/comments/show.json.jbuilder"
         end
       end

       def create
         respond_with Comment.create(params[:comment])
       end

       def update
         respond_with Comment.update(params[:id], params[:comments])
       end

       def destroy
         respond_with Comment.destroy(params[:id])
       end

    end
  end
end
