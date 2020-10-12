# require 'spec_helper'
require 'rails_helper'

RSpec.describe Fabric, type: :model do
  subject {
    fabric = Fabric.new(name: "Lorem",
                        description: "Lorem ipsum",
                        width: 140,
                        length: 300)
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    fabric = Fabric.new(name: nil)
    expect(fabric).to_not be_valid
  end

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence}
  end
end

