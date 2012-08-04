module ClientSideValidations
  module Formtastic
    module FormBuilder

      def self.included(base)
        base.class_eval do
          def client_side_form_settings(options, form_helper)
            {
              :type => self.class.to_s,
              :inline_error_class => ::FormtasticBootstrap::FormBuilder.default_inline_error_class
            }
          end
        end
      end

    end
  end
end

FormtasticBootstrap::FormBuilder.send(:include, ClientSideValidations::Formtastic::FormBuilder)

