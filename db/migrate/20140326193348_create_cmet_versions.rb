class CreateCmetVersions < ActiveRecord::Migration
  def change
    create_table :cmet_versions do |t|
      t.string     :cmet_id, limit: 13, null: false
      t.string     :realm, limit: 10
      t.string     :version, limit: 2
      t.string     :status, limit: 10
      t.date       :status_date, null: false

      t.timestamps
    end
  end
end
