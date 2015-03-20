require 'rails_helper'

describe "the add a post process" do
  it 'creates a post' do
    visit "/posts"
    click_on 'Create New Post'
      fill_in 'Title', :with => 'How to Be a Dog'
      fill_in 'Body', :with => 'Sniff, Eat and Sleep' 
    click_on 'post'
    expect(page).to have_content "Successfully"
  end
end
