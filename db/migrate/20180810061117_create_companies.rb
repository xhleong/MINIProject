class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name, null: false
      t.string :industry, null: false
      t.string :country, null: false
      t.string :company_reg, null: false
      t.string :contact_person, null: false
      t.string :contact_num, null: false

      t.timestamps
    end
  end
end
