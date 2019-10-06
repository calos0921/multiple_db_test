class Db2 < ActiveRecord::Base
  self.abstract_class = true
  octopus_establish_connection DB2
end
