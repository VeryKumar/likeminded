class TestsController < ApplicationController
    def index
        @tests = Tests.all
    end

    def new
        @test = Test.new
    end

    def create
        @test = Test.new(test_params)
    end

    def show
    end

    def delete
        Test.find(params[:id]).destroy
        flash[:success] = "Test Deleted"
        redirect_to 
    end

    private

    def test_params
        params.require(:test).permit(:user_id, :group_id, :e_value, :a_value, :c_value, :n_value, :o_value)
end