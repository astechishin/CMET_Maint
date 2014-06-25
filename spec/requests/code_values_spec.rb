require 'spec_helper'

describe 'CodeValues' do
  describe 'GET /code_values' do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get code_values_path
      response.status.should be(200)
    end
  end
end
