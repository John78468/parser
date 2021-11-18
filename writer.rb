require 'csv'
require 'byebug'

class Writer
  def initialize(array)
    @array = array
  end
  
    def call
      recover_csv_in_french
    end
  private

  def recover_csv_in_french
    CSV.open("french.csv", "a+") do |row|
      row << ["commune_name_ascii", "daira_name_ascii", "wilaya_name_ascii"]
      @array.each do | arr|
        row <<   arr
      end
    end
  end
end