class Subgroups < ActiveRecord::Migration[5.2]
  def change
    create_table :subgroups do |t|
      t.string :manufacturer            , null: false
      t.integer :gba_number             , null: false
      t.string :sub_name                , null: false
      t.string :act                     , null: false
      t.boolean :evidence               , null: false
      t.boolean :itc                    , null: false
      t.integer :studies                , null: false
      t.integer :population_min         , null: false
      t.integer :population_max         , null: false
      t.decimal :cost_zvt               , null: true
      t.decimal :cost_drug              , null: true
      t.string :lightihood              , null: false
      t.string :benefit                 , null: false

     t.timestamps                       null: false
    end
    add_index :subgroups, :id, unique: true
  end
end
