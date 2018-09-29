require 'rails_helper'

RSpec.describe Patient, type: :model do
  subject { described_class.new(FactoryBot.attributes_for(:patient)) }
  
  context 'validation tests' do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    
    it "is not valid without a first name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without a last name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without a medical record #" do
      subject.mr = nil
      expect(subject).to_not be_valid
    end
  end
  
end
