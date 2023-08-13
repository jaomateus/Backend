class PlantsController < ApplicationController
  require 'httparty'

  def all_plants
    response = HTTParty.get(
      'https://trefle.io/api/v1/plants',
      query: {
        "token": ENV['TREFLE_TOKEN']
      }
    )
    json = response.parsed_response
    render json: json
  end
end
