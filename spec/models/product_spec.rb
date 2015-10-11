require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { FactoryGirl.create :product }
  subject { product }

  it { should respond_to(:title) }
  it { should respond_to(:price) }
  it { should respond_to(:published) }
  it { should respond_to(:user_id) }

  it { should_not be_published }

  it { should validate_presence_of :title }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :price }
  it { should allow_value(1).for(:price) }
  it { should allow_value(0).for(:price) }
  it { should_not allow_value(-1).for(:price) }
end
