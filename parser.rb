require 'byebug'

class Parser
  def initialize (col_select)
    @col_select = col_select
  end
  def call
    read_csv
  end
  
    def read_csv
      @col_select.map(&:to_h).map do |hash|
        hash.fetch_values("commune_name", "daira_name_ascii", "wilaya_name_ascii")
      end
    end
end
#@col_select = CSV.parse(File.read("algeria_cities.csv"), headers: true)
