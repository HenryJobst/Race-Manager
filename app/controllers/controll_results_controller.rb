class ControllResultsController < ApplicationController
  def show
    event_id = params[:event_id]
    @controll_id = params[:controll_id]
    @event = Event.find(event_id)
    @stamps = @event.stamps.where(:stamp_control_code => @controll_id)
  end
end
