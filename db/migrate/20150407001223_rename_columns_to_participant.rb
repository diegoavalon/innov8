class RenameColumnsToParticipant < ActiveRecord::Migration
  def change
  	rename_column :participants, :rh_glove_size, :right_glove_size
  	rename_column :participants, :lh_glove_size, :left_glove_size
  end
end
