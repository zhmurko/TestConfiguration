require 'spec_helper'

describe "settings/index.html.haml" do
  before(:each) do
    assign(:settings, FactoryGirl.build_list(:setting, 12))
  end

  it "renders a list of settings" do
    render
  end
end
