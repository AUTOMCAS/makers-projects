require_relative "../lib/exercise.rb"

describe ClassTracker do
  describe 'add_task(task) method' do
    it 'given "Walk dog", expect ["Walk dog"]' do
      class_instance = ClassTracker.new
      expect(class_instance.add_task("Walk dog")).to eq ["Walk dog"]
    end
  end

  describe 'task_ticker(task_num) method' do
    it 'given 1 and @task_list contains ["Walk dog", "Clean", "Hoover"], expect ["Hoover"]' do
      class_instance = ClassTracker.new
      class_instance.add_task("Walk dog")
      class_instance.add_task("Clean")
      class_instance.add_task("Hoover")
      expect(class_instance.task_ticker(3)).to eq ["Walk dog", "Clean"]
    end
  end
end