class CodeValue < ActiveRecord::Base
  scope :by_table, ->(table) { where(table:table) }
end
