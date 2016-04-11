json.array!(@samochods) do |samochod|
  json.extract! samochod, :id, :marka, :model
  json.url samochod_url(samochod, format: :json)
end
