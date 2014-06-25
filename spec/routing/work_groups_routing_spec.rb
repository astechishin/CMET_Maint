require 'spec_helper'

describe WorkGroupsController, type: :routing do
  describe 'routing' do
    specify { expect(get: work_groups_path).to route_to(controller: 'work_groups',
                                                        action:     'index') }
    specify { expect(get: '/work_groups').to route_to(controller: 'work_groups',
                                                      action:     'index') }
    specify { expect(get: work_group_path(1)).to route_to(controller: 'work_groups',
                                                          action:     'show',
                                                          id:         '1') }
    specify { expect(get: '/work_groups/1').to route_to(controller: 'work_groups',
                                                        action:     'show',
                                                        id:         '1') }
  end

  describe 'forbidden routes' do
    specify { expect(post: '/work_groups').not_to be_routable }
    specify { expect(put: '/work_groups/1').not_to be_routable }
    specify { expect(delete: '/work_groups/1').not_to be_routable }
  end
end
