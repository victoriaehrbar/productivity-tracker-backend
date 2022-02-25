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
    end

    private

    def month_params
        params.require(:month).permit(:name)
    end
end
