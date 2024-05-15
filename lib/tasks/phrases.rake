# require 'roo'
#
# xlsx = Roo::Spreadsheet.open('./phrases.xlsx')
# s = xlsx.sheet(0)
#
# s.each_with_index(t: 'text', pr: 'pronunciation', l: 'literal_trans',
#                   f: 'figurative_trans', st: 'structure', cl: 'class',
#                   sb: 'subclass') do |row, row_index|
#                     puts "#{row.inspect}\n #{row_index}"
#                   end


namespace :phrases do
  desc "TODO"
  task import: :environment do
  end

end
