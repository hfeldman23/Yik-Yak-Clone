class CreateYaks < ActiveRecord::Migration
    def up
    create_table :yaks do |t|
      t.string :message
      t.string :timestamp
    end
  end
  def down
    drop_table :yaks
  end
end
