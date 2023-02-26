class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :movie, nul: false, foreing_key: true
      t.references :list, nul: false, foreing_key: true

      t.timestamps
    end
  end
end
