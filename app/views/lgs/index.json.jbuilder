json.array!(@lgs) do |lg|
  json.extract! lg, :id, :services, :imei, :response_email, :text_alert, :user_id
  json.url lg_url(lg, format: :json)
end
