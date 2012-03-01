class EventCompetitorsController < ApplicationController
  # GET /event_competitors
  # GET /event_competitors.json
  def index
    @event_competitors = EventCompetitor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_competitors }
    end
  end

  # GET /event_competitors/1
  # GET /event_competitors/1.json
  def show
    @event_competitor = EventCompetitor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_competitor }
    end
  end

  # GET /event_competitors/new
  # GET /event_competitors/new.json
  def new
    @event_competitor = EventCompetitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_competitor }
    end
  end

  # GET /event_competitors/1/edit
  def edit
    @event_competitor = EventCompetitor.find(params[:id])
  end

  # POST /event_competitors
  # POST /event_competitors.json
  def create
    @event_competitor = EventCompetitor.new(params[:event_competitor])

    respond_to do |format|
      if @event_competitor.save
        format.html { redirect_to @event_competitor, notice: 'Event competitor was successfully created.' }
        format.json { render json: @event_competitor, status: :created, location: @event_competitor }
      else
        format.html { render action: "new" }
        format.json { render json: @event_competitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_competitors/1
  # PUT /event_competitors/1.json
  def update
    @event_competitor = EventCompetitor.find(params[:id])

    respond_to do |format|
      if @event_competitor.update_attributes(params[:event_competitor])
        format.html { redirect_to @event_competitor, notice: 'Event competitor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_competitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_competitors/1
  # DELETE /event_competitors/1.json
  def destroy
    @event_competitor = EventCompetitor.find(params[:id])
    @event_competitor.destroy

    respond_to do |format|
      format.html { redirect_to event_competitors_url }
      format.json { head :no_content }
    end
  end
end
