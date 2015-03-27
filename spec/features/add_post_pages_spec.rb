# require 'rails_helper'
#
# describe "the add a post process" do
#   it 'creates a post' do
#     login_new
#     visit "/posts"
#     click_on 'Create New Post'
#     fill_in 'Title', :with => 'How to Be a Dog'
#     fill_in 'Body', :with => 'Sniff, Eat and Sleep'
#     click_on 'post'
#     expect(page).to have_content "Successfully"
#   end
# end
#
# describe "the edit post process" do
#   it 'edits an existing post' do
#     login_new
#     post = Post.create(:title => "How to Be a Dog", :body => "Sniff, Eat and Sleep")
#     visit root_path
#     click_on 'How to Be a Dog'
#     click_on 'Edit'
#     fill_in 'Title', :with => 'How to Be a Dog'
#     fill_in 'Body', :with => 'Sniff, Eat and Sleep'
#     click_on 'post'
#     expect(page).to have_content "Successfully"
#   end
# end
#
# describe "the delete post process" do
#   it "deletes an existing post" do
#     login_new
#     post = Post.create(:title => "How to Be a Dog", :body => "Sniff, Eat and Sleep")
#     visit root_path
#     click_on 'How to Be a Dog'
#     click_on 'Delete'
#     expect(page).to have_content "deleted"
#   end
# end
#
# describe "the add a post comment process" do
#   it 'creates a comment for a post' do
#     login_new
#     post = Post.create({:title => "How to Be a Dog", :body => "Sniff, Sleep and Slumber"})
#     visit "/posts"
#     click_on 'How to Be a Dog'
#     click_on 'Comment'
#     fill_in 'Name', :with => 'Cat'
#     fill_in 'Body', :with => 'You disgust me'
#     click_on 'comment'
#     expect(page).to have_content "Successfully"
#   end
# end
#
# describe "the edit a post comment process" do
#   it 'edits a comment for a post' do
#     login_new
#     post = Post.create({:title => "How to Be a Dog", :body => "Sniff, Sleep and Slumber"})
#     visit "/posts"
#     click_on 'How to Be a Dog'
#     click_on 'Comment'
#     fill_in 'Name', :with => 'Cat'
#     fill_in 'Body', :with => 'You disgust me'
#     click_on 'comment'
#     click_on 'Edit Comment'
#     fill_in 'Name', :with => 'Dog'
#     fill_in 'Body', :with => 'I like bones'
#     click_on 'comment'
#     expect(page).to have_content "Successfully"
#   end
# end
#
# describe "the delete a post comment process" do
#   it 'delete a comment for a post' do
#     login_new
#     post = Post.create({:title => "How to Be a Dog", :body => "Sniff, Sleep and Slumber"})
#     visit "/posts"
#     click_on 'How to Be a Dog'
#     click_on 'Comment'
#     fill_in 'Name', :with => 'Cat'
#     fill_in 'Body', :with => 'You disgust me'
#     click_on 'comment'
#     click_on 'Delete Comment'
#     expect(page).to have_content "successfully"
#   end
# end
#
# def login_new
#   visit '/'
#   click_on 'Sign up'
#   fill_in 'Username', :with => 'aaaa'
#   fill_in 'Email', :with => 'a@a.com'
#   fill_in 'Password', :with => '12345678'
#   fill_in 'Password confirmation', :with => '12345678'
#   visit '/'
#   click_on 'Login'
#   fill_in 'Username', :with => 'aaaa'
#   fill_in 'Email', :with => 'a@a.com'
#   fill_in 'Password', :with => '12345678'
#   click_button 'Log in'
# end
