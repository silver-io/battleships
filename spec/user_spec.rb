require 'user'

describe User do

	let(:user) { User.new }

	it 'should be able to create a board' do
		user.create_board
		expect(user.has_board?).to eq true
	end


end