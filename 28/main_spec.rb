# frozen_string_literal: true

require_relative 'main'

describe 'Find words in board' do
  it 'should validate two words found on board' do
    board = [
      %w[o a a n],
      %w[e t a e],
      %w[i h k r],
      %w[i f l v]
    ]
    words = %w[oath pea eat rain]

    expect(find_word_in_board(board, words)).to be %w[eat oath]
  end
end
