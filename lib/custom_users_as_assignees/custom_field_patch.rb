module CustomUsersAsAssignees
  module CustomFieldPatch
    extend ActiveSupport::Concern

    included do
      safe_attributes 'use_as_assignee' if CustomField.respond_to? 'safe_attributes'
    end

    def is_computed=(arg)
      # cannot change is_computed of a saved custom field
      super if new_record?
    end
  end
end