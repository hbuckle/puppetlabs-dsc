#!/usr/bin/env ruby
require 'spec_helper'

describe Puppet::Type.type(:dsc_xdnsarecord) do

  let :dsc_xdnsarecord do
    Puppet::Type.type(:dsc_xdnsarecord).new(
      :name     => 'foo',
      :dsc_name => 'foo',
      :dsc_zone => 'foo',
    )
  end

  it 'should allow all properties to be specified' do
    expect { Puppet::Type.type(:dsc_xdnsarecord).new(
      :name     => 'foo',
      :dsc_name => 'foo',
      :dsc_zone => 'foo',
      :dsc_target => 'foo',
      :dsc_ensure => 'Present',
    )}.to_not raise_error
  end

  it "should stringify normally" do
    expect(dsc_xdnsarecord.to_s).to eq("Dsc_xdnsarecord[foo]")
  end

  it 'should default to ensure => present' do
    expect(dsc_xdnsarecord[:ensure]).to eq :present
  end

  it 'should require that dsc_name is specified' do
    #dsc_xdnsarecord[:dsc_name]
    expect { Puppet::Type.type(:dsc_xdnsarecord).new(
      :name     => 'foo',
      :dsc_zone => 'foo',
    )}.to raise_error(Puppet::Error, /dsc_name is a required attribute/)
  end

  it 'should not accept array for dsc_name' do
    expect{dsc_xdnsarecord[:dsc_name] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_name' do
    expect{dsc_xdnsarecord[:dsc_name] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_name' do
    expect{dsc_xdnsarecord[:dsc_name] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_name' do
    expect{dsc_xdnsarecord[:dsc_name] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should require that dsc_zone is specified' do
    #dsc_xdnsarecord[:dsc_zone]
    expect { Puppet::Type.type(:dsc_xdnsarecord).new(
      :name     => 'foo',
      :dsc_name => 'foo',
    )}.to raise_error(Puppet::Error, /dsc_zone is a required attribute/)
  end

  it 'should not accept array for dsc_zone' do
    expect{dsc_xdnsarecord[:dsc_zone] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_zone' do
    expect{dsc_xdnsarecord[:dsc_zone] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_zone' do
    expect{dsc_xdnsarecord[:dsc_zone] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_zone' do
    expect{dsc_xdnsarecord[:dsc_zone] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_target' do
    expect{dsc_xdnsarecord[:dsc_target] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_target' do
    expect{dsc_xdnsarecord[:dsc_target] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_target' do
    expect{dsc_xdnsarecord[:dsc_target] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_target' do
    expect{dsc_xdnsarecord[:dsc_target] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept dsc_ensure predefined value Present' do
    dsc_xdnsarecord[:dsc_ensure] = 'Present'
    expect(dsc_xdnsarecord[:dsc_ensure]).to eq('Present')
  end

  it 'should accept dsc_ensure predefined value present' do
    dsc_xdnsarecord[:dsc_ensure] = 'present'
    expect(dsc_xdnsarecord[:dsc_ensure]).to eq('present')
  end

  it 'should accept dsc_ensure predefined value present and update ensure with this value (ensure end value should be a symbol)' do
    dsc_xdnsarecord[:dsc_ensure] = 'present'
    expect(dsc_xdnsarecord[:ensure]).to eq(dsc_xdnsarecord[:dsc_ensure].downcase.to_sym)
  end

  it 'should accept dsc_ensure predefined value Absent' do
    dsc_xdnsarecord[:dsc_ensure] = 'Absent'
    expect(dsc_xdnsarecord[:dsc_ensure]).to eq('Absent')
  end

  it 'should accept dsc_ensure predefined value absent' do
    dsc_xdnsarecord[:dsc_ensure] = 'absent'
    expect(dsc_xdnsarecord[:dsc_ensure]).to eq('absent')
  end

  it 'should accept dsc_ensure predefined value absent and update ensure with this value (ensure end value should be a symbol)' do
    dsc_xdnsarecord[:dsc_ensure] = 'absent'
    expect(dsc_xdnsarecord[:ensure]).to eq(dsc_xdnsarecord[:dsc_ensure].downcase.to_sym)
  end

  it 'should not accept values not equal to predefined values' do
    expect{dsc_xdnsarecord[:dsc_ensure] = 'invalid value'}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_ensure' do
    expect{dsc_xdnsarecord[:dsc_ensure] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_ensure' do
    expect{dsc_xdnsarecord[:dsc_ensure] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_ensure' do
    expect{dsc_xdnsarecord[:dsc_ensure] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_ensure' do
    expect{dsc_xdnsarecord[:dsc_ensure] = 16}.to raise_error(Puppet::ResourceError)
  end

  # Configuration PROVIDER TESTS

  describe "powershell provider tests" do

    it "should successfully instanciate the provider" do
      described_class.provider(:powershell).new(dsc_xdnsarecord)
    end

    before(:each) do
      @provider = described_class.provider(:powershell).new(dsc_xdnsarecord)
    end

    describe "when dscmeta_module_name existing/is defined " do

      it "should compute powershell dsc test script with Invoke-DscResource" do
        expect(@provider.ps_script_content('test')).to match(/Invoke-DscResource/)
      end

      it "should compute powershell dsc test script with method Test" do
        expect(@provider.ps_script_content('test')).to match(/Method\s+=\s*'test'/)
      end

      it "should compute powershell dsc set script with Invoke-DscResource" do
        expect(@provider.ps_script_content('set')).to match(/Invoke-DscResource/)
      end

      it "should compute powershell dsc test script with method Set" do
        expect(@provider.ps_script_content('set')).to match(/Method\s+=\s*'set'/)
      end

    end

    describe "when dsc_ensure is 'present'" do

      before(:each) do
        dsc_xdnsarecord.original_parameters[:dsc_ensure] = 'present'
        dsc_xdnsarecord[:dsc_ensure] = 'present'
        @provider = described_class.provider(:powershell).new(dsc_xdnsarecord)
      end

      it "should update :ensure to :present" do
        expect(dsc_xdnsarecord[:ensure]).to eq(:present)
      end

      it "should compute powershell dsc test script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('test')).to match(/ensure = 'present'/)
      end

      it "should compute powershell dsc set script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('set')).to match(/ensure = 'present'/)
      end

    end

    describe "when dsc_ensure is 'absent'" do

      before(:each) do
        dsc_xdnsarecord.original_parameters[:dsc_ensure] = 'absent'
        dsc_xdnsarecord[:dsc_ensure] = 'absent'
        @provider = described_class.provider(:powershell).new(dsc_xdnsarecord)
      end

      it "should update :ensure to :absent" do
        expect(dsc_xdnsarecord[:ensure]).to eq(:absent)
      end

      it "should compute powershell dsc test script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('test')).to match(/ensure = 'present'/)
      end

      it "should compute powershell dsc set script in which ensure value is 'absent'" do
        expect(@provider.ps_script_content('set')).to match(/ensure = 'absent'/)
      end

    end

  end
end
