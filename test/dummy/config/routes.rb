Rails.application.routes.draw do

  mount TimeTraveller::Engine => "/time_traveller"
end
