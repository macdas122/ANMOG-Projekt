class CreateStudyArms < ActiveRecord::Migration[5.2]
  def change
    create_table :study_arms do |t|
      t.string :controlled_intervention , null: false
      t.integer :gba_number             , null: false
      t.string :medication              , null: false
      t.string :dosing                  , null: false
      t.boolean :blinded                , null: false
      t.boolean :itc                    , null: false
      t.integer :number_patient         , null: false
      t.timestamps
    end
  end
end
