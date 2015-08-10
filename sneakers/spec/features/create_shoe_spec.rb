require 'rails_helper'

feature 'Create shoe' do
  let(:user){ build(:user) }
  before do
    visit login_path
  end

  context 'sign in' do
    before do
      # sign_in(user)
      fill_in "user_username", with: "foo123"
      fill_in "user_email", with: "foo@123"
      click_button "Create User"
    end

    scenario "add new pair of shoes" do
      click_link "Add a pair of shoes!"
      fill_in "shoe_brand", with: "nike shoes"
      fill_in "shoe_model", with: "the prods"
      expect{ click_button "Create Shoe" }.to change(Shoe, :count).by(1)
      expect(page).to have_content("nike shoes")
    end
  end
end