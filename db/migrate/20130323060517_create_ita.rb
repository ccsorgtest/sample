class CreateIta < ActiveRecord::Migration
  def change
    create_table :ita do |t|
      t.string :title

      t.timestamps
    end
  end
end
