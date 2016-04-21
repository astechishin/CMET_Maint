class CreateWorkGroups < ActiveRecord::Migration
  def change
    create_table :work_groups do |t|
      t.string       :acronym, limit:12
      t.string       :name, limit: 50, null: false
      t.boolean      :active, null: false, default: true

      t.timestamps
    end


    reversible do |dir|
      dir.up do
        execute "COPY work_groups FROM '#{File.expand_path('./db/base_data/work_groups.csv')}' CSV HEADER"
      end
    end
  end
end
