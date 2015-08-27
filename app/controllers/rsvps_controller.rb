class RsvpsController < ApplicationController

  def show
    @already_rsvpd = cookies[:cpbg_rsvp]
  end

  def index
    @rsvps = Rsvp.all
  end

  def new
    @rsvp = Rsvp.new(attending: params[:rsvp])
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    @rsvp.save if @rsvp.valid?
  end

 private

  def rsvp_params
    params.require(:rsvp).permit(:name, :comment, :attending)
  end

end
