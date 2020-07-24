RSpec.describe Math::Comparison do
  subject { Math::Comparison }

  it 'has a version number' do
    expect(Math::Comparison::VERSION).not_to be nil
  end

  context 'when the syntax is correct' do
    it { is_expected.to be_eql('2 + 2', '4') }
    it { is_expected.to be_eql('2*x + 2', '2*(x + 1)') }
    it { is_expected.to be_eql('2*x + 2 = 4', 'x + x + 2 = 2 + 2') }

    it { is_expected.not_to be_eql('2 + 2', '3') }
    it { is_expected.not_to  be_eql('2*x + 2', '2*x + 1') }
    it { is_expected.not_to  be_eql('2*x + 2 = 4', 'x + 2 = 4') }
  end

  context 'when the syntax is incorrect' do
    it 'raises the MathematicalSyntaxError' do
      expect { subject.eql?('2*x + 2 =', 'x + 2 = 4') }.to raise_error(
        Math::Comparison::Exceptions::MathematicalSyntaxError,
        'invalid mathematical syntax'
      )
    end
  end
end
