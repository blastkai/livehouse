ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
=begin

=end
  permit_params :title, :content, :user_id
  
  actions :index, :show, :destroy, :create, :update, :edit

  index do
  	selectable_column
    column :title do |post|
    	link_to post.title, admin_post_path(post)
  	end
  	column :user_id
    actions
  end




end