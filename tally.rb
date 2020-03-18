# Butterfly Pavilion | Tally
puts "\n"

population = 0
butterflies = [
  {:species => 'Punctband',              :expected => 18, :version => 1.5 },
  {:species => 'Eichenfalter',           :expected => 10, :version => 1.5 },
  {:species => 'Streupunct',             :expected => 54, :version => 1.5 },
  {:species => 'Ducatenfalter',          :expected => 54, :version => 1.5 },
  {:species => 'Erdfalter',              :expected => 54, :version => 1.5 },
  {:species => 'Malven falter',          :expected => 54, :version => 1.5 },
  {:species => 'Strichfalter',           :expected => 54, :version => 1.5 },
  {:species => 'Kohlneifsling',          :expected => 54, :version => 1.5 },
  {:species => 'Aurora',                 :expected => 54, :version => 1.5 },
  {:species => 'Citronenfalter',         :expected => 54, :version => 1.5 },
  {:species => 'Papilio Plexippus',      :expected => 54, :version => 1.5 },
  {:species => 'Papilio Dido',           :expected => 54, :version => 1.5 },
  {:species => 'Apollo',                 :expected => 54, :version => 1.5 },
  {:species => 'Osterlueeifalter',       :expected => 54, :version => 1.5 },
  {:species => 'Glasfchmetterling',      :expected => 54, :version => 1.5 },
  {:species => 'Schnalbenschwanz (P. machaon)',:expected => 54, :version => 1.5 },
  {:species => 'Ulysses',                :expected => 54, :version => 1.5 },
  {:species => 'Achilles',               :expected => 54, :version => 1.5 },
  {:species => 'Paris',                  :expected => 54, :version => 1.5 },
  {:species => 'Anchises',               :expected => 54, :version => 1.5 },
  {:species => 'Priamus',                :expected => 54, :version => 1.5 },
  {:species => 'Sandauge (P. jurtina)',  :expected => 54, :version => 1.5 },
  {:species => 'Brettspiel (P.galatea)', :expected => 54, :version => 1.5 },
  {:species => 'Schillerfalter (P. Jris)',:expected => 54, :version => 1.5 },
  {:species => 'Eisfalter( P. populi)',  :expected => 54, :version => 1.5 },
  {:species => 'Sippschaft',             :expected => 54, :version => 1.5 },
  {:species => 'Damenbrett (P.cinxia)',  :expected => 54, :version => 1.5 },
  {:species => 'Kaisermantel (P. paphia)',:expected => 54, :version => 1.5 },
  {:species => 'Trauermantel (P. antiopa)',:expected => 54, :version => 1.5 },
  {:species => 'Admiral (P. alalanta)',  :expected => 54, :version => 1.5 },
{:species => 'Das weisse C. (C. album)', :expected => 54, :version => 1.5 }
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
