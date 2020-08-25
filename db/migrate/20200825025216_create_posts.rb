class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :name,               nill: false
      t.string     :text,               nill: false
      t.references :user,               foreign_key: true
      t.references :topic,              foreign_key: true
      t.timestamps
    end
  end
end
