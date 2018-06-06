# elsif and case

fruit = "orange"
color = "orange" if fruit == "orange"
color = "green" if fruit == "apple"
color = "yellow" if fruit == "banana"


fruit = "orange"
if fruit == "orange"
  color = "orange"
elsif fruit == "applie"
  color = "green"
elsif fruit == "banana"
  color = "yellow"
else
  color = "unknown"
end


fruit = "orange"
case fruit
when "orange"
  color = "orange"
when "apple"
  color = "green"
when "banana"
  color = "yellow"
else
  color = "unknown"
end


fruit = "orange"
color = case fruit
        when "orange"
          "orange"
        when "apple"
          "green"
        when "banana"
          "yellow"
        else
          "unknown"
        end
