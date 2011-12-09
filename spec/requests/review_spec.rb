require 'spec_helper'

describe Review do
  
  it { should have_valid( :content).when('Review for the destination must be of 20 characters') }
  it { should_not have_valid( :content).when('""', '') }
  it { should have_valid( :content).when('394785asdfasdfasgsdfhgsdhsdgsdfgsdfgdf','*&(&&^(&#@*^$^(@#($#))))453234543') }
  
  
end