class TestsController < ApplicationController
    def index
        @tests = Test.all
    end

    def new
        @test = Test.new
    end

    def create
        @test = Test.new(test_params)
        @test.save
        redirect_to test_path @test
    end

    def show
        @test = Test.find(test_params[:id])
    end

    def delete
        Test.find(params[:id]).destroy
        flash[:success] = "Test Deleted"
        redirect_to user_path(@user)
    end

    private

    def test_params
        params.require(:test).permit(:user_id, :group_id, :e_value, :a_value, :c_value, :n_value, :o_value)
    end
end