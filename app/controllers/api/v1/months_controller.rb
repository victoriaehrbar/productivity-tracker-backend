class Api::V1::MonthsController < ApplicationController
    def index
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
