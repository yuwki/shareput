class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string     :title,              nill: false
      t.references :user,               foreign_key: true
      t.timestamps
    end
  end
end
