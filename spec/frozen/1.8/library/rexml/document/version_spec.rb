require 'rexml/document'
require File.dirname(__FILE__) + '/../../../spec_helper'

describe "REXML::Document#version" do
  it "returns XML version from declaration" do
    d = REXML::Document.new
    d.add REXML::XMLDecl.new("1.1")
    d.version.should == "1.1"
  end

  it "returns the default version when declaration is not present" do
    REXML::Document.new.version.should == REXML::XMLDecl::DEFAULT_VERSION
  end
end
