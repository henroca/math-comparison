RSpec.describe Math::Comparison::ShellIterator do
    context 'when prepare the shell command' do
        let(:shell_interator) { Math::Comparison::ShellIterator.new('echo', '"Hello World!!"') }
        
        it 'creates a parameters' do
            expect(shell_interator.params).to eq ['"Hello World!!"']
        end

        it 'creates a command' do
            expect(shell_interator.command).to eq 'echo'
        end

        it 'creates a command with the parameters' do
            expect(shell_interator.prepare_command).to eq 'echo "Hello World!!"'
        end
    end
    
    context 'when executes a command successfully' do
        let(:command) { Math::Comparison::ShellIterator.exec('echo', '"Hello World!!"') }
        
        it 'resturns the result' do
            expect(command.result).to eq("Hello World!!")
        end
    end
end