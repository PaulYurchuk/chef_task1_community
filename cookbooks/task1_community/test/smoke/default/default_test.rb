# # encoding: utf-8

# Inspec test for recipe task1_community::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(666) do
  it { should_not be_listening }
end

describe package('net-tools') do
	it { should be_installed }
end

describe bash('netstat -natupl') do  
	its('stdout') { should match /tcp/ }
	its('stdout') { should match /127.0.0.1/ }  
	its('exit_status') { should eq 0 }
end