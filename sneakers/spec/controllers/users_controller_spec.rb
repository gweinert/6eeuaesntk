require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe "GET #show" do
    let(:user){ create(:user) }
    before :each do
      session[:user_id] = user.id
    end

    it 'should set the right instance variable' do
      get :show, :id => user.id
      expect(assigns(:user)).to eq(user)
    end
  end

end
