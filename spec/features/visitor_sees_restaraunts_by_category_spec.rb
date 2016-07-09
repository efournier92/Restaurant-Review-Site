require 'rails_helper'

# As a user
# I want to see the restaurants belonging to a category
# So that I can pick a restaurant for a specific category

# [X] I should see the name of the category at the top of the page.
# [X] I should see the name of all restaurants that belong to this category.
# [X] I should be taken to restaurant's details page if I click on the name of a restaurant while on this page.
# [X] I should get to this page by clicking on the name of a category while on the page with the names of all the categories.

feature "visits category show page" do
  scenario "sees name of category" do
    visit category_path(1)

    expect(page).to have_content('Thai')
  end

  scenario "reaches page by clicking header link" do
    visit root_path
    click_link('Categories')
    expect(page).to have_content('Thai')
  end

  scenario "restaurant name links to restaurant show page" do
    visit root_path
    click_link('Categories')
    click_link('Thai')

    expect(page).to have_content('Chef Leu')
  end

end
