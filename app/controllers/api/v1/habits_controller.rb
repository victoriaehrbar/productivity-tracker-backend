class Api::V1::HabitsController < ApplicationController

    def index
        @habits = Habit.all
        render json: @habits
    end

    def show
    end

    def create
    end

    def destroy
    end

    private

    def habit_params
        params.require(:habit).permit(:month_id, :completed, :date, :description)
    end


end
