require 'rails_helper'

RSpec.describe "Series", type: :request do

	it 'should load all Series successfully' do
	  get "/series"
	  expect(response).to be_successful
	end

	it 'should load all series for a partucular actor if params actor is passed' do
	  get '/series?actor=Angela'
	  expect(response).to be_successful
	  expect(response.body.size).to be_eql 1
	end

end
