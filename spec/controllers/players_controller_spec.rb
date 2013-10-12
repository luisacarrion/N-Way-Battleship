require 'spec_helper'

describe PlayersController do

  before do
    @player1 = Player.create(name: "Grace", turn: false)      # created with id 1
    @player2 = Player.create(name: "Ibrahim", turn: false)    # created with id 2
    @player3 = Player.create(name: "Owen", turn: false)       # created with id 3
    @player4 = Player.create(name: "Srinath", turn: false)    # created with id 4

    @players = [@player4, @player3, @player1, @player2]

  end

  it "passes the token to the player with the first ID if no player has the token" do

    PlayersController.pass_turn(@players)
    @player1.turn.should be_true

  end



end