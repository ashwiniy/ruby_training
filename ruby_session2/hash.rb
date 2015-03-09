h = { "a" => 100, "b" => 200 }
puts h["a"] = 9
puts h["c"] = 4
puts h   #=> {"a"=>9, "b"=>200, "c"=>4}
puts h.store("d", 42) #=> 42
puts h   #=> {"a"=>9, "b"=>200, "c"=>4, "d"=>42}
a = "a"
b = "b".freeze
h = { a => 100, b => 200 }
puts h.key(100).equal? a #=> false
puts h.key(200).equal? b #=> true

