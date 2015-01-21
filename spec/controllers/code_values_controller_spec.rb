require 'spec_helper'

describe CodeValuesController do

  describe '#index' do

  end

  describe '#show' do

  end

  describe 'GET index' do
    it 'assigns all code_values as @code_values' do
      code_value = CodeValue.create! valid_attributes
      get :index, {}, valid_session
      assigns(:code_values).should eq([code_value])
    end
  end

  describe 'GET show' do
    it 'assigns the requested code_value as @code_value' do
      code_value = CodeValue.create! valid_attributes
      get :show, {:id => code_value.to_param}, valid_session
      assigns(:code_value).should eq(code_value)
    end
  end

end
