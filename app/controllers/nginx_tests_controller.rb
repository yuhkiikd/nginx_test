class NginxTestsController < ApplicationController
  before_action :set_nginx_test, only: [:show, :edit, :update, :destroy]

  # GET /nginx_tests
  def index
    @nginx_tests = NginxTest.all
  end

  # GET /nginx_tests/1
  def show
  end

  # GET /nginx_tests/new
  def new
    @nginx_test = NginxTest.new
  end

  # GET /nginx_tests/1/edit
  def edit
  end

  # POST /nginx_tests
  def create
    @nginx_test = NginxTest.new(nginx_test_params)

    if @nginx_test.save
      redirect_to @nginx_test, notice: 'Nginx test was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /nginx_tests/1
  def update
    if @nginx_test.update(nginx_test_params)
      redirect_to @nginx_test, notice: 'Nginx test was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /nginx_tests/1
  def destroy
    @nginx_test.destroy
    redirect_to nginx_tests_url, notice: 'Nginx test was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nginx_test
      @nginx_test = NginxTest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nginx_test_params
      params.require(:nginx_test).permit(:title, :content)
    end
end
