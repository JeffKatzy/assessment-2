class Restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    location: "TEXT",
    owner_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def owner
    SELECT owner.* FROM owners
    INNER JOIN restaurants ON owner.id = restaurants.owner_id
    WHERE restaurants.owner_id=?
  end
  self.class.db.execute(sql, self.owner_id)

end
