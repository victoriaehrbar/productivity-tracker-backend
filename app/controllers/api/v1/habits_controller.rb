class Api::V1::HabitsController < ApplicationController

    before_action :set_month

    def index
        @habits = Habit.all
        render json: @habits
    end

    def show
        @habit = Habit.find(params[:id])
        render json: @habit
    end

    def create
    end

    def destroy
    end

    private

    def set_month
        @month = Month.find(params[:month_id])
    end

    def habit_params
        params.require(:habit).permit(:month_id, :completed, :date, :description)
    end


end
