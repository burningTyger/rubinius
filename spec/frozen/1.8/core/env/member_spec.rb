require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/shared/include.rb'

describe "ENV#member?" do
  it_behaves_like(:env_include, :member?)
end
