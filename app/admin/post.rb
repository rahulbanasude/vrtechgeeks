ActiveAdmin.register Post do
  permit_params :title, :body, :image, :admin_user_id

  form multipart: true do |f|

  	f.inputs 'post' do
      f.input :image, as: :file
      f.input :title, as: :string
      f.input :body,  as: :text
      f.input :admin_user_id, as: :select, :collection => AdminUser.all

    end
    f.actions
    end


end
