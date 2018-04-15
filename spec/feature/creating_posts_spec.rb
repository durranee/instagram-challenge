require 'rails_helper.rb'

feature 'Creating new posts' do
  scenario 'user can create a new post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/img/puppy.jpg")
    fill_in 'Caption', with: 'puppy love #PuppyLove'
    click_button 'Create Post'
    expect(page).to have_content('#PuppyLove')
    expect(page).to have_css("img[src*='puppy.jpg']")
  end

  it 'needs an image to create a post' do
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: "Posting without picture"
    click_button 'Create Post'
    expect(page).to have_content("Error! Please select a picture")
  end

end
