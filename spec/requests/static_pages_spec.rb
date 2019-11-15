require 'rails_helper'


  describe "Static pages" do

    subject {page}




    describe "Home page" do

      before {visit root_path}

      it { expect(page).to have_selector('h1', text: 'Sample App') }
      it { expect(page).to have_title('Home') }
      it { expect(page).to_not have_title ('| Home') }
      end
    describe "Help page" do
      before {visit help_path}

      it {expect(page).to have_selector('h1', :text => 'Help')}
      it {expect(page).to have_title('Help')}
    end

    describe "About page" do
      before {visit about_path}
      it {expect(page).to have_selector('h1', :text => 'About Us')}
      it {expect(page).to have_title('About Us')}
    end
    describe "Contact page" do
      before {visit contact_path}
      it {expect(page).to have_selector('h1', :text => 'Contact')}
      it {expect(page).to have_title('Contact')}
    end
  end
