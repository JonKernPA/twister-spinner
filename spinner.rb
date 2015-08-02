# Tommy's Original
def spinner()
  puts __method__
  n1 = rand(3)
  n2 = rand(3)
  # NOTE: n2 should not be initialized at the top of the file
  # (over 12 lines of code "away" from it's first use). Better 
  # to keep code in close proximity to where it is used.
  
  if n1 == 0
    n1 = "Red" # This overwrites the variable!!
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
    n2 = "Left Hand"  # This overwrites the variable!!
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
  puts "\tPlace your #{n2} on #{n1}." # What does n2 and n1 mean?
end

# ---------------------------------------------
# Improved 
#  * variable names
#  * No longer overwriting variables
#  * Varables are used close to where declared
#  * Made if-elsif syntax more readable

def spinner_take2
  puts __method__
  color_index = rand(3)
  if color_index == 0
    color = "Red"
  elsif color_index == 1
    color = "Blue"
  elsif color_index == 2
    color = "Yellow"
  elsif color_index == 3
    color = "Green"
  end

  body_index = rand(3)
  if body_index == 0
    body_part = "Left Hand"
  elsif body_index == 1
    body_part = "Right Hand"
  elsif body_index == 2
    body_part = "Left Foot"
  elsif body_index == 3
    body_part = "Right Foot"
  end
  puts "\tPlace your #{body_part} on #{color}."
end

# ---------------------------------------------
# Improved 
#  * if-elsif changed to case
#  * eliminated need for index variables

def spinner_take3
  puts __method__
  color = case rand(3)
  when 0
    color = "Red"
  when 1
    color = "Blue"
  when 2
    color = "Yellow"
  when 3
    color = "Green"
  end

  body_part = case rand(3)
  when 0
    body_part = "Left Hand"
  when 1
    body_part = "Right Hand"
  when 2
    body_part = "Left Foot"
  when 3
    body_part = "Right Foot"
  end
  puts "\tPlace your #{body_part} on #{color}."
end

# ---------------------------------------------
# The rules:
# The referee spins the spinner, then calls out the body part and the color 
# that the arrow points to. For example, the referee may call out: 
#                  "Right hand, red." 
# All players, at the same time, must then try to 
# follow the referee's directions as explained below. 

def body_part
  ['Left Hand', 'Right Hand', 'Left Foot', 'Right Foot'].sample
end

def color
  ['Red', 'Blue', 'Yellow', 'Green'].sample
end

def spin
  puts __method__
  puts "\tYour #{body_part} on #{color}"
end

# ---------------------------------------------
# Run each version

spinner
spinner_take2
spinner_take3
spin
