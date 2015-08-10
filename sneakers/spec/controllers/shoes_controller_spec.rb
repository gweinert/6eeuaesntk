require 'rails_helper'

RSpec.describe ShoesController, :type => :controller do

  describe "create shoes" do
    let(:shoe){ create(:shoe)}
    it 'should redirect to shoes show' do 
      post :create, :shoe => attributes_for(:shoe, :user_id =>shoe.user_id)

      expect(response).to redirect_to user_path(shoe.user_id)
    end
  end
end
