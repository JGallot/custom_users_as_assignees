class AddCustomFieldsUseAsAssignee < ActiveRecord::Migration[4.2]
  def up
    add_column :custom_fields, :use_as_assignee, :boolean, :null => false, :default => false
  end

  def down
    remove_column :custom_fields, :use_as_assignee, :boolean
  end
end
