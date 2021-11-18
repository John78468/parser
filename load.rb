require 'csv'
require 'byebug'
require_relative 'writer.rb'
require_relative 'parser.rb'

class Load
  def call
    parser
    write
    #recover_csv_in_french(convert_to_a_of_to_a(array_one))
  end

  private

  def parser
    doc_csv = CSV.parse( File.read("./data/algeria_cities.csv"), headers: true)
    Parser.new(doc_csv).call
  end

  def write
    Writer.new(parser).call
  end
end