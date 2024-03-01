class BaseRepository
  def initialize(csv_file_path)
    @elements = []
    @csv_file_path = csv_file_path
    File.new(@csv_file_path, 'w') if File.exist?(@csv_file_path) == false
    load_csv
  end

  def create(element)
    element.id = @next_id
    @next_id += 1
    @elements << element
    save_csv
  end

  def all
    @elements
  end

  def find(element_id)
    @elements.find { |element| element.id == element_id }
  end
end
