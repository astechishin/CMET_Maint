require 'spec_helper'

describe CmetsController, type: :routing do
  describe 'routing' do
    specify { expect(get: cmets_path).to route_to(controller: 'cmets',
                                                    action:     'index') }
    specify { expect(get: '/cmets').to route_to(controller: 'cmets',
                                                  action:     'index') }
    specify { expect(get: new_cmet_path).to route_to(controller: 'cmets',
                                                       action:     'new') }
    specify { expect(get: '/cmets/new').to route_to(controller: 'cmets',
                                                      action:     'new') }
    specify { expect(get: cmet_path(1)).to route_to(controller: 'cmets',
                                                      action:     'show',
                                                      id:         '1') }
    specify { expect(get: '/cmets/1').to route_to(controller: 'cmets',
                                                    action:     'show',
                                                    id:         '1') }
    specify { expect(get: edit_cmet_path(1)).to route_to(controller: 'cmets',
                                                           action:     'edit',
                                                           id:         '1') }
    specify { expect(get: '/cmets/1/edit').to route_to(controller: 'cmets',
                                                         action:     'edit',
                                                         id:         '1') }
    specify { expect(post: cmets_path).to route_to(controller: 'cmets',
                                                     action:     'create') }
    specify { expect(post: '/cmets').to route_to(controller: 'cmets',
                                                   action:     'create') }
    specify { expect(put: cmet_path(1)).to route_to(controller: 'cmets',
                                                      action:     'update',
                                                      id:         '1') }
    specify { expect(put: '/cmets/1').to route_to(controller: 'cmets',
                                                    action:     'update',
                                                    id:         '1') }
  end

  describe 'forbidden routes' do
    specify { expect(delete: '/cmets/1').not_to be_routable }
  end
end
