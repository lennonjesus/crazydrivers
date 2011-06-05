class BestLapsController < ApplicationController

  before_filter :authenticate_user!

  # GET /best_laps
  # GET /best_laps.xml
  def index
    @best_laps = BestLap.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @best_laps }
    end
  end

  # GET /best_laps/1
  # GET /best_laps/1.xml
  def show
    @best_lap = BestLap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @best_lap }
    end
  end

  # GET /best_laps/new
  # GET /best_laps/new.xml
  def new
    @best_lap = BestLap.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @best_lap }
    end
  end

  # GET /best_laps/1/edit
  def edit
    @best_lap = BestLap.find(params[:id])
  end

  # POST /best_laps
  # POST /best_laps.xml
  def create
    @best_lap = BestLap.new(params[:best_lap])

    respond_to do |format|
      if @best_lap.save
        format.html { redirect_to(@best_lap, :notice => 'Best lap was successfully created.') }
        format.xml  { render :xml => @best_lap, :status => :created, :location => @best_lap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @best_lap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /best_laps/1
  # PUT /best_laps/1.xml
  def update
    @best_lap = BestLap.find(params[:id])

    respond_to do |format|
      if @best_lap.update_attributes(params[:best_lap])
        format.html { redirect_to(@best_lap, :notice => 'Best lap was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @best_lap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /best_laps/1
  # DELETE /best_laps/1.xml
  def destroy
    @best_lap = BestLap.find(params[:id])
    @best_lap.destroy

    respond_to do |format|
      format.html { redirect_to(best_laps_url) }
      format.xml  { head :ok }
    end
  end
end
