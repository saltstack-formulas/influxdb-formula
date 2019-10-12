# frozen_string_literal: true

control 'InfluxDB package' do
  title 'should be installed'

  describe package('influxdb') do
    it { should be_installed }
  end
end
