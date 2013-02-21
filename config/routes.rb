TimeTraveller::Engine.routes.draw do
	root to:'control_panel#index'
	match 'control_panel/back_to_the_present', to: 'control_panel#back_to_the_present', via: :post
	match 'control_panel/time_travel', to: 'control_panel#time_travel', via: :post
end
