class AddProcessInfoToImpressions < ActiveRecord::Migration<%= Rails::VERSION::MAJOR >= 5 ? "[#{Rails.version.to_f}]" : "" %>
  def self.up
    add_column :impressions, :process_id, :string
    add_column :impressions, :thread_id, :string

  end

  def self.down
    remove_column :impressions, :process_id
    remove_column :impressions, :thread_id
  end
end