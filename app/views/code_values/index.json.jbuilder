json.array!(@code_values) do |code_value|
  json.extract! code_value, :id
  json.url code_value_url(code_value, format: :json)
end
