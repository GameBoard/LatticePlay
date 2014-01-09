require File.expand_path("../boot", __FILE__)

# Require your resources here
require 'resources/home'
require 'resources/play'

module MyApp
  Application = Lattice::Application.new do |app|
    app.routes do
      add ['home'], Resources::Home
      add ['play'], Resources::Play
    end
  end
end

Lattice.app = MyApp::Application
