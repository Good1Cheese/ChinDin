namespace :phrases do
  desc 'Parse spreedsheet with data'
  task import: :environment do
    xlsx = Roo::Spreadsheet.open('./phrases.xlsx')

    s = xlsx.sheet(0)

    s.each_with_index(t: 'text', pr: 'pronunciation', l: 'literal_trans',
                      f: 'figurative_trans', st: 'structure', cl: 'class',
                      sb: 'subclass') do |row, row_index|
      next if row_index.zero?

      puts "#{row.inspect}\n #{row_index}"

      Phrase.create(
        text: row[:t],
        pronunciation: row[:pr],
        literal_trans: row[:l],
        figurative_trans: row[:f],
        structure: row[:st],
        gclass: row[:cl],
        subclass: row[:sb]
      )
    end
  end
end
