require 'rails_helper'

# As a user
# I want to see categories of restaurants (e.g. *thai*, *italian*, *chinese*)
# So that I can see the different kinds of foods I could eat

# [X]I should see the name of all categories.
# [X]I should get to this page by clicking on a "Categories" link which is located on the header of every page.

feature "visits categories page" do
  scenario "sees list of categories" do
    visit categories_path

    expect(page).to have_content('All Categories')
    expect(page).to have_content('Italian')
    expect(page).to have_content('Cafe')
    expect(page).to have_content('Coffeehouse')
  end

  scenario "reaches page by clicking header link" do
    visit root_path

    click_link 'Categories'

    expect(page).to have_content('Categories')
    expect(page).to have_content('Italian')
    expect(page).to have_content('Cafe')
    expect(page).to have_content('Coffeehouse')
  end


end
