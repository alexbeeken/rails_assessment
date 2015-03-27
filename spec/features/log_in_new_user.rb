require 'rails_helper'

describe "signing up" do
  it "signs a user up when provided correct information" do
    visit '/'
    click_on 'Sign up'
    fill_in 'Username', :with => 'a'
    fill_in 'Email', :with => 'a@a.com'
    fill_in 'Password', :with => '12345678'
    fill_in 'Password confirmation', :with => '12345678'
    click_on 'Sign up'
    expect(page).to have_content "Logged in as a@a.com"
  end
end
