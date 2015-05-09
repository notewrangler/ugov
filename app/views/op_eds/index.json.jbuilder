json.array!(@op_eds) do |op_ed|
  json.extract! op_ed, :id, :title, :content, :author
  json.url op_ed_url(op_ed, format: :json)
end
