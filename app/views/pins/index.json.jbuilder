json.array!(@pins) do |pin|
  json.extract! pin, :id, :body
  json.url pin_url(pin, format: :json)
end
