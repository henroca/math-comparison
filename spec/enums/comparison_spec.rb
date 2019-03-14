RSpec.describe Enums::Comparison do
  it 'returns DEFAULT' do
    expect(Enums::Comparison::DEFAULT).to eq 'DEFAULT'
  end

  it 'returns EQUATION' do
    expect(Enums::Comparison::EQUATION).to eq 'EQUATION'
  end
end
