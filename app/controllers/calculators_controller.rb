class CalculatorsController < ApplicationController
  # GET /calculators
  # GET /calculators.json
  def index
    @calculators = Calculator.all
  end

  # GET /calculators/1
  # GET /calculators/1.json
  def show
    @calculator = Calculator.find(params[:id])

  end

  # GET /calculators/new
  # GET /calculators/new.json
  def new
    @calculator = Calculator.new

  end

  # GET /calculators/1/edit
  def edit
    @calculator = Calculator.find(params[:id])
  end

  # POST /calculators
  # POST /calculators.json
  def create
    @calculator = Calculator.new(params[:calculator])

    if @calculator.save
      redirect_to @calculator, notice: 'Calculator was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /calculators/1
  # PUT /calculators/1.json
  def update
    @calculator = Calculator.find(params[:id])

    if @calculator.update_attributes(params[:calculator])
      redirect_to @calculator, notice: 'Calculator was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /calculators/1
  # DELETE /calculators/1.json
  def destroy
    @calculator = Calculator.find(params[:id])
    @calculator.destroy

    redirect_to calculators_url
  end
end
