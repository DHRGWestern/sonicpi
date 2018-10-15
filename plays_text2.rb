#STUFF TO CHANGE RANDOMLY

my_list = "Paste your text in here".chars
use_synth :piano #can change this for funsies
key = :major #can change this for funsies

#PICK ONE OF THESE MAPPINGS BY COMMENTING THE OTHERS OUT
#letters = {"a" => :A, "b" => :B, "c" => :C, "d" => :D, "e" => :E, "f" => :F, "g" => :G, "h" => :As, "i" => :Bs, "j" => :Cs, "k" => :Ds, "l" => :Es, "m" => :Fs, "n" => :Gs, "o" => :Ab, "p" => :Bb, "q" => :Cb, "r" => :Db, "s" => :Eb, "t" => :Fb, "u" => :Gb, "v" =>:A2, "w" => :B2, "x" => :C2, "y" => :D2, "z" => :E2}
#letters = {"a" => :A, "b" => :B, "c" => :C, "d" => :D, "e" => :E, "f" => :F, "g" => :G, "h" => :A2, "i" => :B2, "j" => :C2, "k" => :D2, "l" => :E2, "m" => :F2, "n" => :G2, "o" => :A3, "p" => :B3, "q" => :C3, "r" => :D3, "s" => :E3, "t" => :F3, "u" => :G3, "v" =>:A4, "w" => :B4, "x" => :C4, "y" => :D4, "z" => :E4}
letters = {"a" => :A, "e" => :B, "i" => :C, "o" => :D, "u" => :E, "y" => :F, "b" => :G, "p" => :A2, "d" => :B2, "t" => :C2, "g" => :D2, "k" => :E2, "f" => :F2, "v" => :G2, "s" => :A3, "z" => :B3, "r" => :C3, "l" => :D3, "w" => :E3, "y" => :F3, "c" => :G3, "m" =>:A4, "n" => :B4, "x" => :C4, "h" => :D4, "j" => :E4}

use_random_seed 0
counter1 = -1
counter2 = 1.0 #omg Ruby will only expect a float if there's a decimal point, otherwise 5/10 = 0.
counter3 = 1.0 #word length counter

loop do
  counter1 = (inc counter1) #for advancing through word
  counter2 = (inc counter2) #for determining pause length based approx on word length of previous word
  letter = my_list[counter1]
  length = counter3/20.0
  print length
  
  new_note = letters[letter]
  if new_note!=nil
    #randomise whether we get a single note, a chord or an arpeggio
    random_number = rrand_i(0,2)
    if random_number== 0 # gets 0,1,2
      play_pattern_timed chord(new_note,  key), length
    elsif random_number==1
      play(chord new_note, key)
    else
      play new_note
    end
    
  end
  if new_note==nil
    print "nil"
    counter3 = counter2 #length of previous word
    counter2 = 1 # ie. we reached a word break or punctuation or something
  end
  
  
  sleep counter3/20.0
end



