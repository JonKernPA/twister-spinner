def spinner()
  n1 = rand(3)
  n2 = rand(3)
  if n1 == 0
    n1 = "Red"
  elsif
    n1 == 1
    n1 = "Blue"
  elsif
    n1 == 2
    n1 = "Yellow"
  elsif
    n1 == 3
    n1 = "Green"
  end

  if n2 == 0
    n2 = "Left Hand"
  elsif
    n2 == 1
    n2 = "Right Hand"
  elsif
    n2 == 2
    n2 = "Left Foot"
  elsif
    n2 == 3
    n2 = "Right Foot"
  end
  puts "Place your #{n2} on #{n1}."
end
print spinner()
