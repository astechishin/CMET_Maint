require 'spec_helper'

describe CodeValuesController, type: :routing do
  describe 'routing' do
    specify { expect(get: code_values_path).to route_to(controller: 'code_values',
                                                        action:     'index',
                                                        format:     :json) }
    specify { expect(get: '/code_values').to route_to(controller: 'code_values',
                                                      action:     'index',
                                                      format:     :json) }
    specify { expect(get: code_value_path(1)).to route_to(controller: 'code_values',
                                                          action:     'show',
                                                          id:         '1',
                                                          format:     :json) }
    specify { expect(get: '/code_values/1').to route_to(controller: 'code_values',
                                                        action:     'show',
                                                        id:         '1',
                                                        format:     :json) }
  end

  describe 'forbidden routes' do
    specify { expect(post: '/code_values').not_to be_routable }
    specify { expect(put: '/code_values/1').not_to be_routable }
    specify { expect(delete: '/code_values/1').not_to be_routable }
  end
end
