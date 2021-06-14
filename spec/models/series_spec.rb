require 'rails_helper'

RSpec.describe Series, type: :model do
  
	it 'should find record with given name' do
	  expect( Series.find_by(name: 'Suits') ).to_not raise_error
	end

	it 'should find records' do
	  expect( Series.all ).to_not be_empty
	end

	it "should have many actors" do
		t = Series.reflect_on_association(:actors)
		expect(t.macro).to eq(:has_many)
	end

	it "should have many shooting locations" do
		t = Series.reflect_on_association(:shooting_locations)
		expect(t.macro).to eq(:has_many)
	end

	it "should have many reviews" do
		t = Series.reflect_on_association(:reviews)
		expect(t.macro).to eq(:has_many)
	end

	context 'before series creation' do
	    it 'cannot have reviews' do
	      expect { Series.create.reviews.create! }.to raise_error(ActiveRecord::RecordInvalid)
	    end
	end

end