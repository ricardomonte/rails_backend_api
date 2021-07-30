FactoryBot.define do
  factory :user do
    name { "Adam" }
    lastname { "Doe" }
    email { "AdamDoe@doe.com" }
    job { "Testing" }
    phone { "+123456789" }
    after(:build) do |user|
      user.avatar.attach(io: File.open(Rails.root.join('spec', 'factories', 'image', 'logo192.png')), filename: 'logo192.png', content_type: 'image/png')
    end
  end
end
