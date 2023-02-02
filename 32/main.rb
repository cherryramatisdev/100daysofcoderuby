# frozen_string_literal: true

def player_rank(ranked_scores, player_scores)
  final_ranking = []

  player_scores.each do |score|
    score_aux = [].concat(ranked_scores.dup, [score]).sort { |a, b| b <=> a } | []
    final_ranking << score_aux.index(score) + 1
  end

  final_ranking
end

if __FILE__ == $0
  print 'Inform the leaderboard scores as an integer list(separated by space): '
  ranked_scores = gets.chomp.split.map(&:to_i)

  print 'Inform the scores of the games of the player as an integer list(separated by space): '
  player_scores = gets.chomp.split.map(&:to_i)

  puts "The player rank after each new score is #{player_rank(ranked_scores, player_scores)}"
end
