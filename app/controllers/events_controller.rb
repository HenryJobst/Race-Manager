class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  def calculateNextPrimaryKey      
    Event.find(:first, :select => 'max(id_event) as max').max.to_i() + 1
  end
  
  def calculateForeignId
      foreignId = DateTime.now.to_date().to_formatted_s(:number)
      foreignIdEntries = Event.find(:all, conditions: ["event_foreign_id like ?", foreignId+'%'])
      foreignIdCount = foreignIdEntries.count + 1  
      foreignId + "%02d" % foreignIdCount
    end
  
  # GET /events/new
  # GET /events/new.json
  def new
    
    Time.zone = t(:timezone_name) if t(:timezone_name)

    @event = Event.new    
    @event.event_name = t(:new_event)    
    @event.event_begin = DateTime.now
    @event.event_end = DateTime.now+5.hours

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])
      
    @event.id_event = calculateNextPrimaryKey()    
    @event.event_foreign_id = calculateForeignId()  

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
  
  def select
    @event = Event.find(params[:id])
    session[:event] = @event 
      
    respond_to do |format|
      format.html { redirect_to @event }
      format.json { render json: @events }
    end
  end
end

