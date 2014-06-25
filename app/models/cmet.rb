class Cmet < ActiveRecord::Base
  belongs_to :work_group

  has_many :cmet_versions
end
