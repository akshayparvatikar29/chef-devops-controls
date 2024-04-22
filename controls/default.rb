control 'nginx-port' do
  impact 1.0
  title 'Test nginx version'
  desc 'Check if nginx version is installed'
  describe nginx do
    its('version') { should eq '1.22.1' }
  end
end
