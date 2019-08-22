class TestsController < ApplicationController
    def index
        @tests = Test.all.order('created_at DESC')
    end

    def new
        @test = Test.new
    end

    def create
        @test = Test.new(test_params)
        if @test.save
            redirect_to @film
        else
            render 'new'
        end
    end

    def show
        @test = Test.find(params[:id])
    end

    def edit
        @test = Test.find(params[:id])
    end

    def update
        @test = Test.find(params[:id])
        if @test.update(test_params)
            redirect_to @test
        else
            render 'edit'
        end
    end

    def destroy
        Test.find(params[:id]).destroy
        flash[:success] = "Test Deleted"
        redirect_to user_path(@user)
    end

    private

    def test_params
        params.require(:test).permit(:user_id, :group_id, :e_value, :a_value, :c_value, :n_value, :o_value)
    end
end