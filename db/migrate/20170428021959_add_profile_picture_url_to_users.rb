class AddProfilePictureUrlToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile_picture_url, :string
  end
end
