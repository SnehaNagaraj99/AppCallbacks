class TestAppsController < ApplicationController
  before_action :set_test_app, only: [:show, :edit, :update, :destroy]

  # GET /test_apps
  # GET /test_apps.json
  def index
    @test_apps = TestApp.all
  end

  # GET /test_apps/1
  # GET /test_apps/1.json
  def show
  end

  # GET /test_apps/new
  def new
    @test_app = TestApp.new
  end

  # GET /test_apps/1/edit
  def edit
  end

  # POST /test_apps
  # POST /test_apps.json
  def create
    @test_app = TestApp.new(test_app_params)

    respond_to do |format|
      if @test_app.save
        format.html { redirect_to @test_app, notice: 'Test app was successfully created.' }
        format.json { render :show, status: :created, location: @test_app }
      else
        format.html { render :new }
        format.json { render json: @test_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_apps/1
  # PATCH/PUT /test_apps/1.json
  def update
    respond_to do |format|
      if @test_app.update(test_app_params)
        format.html { redirect_to @test_app, notice: 'Test app was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_app }
      else
        format.html { render :edit }
        format.json { render json: @test_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_apps/1
  # DELETE /test_apps/1.json
  def destroy
    @test_app.destroy
    respond_to do |format|
      format.html { redirect_to test_apps_url, notice: 'Test app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_app
      @test_app = TestApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_app_params
      params.require(:test_app).permit(:name, :email)
    end
end
