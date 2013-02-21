# Time Traveller


This is nothing but a rails user interface for the excellent [delorean][1] gem.  It helps you to test your rails app to see what would happen on at different dates/times.  Delorean is great for automated testing, but sometimes I wanted to be able to fake running the app on different dates in development mode as well.

# Installation

It's a rails engine, so just include it in your project's `Gemfile`

    gem 'time_traveller', git: 'https://github.com/troygnichols/time_traveller.git'

run

    bundle install

mount the engine by adding this to `[main app]/config/routes.rb`

    mount TimeTraveller::Engine, at: '/time_traveller'

enable the time_traveller css by adding this to `[main app]/app/assets/stylesheets/application.css`

    *= require time_traveller/application

then go to 

    http://your-app:3000/time_traveller

# Example

You should see this.  Hopefully it's pretty obvious how to use it.

![Screencap][screencap]


[1]: https://github.com/bebanjo/delorean
[screencap]: https://raw.github.com/troygnichols/time_traveller/master/docs/time_traveller_screencap.jpg