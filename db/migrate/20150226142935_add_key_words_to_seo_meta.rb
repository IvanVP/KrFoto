class AddKeyWordsToSeoMeta < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :keywords, :string
  end
end
