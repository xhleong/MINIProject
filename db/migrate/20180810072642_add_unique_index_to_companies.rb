class AddUniqueIndexToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_index :companies, [:country, :company_reg], unique: true
  end
end
