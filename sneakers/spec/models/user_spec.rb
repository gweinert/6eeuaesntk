require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "attributes" do
    let(:user){ build(:user) }

    it 'doesnt save if username too short' do
      user.username = "123"
      expect(user).to_not be_valid
    end

    it 'is valid if username correct length' do
      user.username = "123456"
      expect(user).to be_valid
    end
  end
end
