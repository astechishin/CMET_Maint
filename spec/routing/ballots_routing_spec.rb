require 'spec_helper'

describe BallotsController, type: :routing do
  describe 'routing' do
    specify { expect(get: ballots_path).to route_to(controller: 'ballots',
                                                    action:     'index') }
    specify { expect(get: '/ballots').to route_to(controller: 'ballots',
                                                  action:     'index') }
    specify { expect(get: new_ballot_path).to route_to(controller: 'ballots',
                                                       action:     'new') }
    specify { expect(get: '/ballots/new').to route_to(controller: 'ballots',
                                                      action:     'new') }
    specify { expect(get: ballot_path(1)).to route_to(controller: 'ballots',
                                                      action:     'show',
                                                      id:         '1') }
    specify { expect(get: '/ballots/1').to route_to(controller: 'ballots',
                                                    action:     'show',
                                                    id:         '1') }
    specify { expect(get: edit_ballot_path(1)).to route_to(controller: 'ballots',
                                                           action:     'edit',
                                                           id:         '1') }
    specify { expect(get: '/ballots/1/edit').to route_to(controller: 'ballots',
                                                         action:     'edit',
                                                         id:         '1') }
    specify { expect(post: ballots_path).to route_to(controller: 'ballots',
                                                     action:     'create') }
    specify { expect(post: '/ballots').to route_to(controller: 'ballots',
                                                   action:     'create') }
    specify { expect(put: ballot_path(1)).to route_to(controller: 'ballots',
                                                      action:     'update',
                                                      id:         '1') }
    specify { expect(put: '/ballots/1').to route_to(controller: 'ballots',
                                                    action:     'update',
                                                    id:         '1') }
  end

  describe 'forbidden routes' do
    specify { expect(delete: '/ballots/1').not_to be_routable }
  end
end
