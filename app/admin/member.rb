ActiveAdmin.register Member do

permit_params :email, :first_name, :last_name, :gender, :classification, :paid_status, :points

index do    
 column :first_name
 column :last_name
 column :email
 column :gender
 column :classification
 column :paid_status, label: "Paid"
 column :points
 actions
end

form do |f|
 f.inputs "Member Details" do
  f.input :first_name
  f.input :last_name
  f.input :email
  f.input :gender,  as: :select, collection: Member::GENDER
  f.input :classification,  as: :select, collection: Member::CLASSIFICATION
  f.input :paid_status, label: "Paid"
  f.input :points
 end
  f.actions
end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
