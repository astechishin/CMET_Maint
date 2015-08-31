class CreateCmetVersions < ActiveRecord::Migration
  def change
    create_table :cmet_versions do |t|
      t.string     :cmet_id, limit: 13, null: false
      t.string     :realm, limit: 10
      t.string     :release, limit: 3
      t.string     :status, limit: 10
      t.date       :status_date
      t.text       :notes

      t.timestamps

      t.index [:cmet_id, :release], unique: true
    end

    create_table :cmet_version_notes do |t|
      t.references :cmet_version, null: false
      t.text       :note, null: false
      t.string     :author

      t.timestamps
    end
  end
end
