puts "\n"

population = 0
butterflies = [
  {:species => 'Punctband',              :expected => 18 },
  {:species => 'Eichenfalter',           :expected => 10 },
  {:species => 'Streupunct',             :expected => 54 },
  {:species => 'Ducatenfalter',          :expected => 100 },
  {:species => 'Erdfalter',              :expected => 48 },
  {:species => 'Malven falter',          :expected => 72 },
  {:species => 'Strichfalter',           :expected => 18 },
  {:species => 'Kohlneifsling',          :expected => 90 },
  {:species => 'Aurora',                 :expected => 30 },
  {:species => 'Citronenfalter',         :expected => 81 },
  {:species => 'Papilio Plexippus',      :expected => 76 },
  {:species => 'Papilio Dido',           :expected => 35 },
  {:species => 'Apollo',                 :expected => 74 },
  {:species => 'Osterlueeifalter',       :expected => 33 },
  {:species => 'Glasfchmetterling',      :expected => 75 },
  {:species => 'Schnalbenschwanz (P. machaon)',:expected => 90 },
  {:species => 'Ulysses',                :expected => 53 },
  {:species => 'Achilles',               :expected => 67 },
  {:species => 'Paris',                  :expected => 83 },
  {:species => 'Anchises',               :expected => 59 },
  {:species => 'Priamus',                :expected => 62 },
  {:species => 'Sandauge (P. jurtina)',  :expected => 84 },
  {:species => 'Brettspiel (P.galatea)', :expected => 93 },
  {:species => 'Schillerfalter (P. Jris)',:expected => 63 },
  {:species => 'Eisfalter( P. populi)',  :expected => 74 },
  {:species => 'Sippschaft',             :expected => 80 },
  {:species => 'Damenbrett (P.cinxia)',  :expected => 55 },
  {:species => 'Kaisermantel (P. paphia)',:expected => 72 },
  {:species => 'Trauermantel (P. antiopa)',:expected => 85 },
  {:species => 'Admiral (P. alalanta)',  :expected => 94 },
{:species => 'Das weisse C. (C. album)', :expected => 47 }
]

butterflies.each do |a|
  a[:found] = a[:expected]
end

expected = butterflies.collect{|a| a[:expected]}.inject(0, :+)
found    = butterflies.collect{|a| a[:found]   }.inject(0, :+)

puts "Population                                      #{expected}"
puts "-"*60
puts "    Species".ljust(30)+"Expected".rjust(10)+"Found".rjust(10)+"Ver".rjust(10)
puts "-"*60

butterflies.each do |a|
  puts a[:species].ljust(30)+a[:expected].to_s.rjust(10)+a[:found].to_s.rjust(10)+a[:version].to_s.rjust(10)
end

puts "-"*60
puts "Population"+" "*20+expected.to_s.rjust(10)+found.to_s.rjust(10)
puts "\n"
