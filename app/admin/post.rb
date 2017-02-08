ActiveAdmin.register Post do

permit_params :title, :body, :image

show do |t| 
	attributes_table do
		row :title
		row :body
		row :image do
			post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "No photo yet")
		end
	end
end

form :html => { :enctype => "multipart/form-data" } do |f|
	f.inputs do 
		f.input :title
		f.input :body
		f.input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
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
