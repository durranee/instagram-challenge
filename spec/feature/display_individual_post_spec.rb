require 'spec_helper'

feature 'User can view individual posts' do
  scenario 'Posts are clickable' do
    post = create(:post)

    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    expect(page.current_path).to eq(post_path(post))
  end
end
