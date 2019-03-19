RSpec.describe Math::Comparison::ShellIterator do
  context 'when prepare the shell command' do
    let(:shell_interator) do
      Math::Comparison::ShellIterator.new('echo', 'Hello World!!')
    end

    it 'creates a parameters' do
      expect(shell_interator.params).to eq ['Hello World!!']
    end

    it 'creates a command' do
      expect(shell_interator.command).to eq 'echo'
    end
  end

  context 'when executes a command successfully' do
    let(:command) do
      Math::Comparison::ShellIterator.exec('echo', 'Hello World!!')
    end

    it 'resturns the result' do
      expect(command.result).to eq('Hello World!!')
    end
  end

  context 'when the command fails' do
    let(:command) do
      Math::Comparison::ShellIterator.exec('invalid_command', 'Hello World!!')
    end

    it 'resturns the result' do
      expect { command.result }.to raise_error(
        Math::Comparison::Exceptions::CommandError
      )
    end
  end
end
