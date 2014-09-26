require 'spec_helper'

describe 'syslog-ng::default' do
  before do
    Fauxhai.mock(path: 'spec/fixtures/arch.json') do |node|
    end
  end

  cached(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end

  it 'installs the syslog-ng package' do
    expect(chef_run).to install_package('syslog-ng')
  end

  it 'enables the syslog-ng service' do
    expect(chef_run).to enable_service('syslog-ng')
  end

  it 'starts the syslog-ng service' do
    expect(chef_run).to start_service('syslog-ng')
  end

  it 'renders the syslog-ng.conf template' do
    expect(chef_run).to render_file('/etc/syslog-ng/syslog-ng.conf')
  end
end
