json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :start_time, :user_id
  json.url appointment_url(appointment, format: :json)
end
