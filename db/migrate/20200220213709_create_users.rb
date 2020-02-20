# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :users do
      primary_key :id
      column :first_name, String
      column :last_name, String
      column :age, Integer

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
