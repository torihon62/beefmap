json.extract! place_to_eat, :id, :name, :address, :latitude, :longitude, :tel, :url, :created_at, :updated_at
json.url place_to_eat_url(place_to_eat, format: :json)
