require 'rails_helper'

RSpec.describe Operation, type: :model do
  describe 'Test the Operation model' do
    subject do
      @user = User.new(email: 'example@mail.com', password: '1234567')
      @category = Category.new(name: 'test',
                               icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/McDonald%27s_logo.svg/2560px-McDonald%27s_logo.svg.png',
                               user_id: @user.id)
      @operation = Operation.new(name: 'burgers', amount: 25, user_id: @user.id, category_id: @category.id)
    end

    before { subject.save }

    it 'subject should be valid' do
      expect(subject).to_not be_valid
    end

    it 'subject name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'subject amount should be greater than or equal to 0' do
      subject.amount = -200
      expect(subject).to_not be_valid
    end

    it 'categroy should be present' do
      subject.category_id = nil
      expect(subject).to_not be_valid
    end
  end
end
