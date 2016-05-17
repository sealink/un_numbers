module UnNumbers
  class Loader
    attr_reader :un_codes

    def load
      lines = file.lines
      headers = lines.shift
      @un_codes = lines.map do |line|
        columns = line.strip.split('|')
        UnNumber.new(
          number:      columns[0],
          variant:     columns[1],
          name:        columns[2],
          description: columns[3],
          valid_from:  columns[4],
          valid_to:    columns[5]
        )
      end
    end

    def file
      @file ||= File.read('tmp/CVL.txt')
    end
  end
end
