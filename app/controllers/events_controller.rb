class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    start_time = params.fetch(:start_time, Date.today).to_date

    if params[:view] == 'monthly'
      @events = Event.where(start_time: start_time.beginning_of_month.beginning_of_week..start_time.end_of_month.end_of_week)
    else
      @events = Event.where(start_time: start_time.beginning_of_week..start_time.end_of_week)
    end
  end

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to events_path, notice: "Event added!"
    else
      flash.now[:alert] = @event.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), notice: "Event updated!"
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice: "Event deleted!"
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :start_time, :end_time)
  end
end
