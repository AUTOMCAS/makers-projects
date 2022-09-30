require 'cohort_repository'

def reset_name_table
  seed_sql = File.read('spec/seeds_student_directory_2.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'student_directory_3' })
  connection.exec(seed_sql)
end

describe CohortRepository do
  before(:each) do 
    reset_name_table
  end
  it "returns all cohorts" do
    repo = CohortRepository.new

    cohorts = repo.all

    expect(cohorts.length).to eq 2
    expect(cohorts[0].id).to eq "1"
    expect(cohorts[0].name).to eq 'April 2022'
  end

  it 'finds the cohort we want' do
    repo = CohortRepository.new
    cohort = repo.finds_with_students(1)

    expect(cohort.students.length).to eq 1 
  end
end
