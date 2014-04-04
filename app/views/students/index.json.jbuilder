json.array!(@students) do |student|
  json.extract! student, :id, :full_name, :age, :bio, :profession, :favorite_ice_cream_flavor
  json.url student_url(student, format: :json)
end
