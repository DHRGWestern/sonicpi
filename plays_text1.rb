letters = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" =>22, "w" => 23, "x" => 24, "y" => 25, "z" => 26}
my_list = "digital humanities".chars

min_x = 1
max_x = 26

use_synth :piano

counter1 = -1
loop do #converts the text to numbers and adds to the ring
  counter1 = (inc counter1)
  new_number = letters[my_list[counter1]]
  print new_number
  if new_number!=nil
    my_note = (new_number - min_x) * 12 / (max_x - min_x) + 60
    play my_note
  end
  sleep 0.1
end



