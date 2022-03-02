class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t| 
      t.string      :item_name
      t.integer     :value
      t.integer     :company_id    # FK ===> [COMPANY] id
      t.integer     :dev_id        # FK ===> [DEV]     id
    end
  end
end
