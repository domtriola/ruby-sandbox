class MazeSolver
  attr_accessor :maze, :solution

  def initialize(maze)
    @maze = to_linked_list(maze)
    @queue = Queue.new
  end

  def solve
    map_paths
    @solution = best_path
    display_solution
  end

  private

    DIRECTIONS = {
      n: [0, 1],
      e: [1, 0],
      s: [0, -1],
      w: [-1, 0],
    }

    # use these DIRECTIONS for diagonal movement
    # DIRECTIONS = {
    #   n:  [0, 1],
    #   ne: [1, 1],
    #   e:  [1, 0],
    #   se: [1, -1],
    #   s:  [0, -1],
    #   sw: [-1, -1],
    #   w:  [-1, 0],
    #   nw: [-1, 1],
    # }

    def method_missing(method)
      m = method.to_s.split("_")
      if m[0] == "display"
        display(instance_variable_get("@" + m[1]))
      else
        puts "No method found with the name: #{m}"
      end
    end

    def display(maze)
      puts maze.map { |id, item| item }.join
    end

    def to_linked_list(maze)
      list = {}
      maze.each_with_index do |row, y|
        row.each_char.with_index do |item, x|
          list["#{x}_#{y}"] = item
          @start = "#{x}_#{y}" if item == "S"
          @end = "#{x}_#{y}" if item == "E"
        end
      end
      list
    end

    def map_paths
      @paths = @maze.dup
      @queue.enqueue(@start)
      until @queue.empty?
        look_around
      end
    end

    def look_around
      location = @queue.dequeue
      loc_vector = Vector.new(*location.split("_").map(&:to_i))
      DIRECTIONS.each do |dir, vector|
        view = loc_vector.add(Vector.new(*vector))
        id = "#{view.x}_#{view.y}"
        if @paths[id] == " "
          @paths[id] = (@paths[location].to_i + 1).to_s
          @queue.enqueue(id)
        end
      end
    end

    def best_path
      path = @maze.dup
      pos = Vector.new(*@end.split("_").map(&:to_i))
      finished = false
      until finished
        step = find_min_neighbor(pos)
        if step == "S"
          finished = true
        else
          path[step] = "x"
          pos = Vector.new(*step.split("_").map(&:to_i))
        end
      end
      path
    end

    def find_min_neighbor(pos)
      neighbor = nil
      min = nil
      DIRECTIONS.each do |dir, vector|
        view = pos.add(Vector.new(*vector))
        id = "#{view.x}_#{view.y}"
        value = @paths[id]
        if value == "S"
          return "S"
        elsif value =~ /[0-9]/ && (neighbor == nil || value.to_i < min)
          neighbor = id
          min = value.to_i
        end
      end
      neighbor
    end
end

class Vector
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def add(other)
    Vector.new(@x + other.x, @y + other.y)
  end
end

# given its own class for the sake of conceptualization
class Queue
  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enqueue(id)
    @queue.unshift(id)
  end

  def dequeue
    @queue.pop
  end

  def empty?
    @queue.empty?
  end
end

if __FILE__ == $PROGRAM_NAME
  maze_file = ARGV[0]
  maze = File.readlines(maze_file)
  solver = MazeSolver.new(maze)
  solver.display_maze
  solver.solve
end
