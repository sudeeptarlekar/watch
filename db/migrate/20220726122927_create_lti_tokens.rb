class CreateLtiTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :lti_tokens do |t|
      t.string :key
      t.string :secret
      t.belongs_to :user
      t.timestamps
    end
  end
end
