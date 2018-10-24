feature 'View bookmarks' do
    scenario 'visit homepage and see bookmark manager' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
    end
end