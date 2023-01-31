# frozen_string_literal: true

def find_word_in_board(board, words)
  result = []

  words.each do |word|
    result << word if exist?(board, word)
  end

  result
end

def exist?(board, word)
  visited = (1..board.length).to_a.fill(false)

  visited.each_with_index do |_, index|
    visited[index] = (0..board[0].length).to_a
  end

  board.each_with_index do |value, i|
    value.each_with_index do |_, j|
      return true if word_exist?(board, visited, word, 0, i, j)
    end
  end

  false
end

def in_board?(board, row, col)
  row.positive? && row < board.length && col.positive? && col < board.first
end

DIR = [[-1, 0], [0, 1], [1, 0], [0, -1]].freeze

def word_exist?(board, visited, word, index, row, col)
  return board[row][col] == word[index] if index == word.length - 1

  return unless board[row][col] == word[index]

  visited[row][col] = true
  4.times do |i|
    num_row = row + DIR[i][0]
    num_col = col + DIR[i][1]
    if in_board?(board, num_row, num_col) &&
       !visited[number_row][number_col] &&
       word_exist?(board, visited, word, index + 1, number_row, number_col)
      return true
    end
  end
end
