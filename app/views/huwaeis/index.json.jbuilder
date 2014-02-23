json.array!(@huwaeis) do |huwaei|
  json.extract! huwaei, :id, :services, :imei, :response_email, :text_alert, :user_id
  json.url huwaei_url(huwaei, format: :json)
end
