class AddEmailConstraintToSkcs < ActiveRecord::Migration[5.2]
  def up
      execute %{
        ALTER TABLE
            skcs
        ADD CONSTRAINT
            email_must_be_company_email
        CHECK ( email ~* '^[^@]+@skc\-beratung\\.de$' )
      }
  end
  
  def down
      execute %{
        ALTER TABLE
            skcs
        DROP CONSTRAINT
            email_must_be_company_email
      }
  end
end
