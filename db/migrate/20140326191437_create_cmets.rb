class CreateCmets < ActiveRecord::Migration
  def change
    create_table :cmets, id: false do |t|
      t.primary_key :ident, :string, limit: 13, null: false
      t.string      :descriptor, limit: 50, null: false
      t.string      :attribution, limit: 30, null: false
      t.text        :description
      t.references  :work_group, null: false
      t.string      :domain, limit: 2
      t.boolean     :retired, null: false, default: false

      t.timestamps

      t.index :ident, unique: true
      t.index [:descriptor, :attribution], unique: true
    end
  end
end
