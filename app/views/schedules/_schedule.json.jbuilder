json.extract! schedule, :id, :speaker_id, :room_id, :topic, :slide_url, :video_url, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
