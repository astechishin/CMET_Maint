class CreateBallotCycles < ActiveRecord::Migration
  def change
    create_table :ballot_cycles, id: false do |t|
      t.primary_key   :cycle, :string, limit: 7
      t.date          :open
      t.date          :close

      t.timestamps
    end
  end
end
