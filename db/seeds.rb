require 'faker'

    5.times do
      Post.create :category_id => [1, 2, 3].sample,
                  :title       => Faker::Lorem.sentence,
                  :description => Faker::Lorem.sentence,
                  :email       => Faker::Internet.email,
                  :price       => Faker::Commerce.price,
                  :post_date   => Faker::Date.forward(5)
    end

    3.times do
      Category.create :name    => Faker::Commerce.department(1,true)
    end