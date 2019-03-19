RSpec.describe Math::Comparison::Enums::Comparison do
  it 'returns DEFAULT' do
    expect(
      Math::Comparison::Enums::Comparison::DEFAULT
    ).to eq 'DEFAULT'
  end

  it 'returns EQUATION' do
    expect(
      Math::Comparison::Enums::Comparison::EQUATION
    ).to eq 'EQUATION'
  end
end
