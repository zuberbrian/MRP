class RemoveDescriptionFromPart < ActiveRecord::Migration
  def change
    remove_column :parts, :description
  end
end
