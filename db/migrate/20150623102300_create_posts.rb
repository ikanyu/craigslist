class CreatePosts < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table

    create_table :categories do |t|
      t.string     :name
      t.timestamps :null => false
    end

    create_table :posts do |t|
      # t.belongs_to :category, index: true
      t.integer    :category_id
      t.string     :title
      t.string     :description
      t.string     :email
      t.decimal    :price
      t.datetime   :post_date
      t.timestamps :null => false
    end
  end
end
