class CreateCodeValues < ActiveRecord::Migration
  def change
    create_table :code_values do |t|
      t.string    :table, limit: 10
      t.string    :code, limit: 10
      t.string    :long_value, limit: 25
      t.string    :full_value, limit: 100

      t.index [:table, :code], unique: true
    end

    reversible do |dir|
      dir.up do
        execute "COPY code_values FROM '#{File.expand_path('./db/base_data/code_values.csv')}' CSV HEADER"
      end
    end
  end
end
