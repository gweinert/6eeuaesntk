require 'rails_helper'

RSpec.describe Shoe, :type => :model do

  describe "attributes" do
    let(:shoe){ build(:shoe) }

    it 'should not be valid with missing attributes' do
      shoe.brand = nil
      expect(shoe).to_not be_valid
    end

    it 'should not be valid with missing attributes' do
      shoe.year = nil
      expect(shoe).to_not be_valid
    end
  end
end
