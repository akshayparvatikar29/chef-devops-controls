control 'nginx-port' do
  impact 1.0
  title 'Test nginx port'
  desc 'Chef if port 80 is listening'
  describe port(80) do
    it { should be_listening }
  end
end

control 'check-version-and-module' do
  describe nginx do
    its('version') { should eq '1.18.0' }
  end
  describe nginx do
    its('modules') { should include 'http_ssl' }
  end
end
