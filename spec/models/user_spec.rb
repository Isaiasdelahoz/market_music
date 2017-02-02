require 'rails_helper'
describe User do
  describe  "#name" do 
    it "should join first_name and last_name" do 
      user = create(:user, { first_name: "juancho", last_name: 'polo'})
      expect(user.name).to eq("juancho polo") 
    end 
  end 

  describe "validations" do
    it "should not allow repeated emails" do
      create(:user, email: 'juan@test.com')
      expect { create(:user, email: 'juan@test.com') }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end 
