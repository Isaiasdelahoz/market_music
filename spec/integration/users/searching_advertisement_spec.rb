require 'rails_helper.rb' 
 feature 'search advertisement' do 
    scenario 'can find a advertisement' do 
      
      create(:advertisement)

      create(:advertisement, name: 'otro')
      
      visit '/'
      
      fill_in 'search', with: 'nu'

      click_button 'Buscar' 
      
      expect(page).to have_content('nuevo')

      expect(page).not_to have_content('otro')

    end 
  end 