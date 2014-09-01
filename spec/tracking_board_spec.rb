require 'tracking_board'

describe TrackingBoard do
	let(:trackingboard) { TrackingBoard.new }
	let(:game) { Game.new }

	it "should have the same basic structure as the main board" do
		expect(trackingboard.count).to eq 100
	end

end