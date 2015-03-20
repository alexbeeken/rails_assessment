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

describe "the edit post process" do
  it 'edits an existing post' do
    post = Post.create(:title => "How to Be a Dog", :body => "Sniff, Eat and Sleep")
    visit root_path
    click_on 'How to Be a Dog'
    click_on 'Edit'
    fill_in 'Title', :with => 'How to Be a Dog'
    fill_in 'Body', :with => 'Sniff, Eat and Sleep'
    click_on 'post'
    expect(page).to have_content "Successfully"
  end
end

describe "the delete post process" do
  it "deletes an existing post" do
    post = Post.create(:title => "How to Be a Dog", :body => "Sniff, Eat and Sleep")
    visit root_path
    click_on 'How to Be a Dog'
    click_on 'Delete'
    expect(page).to have_content "deleted"
  end
end

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
