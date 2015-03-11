json.array!(@pins) do |pin|
  json.extract! pin, :id, :description, :name
  json.url pin_url(pin, format: :json)
end
