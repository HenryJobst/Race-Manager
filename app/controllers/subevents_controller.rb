class SubeventsController < ApplicationController
  # GET /subevents
  # GET /subevents.json
  def index
    @subevents = Subevent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subevents }
    end
  end

  # GET /subevents/1
  # GET /subevents/1.json
  def show
    @subevent = Subevent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subevent }
    end
  end

  # GET /subevents/new
  # GET /subevents/new.json
  def new
    @subevent = Subevent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subevent }
    end
  end

  # GET /subevents/1/edit
  def edit
    @subevent = Subevent.find(params[:id])
  end

  # POST /subevents
  # POST /subevents.json
  def create
    @subevent = Subevent.new(params[:subevent])

    respond_to do |format|
      if @subevent.save
        format.html { redirect_to @subevent, notice: 'Subevent was successfully created.' }
        format.json { render json: @subevent, status: :created, location: @subevent }
      else
        format.html { render action: "new" }
        format.json { render json: @subevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subevents/1
  # PUT /subevents/1.json
  def update
    @subevent = Subevent.find(params[:id])

    respond_to do |format|
      if @subevent.update_attributes(params[:subevent])
        format.html { redirect_to @subevent, notice: 'Subevent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subevents/1
  # DELETE /subevents/1.json
  def destroy
    @subevent = Subevent.find(params[:id])
    @subevent.destroy

    respond_to do |format|
      format.html { redirect_to subevents_url }
      format.json { head :no_content }
    end
  end
end
