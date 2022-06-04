class Dog

    attr_reader :id, :name, :breed

    def initialize(id: nil, name:, breed:)
        @id = id
        @name = name
        @breed = breed
    end

    def self.create_table
        sql = <<-SQL
        CREATE TABLE IF EXISTS dogs (
          id INTEGER PRIMARY KEY,
          name TEXT,
          album TEXT
        )
      SQL
      DB[:conn].execute(sql)
    end


end
