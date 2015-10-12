require 'rails_helper'

RSpec.describe Order, type: :model do
  let (:order) { FactoryGirl.build :order }
  subject { order }

  it { should respond_to(:total) }
  it { should respond_to(:user_id) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:total) }
  it { should allow_value(1).for(:total) }
  it { should allow_value(0).for(:total) }
  it { should_not allow_value(-1).for(:total) }

  it { should belong_to(:user) }

  it { should have_many(:placements) }
  it { should have_many(:products).through(:placements) }
end
