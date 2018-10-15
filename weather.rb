my_ring = (ring 28.5,27.9,26.3,23.8,20.6,17.8,17.5,19.1,21.7,24,25.5,27.5)
min_x = 13
max_x = 25

counter = -1
loop do
  use_synth :piano
  counter = (inc counter)
  my_note = (my_ring[counter] - min_x) * 12 / (max_x - min_x) + 60
  play my_note
  sleep 0.1
end
