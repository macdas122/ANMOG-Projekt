class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
          t.integer :gba_number             , null: false
          t.string  :study_name             , null: false
          t.integer :study_arm_number       , null: false
          t.boolean :pivotal                , null: false
          t.boolean :cross_over             , null: false
          t.boolean :extension              , null: false
          t.boolean :controlled             , null: false
          t.boolean :registry               , null: false
          t.boolean :nhs                    , null: false
          t.boolean :randomized             , null: false
          t.string :randomization           , null: false
          t.integer :population             , null: false
          t.string :study_length            , null: false
          t.string :evidenz                 , null: false
          t.string :annotation              , null: false

         t.timestamps                       null: false
        end
        add_index :studies, :id, unique: true
    end
  end
