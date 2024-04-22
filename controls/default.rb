control 'nginx-port' do
  impact 1.0
  title 'Test nginx port'
  desc 'Chef if port 80 is listening'
  describe nginx do
    its('version') { should eq '1.22.1' }
  end
end
