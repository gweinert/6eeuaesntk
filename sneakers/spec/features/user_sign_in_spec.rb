require 'rails_helper'

feature 'Authentication' do
  let(:user){ build(:user) }
  before do
    visit login_path
  end

  context 'with proper credentials' do
    before do
      # sign_in(user)
      fill_in "user_username", with: "foo"
      fill_in "user_email", with: "foo@"
      click_button "Create User"
    end

    scenario "successfully goes to user path after sign up" do
      expect(page).to have_content("#{user.username}'s shoe closet")
    end
  end
end