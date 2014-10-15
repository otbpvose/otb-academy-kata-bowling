require 'bowling'

RSpec.describe "A game of bowling" do
  let(:game) { BowlingGame.new }

  it "calculates the correct score for a simple ten frame game" do
    expect(game.score([3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3]).to eq( 60 )
    expect(game.score([3, 6], [2, 1], [0, 0], [5, 3], [1, 1], [9, 0], [1, 8], [0, 4], [4, 4], [2, 7]).to eq( 61 )
  end

  it "calculates a game with a spare in it" do
    expect(game.score([3, 3], [3, 3], [3, 3], [3, 7], [6, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3]).to eq( 73 )
  end

  it "calculates a game with a strike in it" do
    expect(game.score([3, 3], [3, 3], [3, 3], [10], [6, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3]).to eq( 76 )
    expect(game.score([3, 3], [3, 3], [3, 3], [10], [10], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3]).to eq( 87 )
  end

  it "calculates a game with a spare in the last frame" do
    expect(game.score([3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 7, 6]).to eq( 76 )
    expect(game.score([3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 7, 10]).to eq( 84 )
  end

  it "calculates a game with a strike in the last frame" do
    expect(game.score([3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [10, 3, 6]).to eq( 82 )
    expect(game.score([3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [10, 10, 6]).to eq( 96 )
    expect(game.score([3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [10, 10, 10]).to eq( 114 )
  end

end
