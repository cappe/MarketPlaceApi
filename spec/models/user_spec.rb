require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryGirl.build(:user) }

  subject { @user }

  it { expect respond_to(:email) }
  it { expect respond_to(:password) }
  it { expect respond_to(:password_confirmation) }

  it { expect be_valid }

  it { expect validate_presence_of(:email) }
  it { expect validate_uniqueness_of(:email).case_insensitive }
  it { expect validate_confirmation_of(:password) }
  it { expect allow_value('example@domain.com').for(:email) }
end