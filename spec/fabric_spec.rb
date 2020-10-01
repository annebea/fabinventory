RSpec.describe Fabric do
  it 'creates a fabric class' do
    fabric = Fabric.new
    expect(fabric).to be_kind_of(Fabric)
  end
end
