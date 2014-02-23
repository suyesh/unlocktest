json.array!(@alcatels) do |alcatel|
  json.extract! alcatel, :id, :services, :imei, :response_email, :text_alert, :user_id
  json.url alcatel_url(alcatel, format: :json)
end
