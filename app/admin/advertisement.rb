ActiveAdmin.register Advertisement do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params do
 [:price, :name, :description, :phone, :category_id, :ubication, :avatar]

 end


end
