class ChangeFinishedDefaultInItems < ActiveRecord::Migration[7.0]
  def change
    change_column_default :items, :finished, from: nil, to: false
  end
end
