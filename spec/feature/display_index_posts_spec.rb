require 'rails_helper'

feature 'Index page displays a list of posts' do
  scenario 'the index displays correct created post information' do
    create(:post, caption: "Post 1")
    create(:post, caption: "Post 2")

    visit '/'
    expect(page).to have_content("Post 1")
    expect(page).to have_content("Post 2")
    expect(page).to have_css("img[src*='puppy']")
  end
end
