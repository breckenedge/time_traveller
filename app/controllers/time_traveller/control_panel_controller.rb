require 'delorean'

class TimeTraveller::ControlPanelController < ApplicationController
  before_filter :load_times, :load_background_image_url

  def index
    render 'index', layout: 'time_traveller/application'
  end

  def time_travel
    dest = Date.civil(
      params[:time_travel_to][:year].to_i, 
      params[:time_travel_to][:month].to_i, 
      params[:time_travel_to][:day].to_i)
  	Delorean.time_travel_to dest
  	redirect_to action: :index
  end

  def back_to_the_present
  	Delorean.back_to_the_present
  	redirect_to action: :index
  end

  private

    def load_times
      @real_present_time = Time.now_without_delorean
      @system_present_time = Time.now
    end

    def load_background_image_url
      if @system_present_time.to_date == @real_present_time.to_date
        img = "time_traveller/delorean-present-#{rand(1)+1}.jpg"
      elsif @system_present_time < @real_present_time
        img = "time_traveller/delorean-past-#{rand(2)+1}.jpg"
      else 
        img = "time_traveller/delorean-future-#{rand(1)+1}.jpg"
      end
      @background_image_url = ActionController::Base.helpers.asset_path(img)
    end
end