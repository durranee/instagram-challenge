FactoryBot.define do
  factory :post do
    caption "myString"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/img/puppy.jpg', 'image/jpg')
  end
end
