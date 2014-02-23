json.array!(@iphones) do |iphone|
  json.extract! iphone, :id, :services, :imei, :response_email, :text_alert, :user_id
  json.url iphone_url(iphone, format: :json)
end
