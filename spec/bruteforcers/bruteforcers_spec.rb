require 'spec_helper'
require 'ronin/bruteforcers/version'

describe Bruteforcers do
  it "should have a VERSION constant" do
    subject.const_get('VERSION').should_not be_nil
  end
end
