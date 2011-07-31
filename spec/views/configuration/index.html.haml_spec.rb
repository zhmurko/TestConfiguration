require 'spec_helper'

describe "configuration/index.html.haml" do
  before :all do
    @settings = assign(:setting, FactoryGirl.build_list(:setting, 20))
  end
  it "should render all settings" do
    render
    rendered.should =~ /name20/
  end
end
