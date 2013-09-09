json.array!(@questions) do |question|
  json.extract! question, :body
  json.url question_url(question, format: :json)
end
