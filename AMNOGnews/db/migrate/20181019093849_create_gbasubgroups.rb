class CreateGbasubgroups < ActiveRecord::Migration[5.2]
  def change
    create_table :gbasubgroups do |t|
            t.string :manufacturer            , null: false
            t.integer :gba_number             , null: false
            t.string :name                    , null: false
            t.string :act                     , null: false
            t.boolean :evidence               , null: false
            t.boolean :itc                    , null: false
            t.string :study_one               , null: true
            t.string :study_two               , null: true
            t.string :study_thre              , null: true
            t.string :study_four              , null: true
            t.string :study_five              , null: true
            t.string :study_six               , null: true
            t.integer :population_min         , null: false
            t.integer :population_max         , null: false
            t.decimal :cost_zvt                  , null: false
            t.decimal :cost_drug                 , null: false
            t.string :benefit                 , null: false

            t.timestamps            null: false
          end
        end
      end
