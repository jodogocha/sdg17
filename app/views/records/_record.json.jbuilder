json.extract! record, :id, :fecha, :num_expediente, :person_id, :clasification_id, :state_id, :dependency_id, :observacion, :descripcion, :created_at, :updated_at
json.url record_url(record, format: :json)
