RSpec.describe Math::Comparison::Comparator do
  let(:default_comparator) do
    Math::Comparison::Comparator.make('2*x + 3', '2*x + 3')
  end
  let(:equation_comparator) do
    Math::Comparison::Comparator.make('2*x + 3 = 4', '2*x + 3 = 4')
  end

  describe 'create new comparator' do
    it 'set default type' do
      expect(default_comparator.type).to eq(
        Math::Comparison::Enums::Comparison::DEFAULT
      )
    end

    it 'set equation type' do
      expect(equation_comparator.type).to eq(
        Math::Comparison::Enums::Comparison::EQUATION
      )
    end

    context 'when to compare successfully' do
      describe 'default expressions' do
        it 'returns equal' do
          expect(default_comparator).to be_equal
        end

        it 'returns not equal' do
          default_comparator.first_value = '2*x + 5'
          expect(default_comparator).not_to be_equal
        end
      end

      describe 'equation expressions' do
        it 'returns equal' do
          expect(equation_comparator).to be_equal
        end

        it 'returns not equal' do
          equation_comparator.first_value = '2*x + 5 = 4'
          expect(equation_comparator).not_to be_equal
        end

        it 'returns not equal to different type' do
          default_comparator.second_value = '2*x + 5 = 4'
          expect(default_comparator).not_to be_equal
        end
      end
    end

    context 'when the comparison fails' do
      it 'throws the MathematicalSyntaxError' do
        default_comparator.first_value = '2*x +'

        expect { default_comparator.equal? }.to raise_error(
          Math::Comparison::Exceptions::MathematicalSyntaxError,
          'invalid mathematical syntax'
        )
      end
    end
  end
end
