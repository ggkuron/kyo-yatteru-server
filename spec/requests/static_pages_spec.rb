require 'spec_helper'

describe "StaticPages" do

  #let(:base_title){"Ruby on Rails Tutorial Sample App"}
=begin
  subject {page}


  shared_examples_for "all static pages" do
    it {should have_selector('h1', text: heading)}
    it {should have_selector('title', text: full_title(page_title))}
  end


  describe "Home page" do
    before{visit root_path}
    let(:heading){'Sample App'}
    let(:page_title){''}

    it_should_behave_like "all static pages"
    it{should_not have_selector 'title', text:'| Home'}

    describe "fore signed-in users"do
      let(:user){FactoryGirl.create(:user)}
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed"do
        user.feed.each do |item|
          page.should have_selector("li##{item.id}", text: item.content)
        end
      end

      describe "follower_following counts"do
        let(:other_user){FactoryGirl.create(:user)}
        before do
          other_user.follow!(user)
          visit root_path
        end
        it {should have_link "0 following", href: following_user_path(user)}
        it{should have_link "1 followers", href:followers_user_path(user)}
      end

    end
  end

  describe "Help page" do
    before{visit help_path}
    let(:heading){'Help'}
    let(:page_title){'Help'}
    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before{visit about_path}
    let(:heading){'About'}
    let(:page_title){'About'}
    it_should_behave_like "all static pages"
  end
  describe "Contact" do
    before{visit contact_path}
    let(:heading){'Contact'}
    let(:page_title){'Contact'}
    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    should have_selector 'title', text:full_title('About Us')
    click_link "Help"
    should have_selector 'title', text:full_title('Help')
    click_link "Contact"
    should have_selector 'title', text:full_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    should have_selector 'title', text:full_title('Sign up')
    click_link "sample app"
    should have_selector 'title', text:full_title('')
  end
=end
end