control 'InfluxDB configuration' do
  title 'should match desired lines'

  describe file('/etc/influxdb/influxdb.conf') do
    # Default config
    its('content') { should include '[admin]' }
    its('content') { should include 'bind-address = ":8083"' }
  end
end
