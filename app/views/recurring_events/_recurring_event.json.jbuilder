events = recurring_event.events(params[:start], params[:end])
json.array! events do |event|
  json.id "recurring_#{recurring_event.id}"
  json.title recurring_event.title
  json.start event.strftime('%Y-%m-%d')
  json.end (event + 1.day).strftime('%Y-%m-%d')

  json.color recurring_event.color unless recurring_event.color.blank?
  json.allDay true

  json.update_url recurring_event_path(recurring_event, method: :patch)
  json.edit_url edit_recurring_event_path(recurring_event)
end