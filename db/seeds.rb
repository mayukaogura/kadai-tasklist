(1..100).each do |number|
  Task.create(content: 'test task' + number.to_s, status: 'status' + number.to_s)
end