require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validation for User model' do
    before(:example) do
      @user = User.new(name: 'furkan', email: 'example@mail.com', password: '1234567')
    end

    before { @user.save }

    it 'name must not be blank' do
      @user.name = nil
      expect(@user).to_not be_valid
    end

    it 'email must not be blank' do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it 'password must not be blank' do
      @user.password = '1234567'
      expect(@user).to be_valid
    end
  end
end