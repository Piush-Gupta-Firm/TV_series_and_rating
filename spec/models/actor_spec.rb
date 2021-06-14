require 'rails_helper'

RSpec.describe Actor, type: :model do

  it "should have many series" do
		t = Actor.reflect_on_association(:series)
		expect(t.macro).to eq(:has_many)
	end

	it 'should find record with given name' do
	  expect( Actor.find_by(name: 'Meghan ') ).to_not raise_error
	end

	it 'should find records' do
	  expect( Actor.all ).to_not be_empty
	end

end
