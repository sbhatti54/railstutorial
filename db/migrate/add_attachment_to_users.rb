class AddAttachmentToUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.attachment :avatar
    end
  end
end