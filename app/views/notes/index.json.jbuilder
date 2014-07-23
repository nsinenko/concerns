json.array!(@notes) do |note|
  json.extract! note, :id, :project_id, :content, :date
  json.url note_url(note, format: :json)
end
