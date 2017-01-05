golf_scores = {}
golf_scores["Hole_1"] = {"Par_5" => 0}
golf_scores["Hole_2"] = {"Par_4" => 0}
golf_scores["Hole_3"] = {"Par_3" => 0}
golf_scores["Hole_4"] = {"Par_4" => 0}
golf_scores["Hole_5"] = {"Par_4" => 0}
golf_scores["Hole_6"] = {"Par_3" => 0}
golf_scores["Hole_7"] = {"Par_4" => 0}
golf_scores["Hole_8"] = {"Par_5" => 0}
golf_scores["Hole_9"] = {"Par_4" => 0}
golf_scores["Hole_10"] = {"Par_5" => 0}
golf_scores["Hole_11"] = {"Par_4" => 0}
golf_scores["Hole_12"] = {"Par_4" => 0}
golf_scores["Hole_13"] = {"Par_3" => 0}
golf_scores["Hole_14"] = {"Par_4" => 0}
golf_scores["Hole_15"] = {"Par_4" => 0}
golf_scores["Hole_16"] = {"Par_4" => 0}
golf_scores["Hole_17"] = {"Par_3" => 0}
golf_scores["Hole_18"] = {"Par_5" => 0}

total_stroke = 0
total_par = 0
puts "Enter your scors: "
golf_scores.each do |holes, values|
  print holes.gsub(/[_]/," ") + " ("
  par = values.keys.to_s.gsub(/[\"\[\]]/,"").gsub(/[_]/," ")
  print par + "): "

  score = gets.chomp
  # Count stroke
  total_stroke += score.to_i
  # Count par
  total_par += par.gsub("Par","").to_i

  values.each do |par, v|
    golf_scores[holes][par] = score.to_i
  end
end

puts "Total Strokes: #{total_stroke}"
puts "Total Par: #{total_par}"

par_value = total_stroke - total_par
term = ""
if par_value > 0
  term = "over"
else
  term = "under"
  par_value = par_value * -1
end

puts "You were #{par_value} #{term} par."
# puts golf_scores["Hole_18"]["Par_5"]
