require 'spec_helper'

describe "code_values/index" do
  before(:each) do
    assign(:code_values, [
      stub_model(CodeValue),
      stub_model(CodeValue)
    ])
  end

  it "renders a list of code_values" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
