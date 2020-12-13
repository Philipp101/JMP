class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    find_event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    # authorize @event
    if @event.save
      flash.notice = "Event created!"
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    find_event
    # authorize @event
  end

  def update
    find_event
    # authorize @event
    if @event.update(event_params)
      flash.notice = "Event updated!"
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    find_event
    # authorize @event
    @event.destroy
    flash.notice = "Event deleted!"
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :date_start, :date_end, :description, :photo)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
