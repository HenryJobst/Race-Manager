class TeamCompetitorsController < ApplicationController
  # GET /team_competitors
  # GET /team_competitors.json
  def index
    @team_competitors = TeamCompetitor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_competitors }
    end
  end

  # GET /team_competitors/1
  # GET /team_competitors/1.json
  def show
    @team_competitor = TeamCompetitor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_competitor }
    end
  end

  # GET /team_competitors/new
  # GET /team_competitors/new.json
  def new
    @team_competitor = TeamCompetitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_competitor }
    end
  end

  # GET /team_competitors/1/edit
  def edit
    @team_competitor = TeamCompetitor.find(params[:id])
  end

  # POST /team_competitors
  # POST /team_competitors.json
  def create
    @team_competitor = TeamCompetitor.new(params[:team_competitor])

    respond_to do |format|
      if @team_competitor.save
        format.html { redirect_to @team_competitor, notice: 'Team competitor was successfully created.' }
        format.json { render json: @team_competitor, status: :created, location: @team_competitor }
      else
        format.html { render action: "new" }
        format.json { render json: @team_competitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_competitors/1
  # PUT /team_competitors/1.json
  def update
    @team_competitor = TeamCompetitor.find(params[:id])

    respond_to do |format|
      if @team_competitor.update_attributes(params[:team_competitor])
        format.html { redirect_to @team_competitor, notice: 'Team competitor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_competitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_competitors/1
  # DELETE /team_competitors/1.json
  def destroy
    @team_competitor = TeamCompetitor.find(params[:id])
    @team_competitor.destroy

    respond_to do |format|
      format.html { redirect_to team_competitors_url }
      format.json { head :no_content }
    end
  end
end
