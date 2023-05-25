ActiveAdmin.register Post do
  permit_params :title, :description, :image

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :image
    actions
  end

  filter :title

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :image, as: :file
    end
    f.actions
  end
  
end
