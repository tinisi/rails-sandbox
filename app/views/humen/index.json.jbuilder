json.array!(@humen) do |human|
  json.extract! human, :id, :name, :email, :height
  json.url human_url(human, format: :json)
end
