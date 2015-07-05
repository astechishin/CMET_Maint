json.array!(@work_groups) do |work_group|
  json.extract! work_group, :id
  json.url work_group_url(work_group, format: :json)
end
