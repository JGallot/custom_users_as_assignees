require File.expand_path('lib/custom_users_as_assignees', __dir__)
require File.expand_path('lib/view_hooks.rb',__dir__)

unless Issue.included_modules.include? CustomUsersAsAssignees::IssuePatch
  Issue.send :include, CustomUsersAsAssignees::IssuePatch
end
unless User.included_modules.include? CustomUsersAsAssignees::UserPatch
  User.send :include, CustomUsersAsAssignees::UserPatch
end

unless IssueQuery.included_modules.include? CustomUsersAsAssignees::IssueQueryPatch
  IssueQuery.send :include, CustomUsersAsAssignees::IssueQueryPatch
end
unless Mailer.included_modules.include? CustomUsersAsAssignees::MailerPatch
  Mailer.send :include, CustomUsersAsAssignees::MailerPatch
end

unless CustomField.included_modules.include?(CustomUsersAsAssignees::CustomFieldPatch)
  CustomField.send :include, CustomUsersAsAssignees::CustomFieldPatch
end

Redmine::Plugin.register :custom_users_as_assignees do
  name 'Expand Custom Users as Assignees plugin'
  author 'Jérôme GALLOT'
  description 'Redmine plugin for adding assignee functionality includes default query and reminder to custom users'
  version '0.3'
  url 'https://github.com/JGallot/custom_users_as_assignees'
  author_url 'https://github.com/JGallot/'
end
