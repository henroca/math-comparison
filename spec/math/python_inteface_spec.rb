RSpec.describe Math::Comparison::PythonInteface do
  context 'when executes a command successfully' do
    let(:base_path) { File.dirname(__FILE__) + '/../' }
    let(:doubles_path) { base_path + 'support/doubles/' }
    let(:hello_word_py) { doubles_path + 'hello_word.py' }
    let(:read_params_py) { doubles_path + 'read_params.py' }

    it 'resturns the result' do
      expect(
        Math::Comparison::PythonInteface.exec(hello_word_py)
      ).to eq('Hello World!!')
    end

    it 'pass parameters' do
      expect(
        Math::Comparison::PythonInteface.exec(
          read_params_py, 'Hello', 'World!!'
        )
      ).to eq('Hello World!!')
    end
  end
end
