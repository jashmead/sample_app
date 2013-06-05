require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end

	describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
			before { click_button submit }
	
   		it { should have_title('Sign up') }
			it { should have_content('error') }
			
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

		# should really verify that all bits of the signin got in, currently  have a problem with email's not being updated
    describe "with valid information" do

			# should use FactoryGirl to create the test user, once we understand how to use that

      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

			# should verify that the email & so logged to the database are correct
			describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }
        # let(:user) { User.find_by(name: 'Example User') }

        it { should have_title(user.name) }
        it { should have_selector('div.alert.alert-success', text: 'Welcome') }
      end

    end
  end

end
