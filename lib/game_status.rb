
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2,["Top Row"]], #Top row
  [3,4,5,["Middle Row"]], #Middle row
  [6,7,8,["Bottow Row"]], #Bottom row
  [0,3,6,["Left Column"]], #Left column
  [1,4,7,["Middle Column"]], #Middle column
  [2,5,8,["Right Column"]], #Right column
  [0,4,8,["Left Start Diagonal"]], #Left start diagonal
  [2,4,6,["Right Start Diagonal"]]  #Right start diagonal
]

def won?(board)
WIN_COMBINATIONS.each do |win_set| #1st array iterator
  win_set.each do |win_type|      #2nd array iterator
  
if board == win_set
  puts "#{win_type} win!"
  return true
else
  return false
end
end
  
 #if win_set = WIN_COMBINATIONS[0]
   # puts "Top row win!"
  #elsif win_set = WIN_COMBINATIONS[1]
    #puts "Middle row win!"
    #elsif win_set = WIN_COMBINATIONS[2]
    #puts "Bottom row win!"
    #elsif win_set = WIN_COMBINATIONS[3]
    #puts "Left column win!"
    #elsif win_set = WIN_COMBINATIONS[4]
    #puts "Middle column win!"
    #elsif win_set = WIN_COMBINATIONS[5]
    #puts "Right column win!"
    #elsif win_set = WIN_COMBINATIONS[6]
    #puts "Left start diagonal win!"
    #elsif win_set = WIN_COMBINATIONS[7]
   #puts "Right start diagonal win!"
  #return true
   #else
   #puts "No victor has emerged."
  #return false
 #end
#end
#end

def full?(array)
 if !(array.any?{|i| i == " "})
   puts "The Board has been filled."
   return true
 else 
   puts "Contine Game(full?)"
   return false
 end 
end 

def draw?(array2)
  if full?(array2) && !(won?(array2))
    puts "DRAW GAME"
    return true 
  else 
    puts "Contine game(draw?)"
    return false 
  end 
end 

def over?(array3)
  if full?(array3) || !(won?(array3)) || draw?(array3)
    puts "GAME OVER"
    return true
  else 
    puts "Continue game(over?)."
    return false 
  end 
end  


def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end