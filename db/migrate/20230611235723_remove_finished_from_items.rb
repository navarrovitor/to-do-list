class RemoveFinishedFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :finished, :boolean
  end
end
