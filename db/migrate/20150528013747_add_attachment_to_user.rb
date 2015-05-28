class AddAttachmentToUser < ActiveRecord::Migration
  def change
    add_attachment :users, :attachment
  end
end
