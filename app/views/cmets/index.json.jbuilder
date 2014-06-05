json.array!(@cmets) do |cmet|
  json.extract! cmet, :id, :identifier, :descriptor, :attribution, :description, :work_group, :domain_id
  json.url cmet_url(cmet, format: :json)
end
