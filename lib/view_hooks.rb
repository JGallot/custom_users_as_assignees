  class ViewHooks < Redmine::Hook::ViewListener
      render_on :view_custom_fields_form_upper_box,
                :partial => 'customFieldsFormUpperBox'
  end