json.array!(@student_interests) do |student_interest|
  json.extract! student_interest, :firstName, :lastName, :school_id, :category_id
  json.url student_interest_url(student_interest, format: :json)
end
