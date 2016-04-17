json.array!(@manifestos) do |manifesto|
  json.extract! manifesto, :id, :content, :create_date, :human_id
  json.url manifesto_url(manifesto, format: :json)
end
