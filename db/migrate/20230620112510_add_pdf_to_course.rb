class AddPdfToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :pdf, :string
  end
end
