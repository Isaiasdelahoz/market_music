require 'rails_helper.rb'

feature 'Creating category' do 
    scenario 'can create a category' do 

    user = create(:admin_user)

    visit "/admin"

    fill_in 'Email', with: user.email
  
    fill_in 'Password', with: '123456'

    click_button 'Login'

    click_link 'Categories'

    click_link 'New Category'

    fill_in 'Name', with: 'newcategory'

    click_button 'Create Category'

    expect(page).to have_content('newcategory')
    expect(Category.last.name).to eq 'newcategory'
    
    end
  
end 