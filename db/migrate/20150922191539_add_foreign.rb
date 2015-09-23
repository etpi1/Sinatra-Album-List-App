class AddForeign < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :user
    end
  end
end
