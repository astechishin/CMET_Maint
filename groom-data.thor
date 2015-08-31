require "csv"

class GroomData < Thor
  desc 'generate_versions SOURCE_CSV_FILE',
    'Process the CSV input to generate an output CSV containing unique CMET and version'
  method_option :out, type: :string, default: 'db/load_data/input-data/01-02-cmet_versions.csv'
  def generate_versions(csv_file)
    cmets = {}
    the_date = Date.today

    CSV.foreach(csv_file, :headers => true) do |row|
      unless cmets.has_key?(row[0])
        cmets[row[0]] = {}
      end
      cmet = cmets[row[0]]

      cmet[row[3]] = {ballot: row[2], status: row[5], notes: row[6]}
    end

    new_csv = CSV.open(options[:out], 'w')
    id = 1
    new_csv << ['id','cmet_id','realm','status','status_date','notes','created','updated']
    cmets.keys.sort.each do |cmet|

      cmets[cmet].each_pair do |release, rel_data|
        ballot_yr = rel_data[:ballot][0..3]
        ballot_cycle = rel_data[:ballot][4..6]
        puts "#{cmet}--#{release} #{ballot_yr}-#{ballot_cycle}"
        #id, cmet_id,realm,release,status,status_date,notes,created,updated
        new_csv << [id, cmet, 'UV', release, "#{ballot_yr}-#{ballot_cycle}",rel_data[:status] ]
        id += 1
      end
    end

    new_csv.close
  end

  desc 'generate_ballots SOURCE_CSV_FILE',
    'Process the CSV input file to generate a CSV list of actual ballots for the supplied WorkGroup'
  method_option :work_group, type: :string, default: "MnM"
  def generate_ballots(csv_file)

  end
end
