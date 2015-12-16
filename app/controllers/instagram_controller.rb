class InstagramController < ApplicationController
  require 'open-uri'
  def index
  end

  def search
   doc = Nokogiri::HTML(open('https://instagram.com/' + params[:username]))
   render json: doc.to_s.scan(/"followed_by":{"count":(\d+)\},/)
  end
end