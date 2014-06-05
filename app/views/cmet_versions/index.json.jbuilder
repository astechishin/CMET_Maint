json.array!(@cmet_versions) do |cmet_version|
  json.extract! cmet_version, :id, :cmet_id, :realm, :version, :status, :status_date
  json.url cmet_version_url(cmet_version, format: :json)
end
