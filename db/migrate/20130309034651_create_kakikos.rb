class CreateKakikos < ActiveRecord::Migration
  def change
    create_table :kakikos do |t|
      t.integer :ita_id
      t.integer :user_id
      t.string :kakikomi

      t.timestamps
    end
  end
end
