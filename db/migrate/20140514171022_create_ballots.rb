class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.references :work_group, null: false
      t.string     :ballot_cycle, limit: 7, null: false
      t.string     :level, limit:10
      t.string     :result, limit: 10
      t.date       :result_date
      t.string     :reconciliation_path

      t.timestamps
    end

    create_table :ballot_cmets do |t|
      t.references :ballot, null: false
      t.references :cmet, null: false
      t.string     :disposition, limit: 10, null: false
    end
  end
end
