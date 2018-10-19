class CreateMains < ActiveRecord::Migration[5.2]
  def change
    create_table :mains do |t|
      t.integer :gba_number             , null: false
      t.string :drug_name               , null: false
      t.string :brand_name              , null: false
      t.string :manufacturer            , null: false
      t.boolean :orphan_drug            , null: false
      t.boolean :new_field              , null: false
      t.boolean :expired_time           , null: false
      t.boolean :basic_evidence         , null: false
      t.boolean :exceedance_money       , null: false
      t.boolean :lors_of_odd            , null: false
      t.date :start_procedure           , null: false
      t.date :end_procedure             , null: true
      t.string :status                  , null: false
      t.string :field_of_application    , null: false
      t.string :indication              , null: false
      t.integer :subgroups              , null: false
      t.decimal :benefit_percentige     , null: false
      t.boolean :benefit                , null: false
      t.string :market_availability     , null: false

     t.timestamps                       null: false
    end
    add_index :mains, :gba_number, unique: true
  end
end
