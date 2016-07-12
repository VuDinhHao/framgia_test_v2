5.times do |n|
  Subject.create! name: "Ruby" + (n+1).to_s,
    chatwork_room_id: "123#{n+1}",
    number_of_question: 5,
    duration: 5
end

5.times do |n|
  Exam.create! score: 4,
    status: 1,
    time: 20,
    user_id: 1,
    subject_id: n + 1
end

10.times do |n|
  Question.create! content: "Content" + (n+1).to_s,
    question_type: 1,
    state: 1,
    active: true,
    subject_id: n+1,
    user_id: 1
end

5.times do |n|
  Result.create! correct: true,
    question_id: n+1,
    exam_id: n+1
end
5.times do |n|
  Option.create! content: "content_option" + (n+1).to_s,
    correct: true,
    question_id: n+1
end

10.times do |n|
  Answer.create! content: "content answer" + (n+1).to_s
end

