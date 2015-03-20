require 'rails_helper'

describe "the add a post comment process" do
  it 'creates a comment for a post' do
    post = Post.create({:title => "How to Be a Dog", :body => "Sniff, Sleep and Slumber"})
    visit "/posts"
    click_on 'How to Be a Dog'
    click_on 'Comment'
    fill_in 'Name', :with => 'Cat'
    fill_in 'Body', :with => 'You disgust me'
    click_on 'comment'
    expect(page).to have_content "Successfully"
  end
end
