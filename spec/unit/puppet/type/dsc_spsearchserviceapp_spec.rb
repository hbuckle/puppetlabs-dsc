#!/usr/bin/env ruby
require 'spec_helper'

describe Puppet::Type.type(:dsc_spsearchserviceapp) do

  let :dsc_spsearchserviceapp do
    Puppet::Type.type(:dsc_spsearchserviceapp).new(
      :name     => 'foo',
      :dsc_name => 'foo',
    )
  end

  it 'should allow all properties to be specified' do
    expect { Puppet::Type.type(:dsc_spsearchserviceapp).new(
      :name     => 'foo',
      :dsc_name => 'foo',
      :dsc_applicationpool => 'foo',
      :dsc_searchcenterurl => 'foo',
      :dsc_databasename => 'foo',
      :dsc_databaseserver => 'foo',
      :dsc_defaultcontentaccessaccount => {"user"=>"user", "password"=>"password"},
      :dsc_cloudindex => true,
      :dsc_ensure => 'Present',
      :dsc_installaccount => {"user"=>"user", "password"=>"password"},
    )}.to_not raise_error
  end

  it "should stringify normally" do
    expect(dsc_spsearchserviceapp.to_s).to eq("Dsc_spsearchserviceapp[foo]")
  end

  it 'should default to ensure => present' do
    expect(dsc_spsearchserviceapp[:ensure]).to eq :present
  end

  it 'should require that dsc_name is specified' do
    #dsc_spsearchserviceapp[:dsc_name]
    expect { Puppet::Type.type(:dsc_spsearchserviceapp).new(
      :name     => 'foo',
    )}.to raise_error(Puppet::Error, /dsc_name is a required attribute/)
  end

  it 'should not accept array for dsc_name' do
    expect{dsc_spsearchserviceapp[:dsc_name] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_name' do
    expect{dsc_spsearchserviceapp[:dsc_name] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_name' do
    expect{dsc_spsearchserviceapp[:dsc_name] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_name' do
    expect{dsc_spsearchserviceapp[:dsc_name] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_applicationpool' do
    expect{dsc_spsearchserviceapp[:dsc_applicationpool] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_applicationpool' do
    expect{dsc_spsearchserviceapp[:dsc_applicationpool] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_applicationpool' do
    expect{dsc_spsearchserviceapp[:dsc_applicationpool] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_applicationpool' do
    expect{dsc_spsearchserviceapp[:dsc_applicationpool] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_searchcenterurl' do
    expect{dsc_spsearchserviceapp[:dsc_searchcenterurl] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_searchcenterurl' do
    expect{dsc_spsearchserviceapp[:dsc_searchcenterurl] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_searchcenterurl' do
    expect{dsc_spsearchserviceapp[:dsc_searchcenterurl] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_searchcenterurl' do
    expect{dsc_spsearchserviceapp[:dsc_searchcenterurl] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_databasename' do
    expect{dsc_spsearchserviceapp[:dsc_databasename] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_databasename' do
    expect{dsc_spsearchserviceapp[:dsc_databasename] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_databasename' do
    expect{dsc_spsearchserviceapp[:dsc_databasename] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_databasename' do
    expect{dsc_spsearchserviceapp[:dsc_databasename] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_databaseserver' do
    expect{dsc_spsearchserviceapp[:dsc_databaseserver] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_databaseserver' do
    expect{dsc_spsearchserviceapp[:dsc_databaseserver] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_databaseserver' do
    expect{dsc_spsearchserviceapp[:dsc_databaseserver] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_databaseserver' do
    expect{dsc_spsearchserviceapp[:dsc_databaseserver] = 16}.to raise_error(Puppet::ResourceError)
  end

  it "should not accept empty password for dsc_defaultcontentaccessaccount" do
    expect{dsc_spsearchserviceapp[:dsc_defaultcontentaccessaccount] = {"user"=>"user", "password"=>""}}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_defaultcontentaccessaccount' do
    expect{dsc_spsearchserviceapp[:dsc_defaultcontentaccessaccount] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_defaultcontentaccessaccount' do
    expect{dsc_spsearchserviceapp[:dsc_defaultcontentaccessaccount] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_defaultcontentaccessaccount' do
    expect{dsc_spsearchserviceapp[:dsc_defaultcontentaccessaccount] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_defaultcontentaccessaccount' do
    expect{dsc_spsearchserviceapp[:dsc_defaultcontentaccessaccount] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_cloudindex' do
    expect{dsc_spsearchserviceapp[:dsc_cloudindex] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept boolean for dsc_cloudindex' do
    dsc_spsearchserviceapp[:dsc_cloudindex] = true
    expect(dsc_spsearchserviceapp[:dsc_cloudindex]).to eq(true)
  end

  it "should accept boolean-like value 'true' and munge this value to boolean for dsc_cloudindex" do
    dsc_spsearchserviceapp[:dsc_cloudindex] = 'true'
    expect(dsc_spsearchserviceapp[:dsc_cloudindex]).to eq(true)
  end

  it "should accept boolean-like value 'false' and munge this value to boolean for dsc_cloudindex" do
    dsc_spsearchserviceapp[:dsc_cloudindex] = 'false'
    expect(dsc_spsearchserviceapp[:dsc_cloudindex]).to eq(false)
  end

  it "should accept boolean-like value 'True' and munge this value to boolean for dsc_cloudindex" do
    dsc_spsearchserviceapp[:dsc_cloudindex] = 'True'
    expect(dsc_spsearchserviceapp[:dsc_cloudindex]).to eq(true)
  end

  it "should accept boolean-like value 'False' and munge this value to boolean for dsc_cloudindex" do
    dsc_spsearchserviceapp[:dsc_cloudindex] = 'False'
    expect(dsc_spsearchserviceapp[:dsc_cloudindex]).to eq(false)
  end

  it "should accept boolean-like value :true and munge this value to boolean for dsc_cloudindex" do
    dsc_spsearchserviceapp[:dsc_cloudindex] = :true
    expect(dsc_spsearchserviceapp[:dsc_cloudindex]).to eq(true)
  end

  it "should accept boolean-like value :false and munge this value to boolean for dsc_cloudindex" do
    dsc_spsearchserviceapp[:dsc_cloudindex] = :false
    expect(dsc_spsearchserviceapp[:dsc_cloudindex]).to eq(false)
  end

  it 'should not accept int for dsc_cloudindex' do
    expect{dsc_spsearchserviceapp[:dsc_cloudindex] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_cloudindex' do
    expect{dsc_spsearchserviceapp[:dsc_cloudindex] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept dsc_ensure predefined value Present' do
    dsc_spsearchserviceapp[:dsc_ensure] = 'Present'
    expect(dsc_spsearchserviceapp[:dsc_ensure]).to eq('Present')
  end

  it 'should accept dsc_ensure predefined value present' do
    dsc_spsearchserviceapp[:dsc_ensure] = 'present'
    expect(dsc_spsearchserviceapp[:dsc_ensure]).to eq('present')
  end

  it 'should accept dsc_ensure predefined value present and update ensure with this value (ensure end value should be a symbol)' do
    dsc_spsearchserviceapp[:dsc_ensure] = 'present'
    expect(dsc_spsearchserviceapp[:ensure]).to eq(dsc_spsearchserviceapp[:dsc_ensure].downcase.to_sym)
  end

  it 'should accept dsc_ensure predefined value Absent' do
    dsc_spsearchserviceapp[:dsc_ensure] = 'Absent'
    expect(dsc_spsearchserviceapp[:dsc_ensure]).to eq('Absent')
  end

  it 'should accept dsc_ensure predefined value absent' do
    dsc_spsearchserviceapp[:dsc_ensure] = 'absent'
    expect(dsc_spsearchserviceapp[:dsc_ensure]).to eq('absent')
  end

  it 'should accept dsc_ensure predefined value absent and update ensure with this value (ensure end value should be a symbol)' do
    dsc_spsearchserviceapp[:dsc_ensure] = 'absent'
    expect(dsc_spsearchserviceapp[:ensure]).to eq(dsc_spsearchserviceapp[:dsc_ensure].downcase.to_sym)
  end

  it 'should not accept values not equal to predefined values' do
    expect{dsc_spsearchserviceapp[:dsc_ensure] = 'invalid value'}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_ensure' do
    expect{dsc_spsearchserviceapp[:dsc_ensure] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_ensure' do
    expect{dsc_spsearchserviceapp[:dsc_ensure] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_ensure' do
    expect{dsc_spsearchserviceapp[:dsc_ensure] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_ensure' do
    expect{dsc_spsearchserviceapp[:dsc_ensure] = 16}.to raise_error(Puppet::ResourceError)
  end

  it "should not accept empty password for dsc_installaccount" do
    expect{dsc_spsearchserviceapp[:dsc_installaccount] = {"user"=>"user", "password"=>""}}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_installaccount' do
    expect{dsc_spsearchserviceapp[:dsc_installaccount] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_installaccount' do
    expect{dsc_spsearchserviceapp[:dsc_installaccount] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_installaccount' do
    expect{dsc_spsearchserviceapp[:dsc_installaccount] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_installaccount' do
    expect{dsc_spsearchserviceapp[:dsc_installaccount] = 16}.to raise_error(Puppet::ResourceError)
  end

  # Configuration PROVIDER TESTS

  describe "powershell provider tests" do

    it "should successfully instanciate the provider" do
      described_class.provider(:powershell).new(dsc_spsearchserviceapp)
    end

    before(:each) do
      @provider = described_class.provider(:powershell).new(dsc_spsearchserviceapp)
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
        dsc_spsearchserviceapp.original_parameters[:dsc_ensure] = 'present'
        dsc_spsearchserviceapp[:dsc_ensure] = 'present'
        @provider = described_class.provider(:powershell).new(dsc_spsearchserviceapp)
      end

      it "should update :ensure to :present" do
        expect(dsc_spsearchserviceapp[:ensure]).to eq(:present)
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
        dsc_spsearchserviceapp.original_parameters[:dsc_ensure] = 'absent'
        dsc_spsearchserviceapp[:dsc_ensure] = 'absent'
        @provider = described_class.provider(:powershell).new(dsc_spsearchserviceapp)
      end

      it "should update :ensure to :absent" do
        expect(dsc_spsearchserviceapp[:ensure]).to eq(:absent)
      end

      it "should compute powershell dsc test script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('test')).to match(/ensure = 'present'/)
      end

      it "should compute powershell dsc set script in which ensure value is 'absent'" do
        expect(@provider.ps_script_content('set')).to match(/ensure = 'absent'/)
      end

    end

    describe "when dsc_resource has credentials" do

      it "should convert credential hash to a pscredential object" do
        expect(@provider.ps_script_content('test')).to match(/| new-pscredential'/)
      end

    end


  end
end
