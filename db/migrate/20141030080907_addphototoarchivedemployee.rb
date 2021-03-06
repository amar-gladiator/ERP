class Addphototoarchivedemployee < ActiveRecord::Migration
  def change
    remove_column :archived_employees, :photo_filename
    remove_column :archived_employees, :photo_content_type
    remove_column :archived_employees, :photo_data
    add_column :archived_employees, :image_file_name, :string
    add_column :archived_employees, :image_content_type, :string
    add_column :archived_employees, :image_file_size, :integer
    add_column :archived_employees, :image_updated_at, :datetime
  end
end
