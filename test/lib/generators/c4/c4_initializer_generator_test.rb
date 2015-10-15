require 'test_helper'
require 'generators/c4_initializer/c4_initializer_generator'

module C4
  class C4InitializerGeneratorTest < Rails::Generators::TestCase
    tests C4InitializerGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
