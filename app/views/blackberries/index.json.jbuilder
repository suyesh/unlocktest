json.array!(@blackberries) do |blackberry|
  json.extract! blackberry, :id, :services, :imei, :response_email, :text_alert, :user_id
  json.url blackberry_url(blackberry, format: :json)
end
