class AddColumnsToFabric < ActiveRecord::Migration[6.0]
  def change
    add_column :fabrics, :name, :string
    add_column :fabrics, :description, :string
    add_column :fabrics, :width, :integer
    add_column :fabrics, :length, :integer
    add_column :fabrics, :colors, :string
    add_column :fabrics, :composition, :string
    add_column :fabrics, :washing_instruction, :string
    add_column :fabrics, :washed, :string
    add_column :fabrics, :purchasing_date, :date
  end
end
