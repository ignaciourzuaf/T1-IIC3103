module Api
  module V1
    class EntriesController < ApplicationController
    #rescue ActiveRecord::RecordNotFound

      respond_to :json

       def index

         @entries = Entry.all
         render "api/v1/entries/index.json.jbuilder"
       end

       def show
         @entry = Entry.find(params[:id])
         if @entry
           render "api/v1/entries/show.json.jbuilder"
         end
       end

       def create
         respond_with Entry.create(params[:entry])
       end

       def update
         respond_with Entry.update(params[:id], params[:entries])
       end

       def destroy
         respond_with Entry.destroy(params[:id])
       end

    end
  end
end
