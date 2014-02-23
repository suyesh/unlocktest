json.array!(@htcs) do |htc|
  json.extract! htc, :id, :services, :imei, :response_email, :text_alert, :user_id
  json.url htc_url(htc, format: :json)
end
