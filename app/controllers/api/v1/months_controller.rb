class Api::V1::MonthsController < ApplicationController
    def index
        @months = Month.all
        render json: @months
    end

    def create
        @month = Month.new(month_params)
        if @month.save
          render json: @month
        else
          render json: {error: 'Error creating month'}
        end
      end

    def show
        @month = Month.find(params[:id])
        render json: @month
    end

    def destroy
        @month = Month.find(params[:id])
        @month.destroy
    end

    def update
      @month = Month.find(params[:id])
      @month.update(name: params["month"]["name"])
      @month.save
      render json: @month
    end

    private

    def month_params
        params.require(:month).permit(:name)
    end
end
