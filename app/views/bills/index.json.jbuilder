json.array!(@bills) do |bill|
  json.extract! bill, :id, :title, :body, :author
  json.url bill_url(bill, format: :json)
end
