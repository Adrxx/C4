require 'devise'
require 'sass-rails'
require 'coffee-rails'
require 'jquery-rails'
require "c4/engine"

module C4
  class ActionView::Helpers::FormBuilder

    %w(text_field text_area password_field).each do |name|

      define_method("c4_#{name}") do |label,title,placeholder, *args|
        extracted = args.extract_options!
        extracted[:class] = "#{extracted[:class]} u-full-width"
        extracted[:placeholder] = placeholder
        args << extracted

        errors = object.errors[label].map do |m|
          @template.content_tag :div, m, class: 'error-message'
        end

        label(label, title) + eval("#{name}(label, *args)") + errors.join("\n")
      end
    end



  end

end
