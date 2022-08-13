require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Validate Category model' do
    before(:example) do
      @user = User.new(email: 'example@mail.com', password: '1234567')
      @category = Category.new(name: 'test',
                               icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/McDonald%27s_logo.svg/2560px-McDonald%27s_logo.svg.png',
                               user_id: @user.id)
      @user.save
    end

    before { @category.save }

    it 'category should be valid' do
      expect(@category).to_not be_valid
    end

    it 'category should have a name' do
      @category.name = nil
      expect(@category).to_not be_valid
    end

    it 'category has an icon' do
      @category.icon = nil
      expect(@category).to_not be_valid
    end
  end
end
