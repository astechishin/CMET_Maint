json.array!(@ballots) do |ballot|
  json.extract! ballot, :id
  json.url ballot_url(ballot, format: :json)
end
