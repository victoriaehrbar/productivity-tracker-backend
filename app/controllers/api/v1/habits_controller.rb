class Api::V1::HabitsController < ApplicationController

    def index
    end

    def create
    end

    def show
    end

    def destroy
    end

    private

    def habit_params
        params.require(:habit).permit(:month_id, :completed, :date, :description)
    end


end
