class AddAvatarsToInformations < ActiveRecord::Migration
  def up
      add_attachment :information, :avatar
  end

  def down
    drop_attached_file :information, :avatar
  end
end
