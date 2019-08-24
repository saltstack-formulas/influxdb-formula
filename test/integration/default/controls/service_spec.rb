control 'InfluxDB service' do
  title 'should be running and enabled'

  describe service('influxdb') do
    it { should be_enabled }
    it { should be_running }
  end

end
