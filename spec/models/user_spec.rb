require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { FactoryGirl.build :user }
  
  [:provider, :uid, :login, :email].each do |attr|
    it { should respond_to attr }
    it { should validate_presence_of attr }
  end
end
