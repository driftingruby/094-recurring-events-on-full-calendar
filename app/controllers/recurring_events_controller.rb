class RecurringEventsController < ApplicationController
  before_action :set_recurring_event, only: [:show, :edit, :update, :destroy]

  def index
    @recurring_events = RecurringEvent.all
  end

  def show
  end

  def new
    @recurring_event = RecurringEvent.new
  end

  def edit
  end

  def create
    @recurring_event = RecurringEvent.new(recurring_event_params)
    @recurring_event.save
  end

  def update
    if params[:event]
      @recurring_event.update(anchor: params[:event][:start])
    else
      @recurring_event.update(recurring_event_params)
    end
  end

  def destroy
    @recurring_event.destroy
  end

  private
  
  def set_recurring_event
    @recurring_event = RecurringEvent.find(params[:id])
  end

  def recurring_event_params
    params.require(:recurring_event).permit(:title, :anchor, :frequency, :color)
  end
end

