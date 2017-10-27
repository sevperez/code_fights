# Code Fights - Arcade - Problem 46 - Elections Winners

def electionsWinners(votes, k)
  if k > 0
    num_potential_winners = 0
    current_leader = votes.max
    
    votes.each do |v|
      if v + k > current_leader
        num_potential_winners += 1
      end
    end
    
    num_potential_winners
  else
    max_votes = votes.max
    
    votes.count(max_votes) == 1 ? 1 : 0
  end
end

p electionsWinners([2, 3, 5, 2], 3)     # => 2
p electionsWinners([5, 1, 3, 4, 1], 0)  # => 1
p electionsWinners([1, 3, 3, 1, 1], 0)  # => 0
p electionsWinners([1, 1, 1, 1], 1)     # => 4
