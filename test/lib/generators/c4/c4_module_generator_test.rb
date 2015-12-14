require 'test_helper'
require 'generators/c4_module/c4_module_generator'

module C4
  class C4ModuleGeneratorTest < Rails::Generators::TestCase
    tests C4ModuleGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
