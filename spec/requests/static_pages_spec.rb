require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Twutter'" do
      visit '/static_pages/home'
      page.should have_content('Twutter')
    end

    it "should have title 'Twutter | Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Twutter | Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the title 'Twutter | Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Twutter | Help')
    end      
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the title 'Twutter | About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'Twutter | About')
    end
  end
  
end
