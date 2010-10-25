require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra'
require 'haml'
require 'ostruct'
SiteConfig = OpenStruct.new(
                 :title => 'Your Application Name',
                 :author => 'Your Name',
                 :url_base => 'http://localhost:4567/'
               )

class Application < Sinatra::Base

  configure do
    set :public, "#{File.dirname(__FILE__)}/public"
    set :views, "#{File.dirname(__FILE__)}/views"
    set :haml, { :attr_wrapper => '"' }
  end  
  
  get "/" do
    haml :index
  end
  
end
