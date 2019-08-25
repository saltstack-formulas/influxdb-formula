# frozen_string_literal: true

control 'InfluxDB configuration' do
  title 'should match desired lines'

  describe file('/etc/influxdb/influxdb.conf') do
    # Default config
    its('content') { should include '[meta]' }
    its('content') { should include 'dir = "/var/lib/influxdb/meta"' }

    # Custom config
    its('content') { should include '[logging]' }
    its('content') { should include 'level = "debug"' }
  end
end
