require 'rails_helper'

RSpec.describe ShootingLocation, type: :model do

  it "should have many series" do
		t = ShootingLocation.reflect_on_association(:series)
		expect(t.macro).to eq(:has_many)
	end

	it 'should find record with given name' do
	  expect( ShootingLocation.find_by(city: 'New York') ).to_not raise_error
	end

	it 'should find records' do
	  expect( ShootingLocation.all ).to_not be_empty
	end

end
