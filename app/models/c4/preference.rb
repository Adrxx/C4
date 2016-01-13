module C4
  class Preference < ActiveRecord::Base
      serialize :values, JSON

  end
end
