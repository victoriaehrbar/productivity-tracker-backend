class Api::V1::MonthsController < ApplicationController
    def index
        @months = Month.all
        render json: @months
    end

    def create
    end

    def show
    end

    def destroy
    end

    private

    def month_params
        params.require(:month).permit(:name)
    end
end
