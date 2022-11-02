require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  describe 'GET /cars' do
    before do
      get '/cars'
      @body = response.body
    end

    it 'should contain the 4 default cars' do
      expect(@body).to include('"id":1')
      expect(@body).to include('"id":2')
      expect(@body).to include('"id":3')
      expect(@body).to include('"id":4')
    end

    it 'should display the model' do
      expect(@body).to include('"model":')
    end

    it 'should display the color' do
      expect(@body).to include('"color":')
    end

    it 'should display the image' do
      expect(@body).to include('"image":')
    end

    it 'should display the description' do
      expect(@body).to include('"description":')
    end

    it 'should display the range' do
      expect(@body).to include('"range":')
    end

    it 'should display the motor_type' do
      expect(@body).to include('"motor_type":')
    end

    it 'should display the acceleration_time' do
      expect(@body).to include('"acceleration_time":')
    end

    it 'should display the booking_price' do
      expect(@body).to include('"booking_price":')
    end

    it 'should display the booking_duration' do
      expect(@body).to include('"booking_duration":')
    end
  end
end
