#Cats in the Hats


cats = Array.new(100, "Hat")

100.times do |x|
cats.each_with_index do |i, v|
  if (v + 1) % (x.to_i + 1) == 0
    if i == "Hat"
      cats[v] = "NoHat"
    elsif i == "NoHat"
      cats[v] = "Hat"
      end
    end
  end
end

 puts cats
