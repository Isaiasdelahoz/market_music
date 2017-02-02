require 'rails_helper'
describe Advertisement do 
  describe "validations" do 

    it "should not allow blank values on namre" do 
      
      expect { create(:advertisement, name: '') }.to raise_error(ActiveRecord::RecordInvalid) 
    end 

  end
end 