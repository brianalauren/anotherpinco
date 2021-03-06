ActiveAdmin.register Product do

permit_params :title, :image_1, :image_2, :image_3, :image_4, :image_5, :price, :collection_date, :description, :is_featured, :is_sold_out

index do
  selectable_column
  index_column
  column "Main Image" do |product|
    image_tag product.image_1.thumb.url, width: '80'
  end
  column :title
  column :price
  column :is_featured
  column :is_sold_out
  actions
  end

form title: 'Product' do |f|
    f.inputs 'Info' do
      f.input :title
      f.input :price
      f.input :description
      f.input :collection_date
    end

    f.inputs 'Filters' do
      f.input :is_featured
      f.input :is_sold_out
    end

    f.inputs 'Images' do
      f.input :image_1
      f.input :image_2
      f.input :image_3
      f.input :image_4
      f.input :image_5
    end

    f.actions
  end


end
