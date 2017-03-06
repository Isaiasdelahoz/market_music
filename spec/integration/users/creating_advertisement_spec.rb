require 'rails_helper.rb'
feature 'create advertisement' do 
    scenario 'can create advertisement' do 
      
      category = create(:category)

      user = create(:user)
      
      visit '/'

      click_link 'Ingresar' 

      fill_in 'Email', with: user.email
  
      fill_in 'Password', with: '123456'

      click_button 'Log in'

      click_link category.name

      click_link 'Add new product'

      fill_in  'Name', with: "nuevo"
      
      fill_in 'Price', with: "123456"

      fill_in 'Phone', with: "123456"

      fill_in 'Description', with: "nada"

      fill_in 'Ubication', with:"ninguna parte"

      click_button 'Create Advertisement'

      expect(page).to have_content('nuevo')
    end 
  end 