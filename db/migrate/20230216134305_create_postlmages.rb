class CreatePostlmages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      # 必要なカラムを追加　アプリ２−８より
      t.string :shop_name
      t.text :caption
      t.timestamps
    end
  end
end
