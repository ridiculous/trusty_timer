json.array!(@timers) do |timer|
  json.extract! timer, :start_time, :stop_time, :person_id, :notes, :created_by, :updated_by
  json.url timer_url(timer, format: :json)
end
