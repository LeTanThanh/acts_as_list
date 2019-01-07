10.times do
  to_do_list = ToDoList.create name: FFaker::Lorem.sentence
  10.times do |i|
    to_do_list.to_do_items.create name: FFaker::Lorem.sentence, position: i + 1
  end
end
