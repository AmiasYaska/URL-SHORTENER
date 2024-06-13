# before_action :set_code, only: %i[ show]

class LinksController < ApplicationController
    def index
        @links = Link.take_first
    end

    def show
    end

    def new
        @link = Link.new
    end

    def create
        @link = Link.new(link_params)
        if @link.save
            redirect_to root_path
        else
            @links = Link.take_first
            render :index, status: :unprocessable_entity
        end
    end


    private
    def link_params
        params.require(:link).permit(:url)
    end
end



