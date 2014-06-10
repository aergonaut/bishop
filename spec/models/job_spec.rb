require 'rails_helper'

RSpec.describe Job, :type => :model do
  subject { FactoryGirl.build :job }
  
  [:command, :payload, :description].each do |attr|
    it { should respond_to attr }
  end
  
  it { should validate_presence_of :command }
  
  it { should belong_to(:created_by).class_name("User") }
  
  it { should serialize(:payload).as(JSON) }
end
