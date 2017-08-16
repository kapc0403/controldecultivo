class Deletefotoandisntallpaperclip < ActiveRecord::Migration[5.1]
  def change
    remove_column :binnacles, :foto1
    remove_column :binnacles, :foto2
    remove_column :binnacles, :foto3

    add_attachment :binnacles, :foto1
    add_attachment :binnacles, :foto2
    add_attachment :binnacles, :foto3
  end
end
