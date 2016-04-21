class Cmet < ActiveRecord::Base
  self.primary_key = :ident

  belongs_to :work_group

  has_many :cmet_versions

  scope :id_order, -> { order(ident: :asc) }

  include PgSearch
  pg_search_scope :search, against: [:descriptor, :description],
                  using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
    if query.present?
      search(query)
    else
      all.id_order.includes(:work_group)
    end
  end

end
