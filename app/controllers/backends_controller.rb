class BackendsController < ApplicationController
  def name
    name = HTTP.get("https://api.hackerone.com/&apiKey=#{Rails.application.credentials.hacker_one[:api_key]}")
    
    render json: JSON.parse(name)
  end

  def endpoint
    backend = HTTP.get("http://api.hackerone.com/&apiKey=#{Rails.application.credentials.hacker_one[:api_key]}")
  end
end
