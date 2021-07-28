require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Test validations for User model' do
    subject { build(:user) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:email) }
    it { should allow_value('test@test.com').for(:email) }
  end
end
