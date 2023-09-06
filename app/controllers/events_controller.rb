class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    start_time = params.fetch(:start_time, Date.today).to_date
    params[:view] = "monthly" 
    if params[:view] == 'monthly'
      @events = Event.where(start_time: start_time.beginning_of_month.beginning_of_week..start_time.end_of_month.end_of_week).order(:start_time)
    else
      @events = Event.where(start_time: start_time.beginning_of_week..start_time.end_of_week).order(:start_time)
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
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), notice: "Event updated!", status: :see_other
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice: "Event deleted!", status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :end_time)
  end
end
