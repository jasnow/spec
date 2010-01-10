require File.dirname(__FILE__) + '/../../../spec_helper'

describe "File::Stat#rdev_major" do
  before :each do
    @name = tmp("file.txt")
    touch(@name)
  end
  after :each do
    rm_r @name
  end

  it "returns the major part of File::Stat#rdev" do
    File.stat(@name).rdev_major.should be_kind_of(Integer)
  end
end
