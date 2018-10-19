class AddLowerIndexesToMains < ActiveRecord::Migration[5.2]
  def change
      add_index :mains, "lower(drug_name) varchar_pattern_ops"
      add_index :mains, "lower(brand_name) varchar_pattern_ops"
      add_index :mains, "lower(manufacturer) varchar_pattern_ops"
      add_index :mains, "lower(field_of_application) varchar_pattern_ops"
  end
end
