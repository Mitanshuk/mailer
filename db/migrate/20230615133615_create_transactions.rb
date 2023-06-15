class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :course
      t.references :student
      t.references :tutor
      t.string :status

      t.timestamps
    end
  end
end
