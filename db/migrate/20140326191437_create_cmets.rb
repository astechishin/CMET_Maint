class CreateCmets < ActiveRecord::Migration
  def change
    create_table :cmets, id: false do |t|
      t.primary_key :ident, :string, limit: 13, null: false
      t.string      :descriptor, limit: 50
      t.string      :attribution, limit: 30
      t.text        :description
      t.references  :work_group
      t.string      :domain, limit: 2

      t.timestamps
    end
  end
end
