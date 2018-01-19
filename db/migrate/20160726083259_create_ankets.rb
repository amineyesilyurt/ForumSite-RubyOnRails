class CreateAnkets < ActiveRecord::Migration
  def change
    create_table :ankets do |t|
      t.string :cinsiyet
      t.string :egitim
      t.date :dogum
      t.references :user, index: true
      t.string :kelime

      t.timestamps
    end
  end
end
