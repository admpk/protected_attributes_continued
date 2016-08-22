require "active_model/mass_assignment_security"
require "protected_attributes_continued/railtie" if defined? Rails::Railtie
require "protected_attributes_continued/version"

ActiveSupport.on_load :active_record do
  require "active_record/mass_assignment_security"
end

ActiveSupport.on_load :action_controller do
  require "action_controller/accessible_params_wrapper"
end

module ProtectedAttributesContinued
end