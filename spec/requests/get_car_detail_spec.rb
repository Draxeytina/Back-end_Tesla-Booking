require 'rails_helper'

RSpec.describe 'Car details', type: :request do
  describe 'GET /cars/:id' do
    before do
      get '/cars/1'
      @body = response.body
    end

    it 'should display only one car information' do
      expect(@body).not_to include('"id":2')
      expect(@body).not_to include('"id":3')
      expect(@body).not_to include('"id":4')
    end

    describe 'car properties' do
      it 'should display the car model' do
        expect(@body).to include('"model":"S Plaid')
      end

      it 'should display the car color' do
        expect(@body).to include('"color":"red')
      end

      it 'should display the car image' do
        expect(@body).to include('"image":"https://i.imgur.com/nQs2mt6.png')
      end

      it 'should display the car description' do
        expect(@body).to include(
          '"description":"Model S Plaid has the quickest acceleration of any vehicle in production.'
        )
      end

      it 'should display the car range' do
        expect(@body).to include('"range":396')
      end

      it 'should display the car motor_type' do
        expect(@body).to include('"motor_type":"AWD Tri-Motor')
      end

      it 'should display the car acceleration_time' do
        expect(@body).to include('"acceleration_time":"1.99')
      end

      it 'should display the car booking_price' do
        expect(@body).to include('"booking_price":"400.0')
      end

      it 'should display the car booking_duration' do
        expect(@body).to include('"booking_duration":12')
      end
    end
  end
end
