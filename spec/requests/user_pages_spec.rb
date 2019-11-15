require 'rails_helper'

RSpec.describe "User Pages", type: :request do
  subject { page }
  describe "signup page" do
    before {visit signup_path}

    it {expect(page).to have_selector('h1', :text => 'Sign up')}
    it {expect(page).to have_title('Sign up')}
  end
end
