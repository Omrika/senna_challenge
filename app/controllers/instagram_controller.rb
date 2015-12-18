class InstagramController < ApplicationController
  require 'open-uri'
  
  def index
  end

  def search
    if params[:social_network] == 'instagram'
      instagram = Nokogiri::HTML(open('https://instagram.com/' + params[:username]))
      render json: instagram.to_s.scan(/"followed_by":{"count":(\d+)\},/)
    else 
      twitter = Nokogiri::HTML(open('https://twitter.com/' + params[:username]))
      render json: twitter.to_s.scan(/"followers_count":(\d+)/)
    end
  end
end