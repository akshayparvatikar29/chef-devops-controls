control 'nginx-port' do
  impact 1.0
  title 'Test nginx port'
  desc 'Chef if port 80 is listening'
  describe port(80) do
    it { should_not be_listening }
  end
end
