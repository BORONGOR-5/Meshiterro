class AddProfileImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_image_id, :string

    # rename_column :users, :profile_imaage_id, :profile_image_id
  end
end
