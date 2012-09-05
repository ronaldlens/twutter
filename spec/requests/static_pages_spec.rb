require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Twutter'" do
      visit root_path
      page.should have_content('Twutter')
    end

    it "should have title 'Twutter'" do
      visit root_path
      page.should have_selector('title', :text => 'Twutter')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have the title 'Twutter | Help'" do
      visit help_path
      page.should have_selector('title', :text => 'Twutter | Help')
    end      
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit about_path
      page.should have_content('About')
    end

    it "should have the title 'Twutter | About'" do
      visit about_path
      page.should have_selector('title', :text => 'Twutter | About')
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text: "Twutter | Contact")  
    end
  end


end

