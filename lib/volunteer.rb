class Volunteer
  attr_reader(:name, :id)
  attr_accessor(:project_id)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @project_id = attributes.fetch(:project_id)
    @id = attributes.fetch(:id)
  end

  def save()
    result = DB.exec("INSERT INTO volunteers (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  def ==(another_volunteer)
    self.name().==(another_volunteer.name())
  end

  def self.all
    returned_volunteers = DB.exec("SELECT * FROM volunteers;")
    volunteers = []
    returned_volunteers.each() do |volunteer|
      name = volunteer.fetch("name")
      project_id = volunteer.fetch("project_id")
      id = volunteer.fetch("id").to_i()
      volunteers.push(Volunteer.new({:name => name, :project_id => project_id, :id => id}))
    end
  volunteers
  end

  def self.find(id)
    result = DB.exec("SELECT * FROM volunteers WHERE id = #{id};")
    name = result.first().fetch("name")
    Volunteer.new({:name => name, :id => id})
  end
end
