class AddNewColumnToPortfoliios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfoliios, :subtitle, :string
  end
end
