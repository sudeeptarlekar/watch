class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :src
      t.string :content
      t.belongs_to :user
      t.timestamps
    end
  end
end
