require File.expand_path("../boot", __FILE__)

# Require your resources here
require 'resources/home'

module MyApp
  Application = Lattice::Application.new do |app|
    app.routes do
      add ['*'], Resources::Home
    end
  end
end

Lattice.app = MyApp::Application
