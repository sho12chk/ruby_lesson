class CreateTalk2s < ActiveRecord::Migration
  def change
    create_table :talk2s do |t|
      t.text  :text
      t.timestamps
    end
  end
end
