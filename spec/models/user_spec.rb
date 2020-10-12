require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'associations' do
    it { should have_many(:fabrics) }
  end

  describe 'validations' do
    subject {
      described_class.new(password: "some_password", email: "john@doe.com")
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
