json.extract! agendamento, :id, :titulo, :data, :created_at, :updated_at
json.url agendamento_url(agendamento, format: :json)
