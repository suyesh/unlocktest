json.array!(@samsungs) do |samsung|
  json.extract! samsung, :id, :services, :imei, :response_email, :text_alert, :user_id
  json.url samsung_url(samsung, format: :json)
end
