json.array!(@domains) do |domain|
  json.extract! domain, :id, :domain_code, :name
  json.url domain_url(domain, format: :json)
end
