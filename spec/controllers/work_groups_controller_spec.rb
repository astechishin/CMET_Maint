require 'spec_helper'

describe WorkGroupsController do

  describe '#index' do

  end

  describe '#show' do

  end

  describe 'GET index' do
    it 'assigns all work_groups as @work_groups' do
      work_group = WorkGroup.create! valid_attributes
      get :index, {}, valid_session
      assigns(:work_groups).should eq([work_group])
    end
  end

  describe 'GET show' do
    it 'assigns the requested work_group as @work_group' do
      work_group = WorkGroup.create! valid_attributes
      get :show, {:id => work_group.to_param}, valid_session
      assigns(:work_group).should eq(work_group)
    end
  end
end
