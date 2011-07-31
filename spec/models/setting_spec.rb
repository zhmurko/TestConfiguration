require 'spec_helper'

describe Setting do
  let(:setting) { Factory(:setting) }
  subject { setting }

  describe "has fields" do
    it { should respond_to :caption }
    it { should respond_to :value }
    it { should respond_to :web_type }
    it { should respond_to :converted_value }
  end

  context "returns" do

    context "string" do
      let(:setting) { Factory :setting, :value => "just a string"  }
      its(:converted_value) { should be_kind_of(String) }
    end

    context "integer" do
      let(:setting) { Factory :setting, :value => 1 }
      its(:converted_value) { should be_kind_of(Integer) }
    end

    context "just a date" do
      let(:setting) { Factory :setting, :value => "01/01/1982" }
      its(:converted_value) { should be_kind_of(Date) }
    end

    context "date with time" do
      let(:setting) { Factory :setting, :value => "01/01/1982 17:32" }
      its(:converted_value) { should be_kind_of(DateTime) }
    end

  end

end
