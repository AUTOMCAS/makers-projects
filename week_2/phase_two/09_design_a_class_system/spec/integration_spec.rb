require_relative "../lib/diary"
require_relative "../lib/diary_entry"
require_relative "../lib/todo_list"
require_relative "../lib/todo"

describe "integration" do
  context "An entry has been added" do
    it "all_entries returns list containing single entry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "A dark day")
      diary.add(entry_1)
      expect(diary.all_entries).to eq [entry_1]
    end
  end

  context "multiple entries have been added" do
    it "all_entries returns list containing multiple entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "A dark day")
      entry_2 = DiaryEntry.new("Friday", "A bright day")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.all_entries).to eq [entry_1, entry_2]
    end

    describe "count_words behaviour" do
      it "returns word count of all entries" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("Monday", "A dark day")
        entry_2 = DiaryEntry.new("Friday", "A bright day today yes")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.count_words).to eq 8
      end
    end

    describe "readable entries in time behaviour" do
      context "Given 5 word entry 5 word per min, 1 min for time" do
        describe "readable_entries_in_time(wpm, time) method" do
            it "Return diary entry which fits the time and wpm exactly" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("Monday", "A dark day A bright day today yes")
            entry_2 = DiaryEntry.new("Friday", "A bright day today yes")
            diary.add(entry_1)
            diary.add(entry_2)
            result = diary.readable_entries_in_time(5, 1)
            expect(result).to eq entry_2
          end
        end

        context "given  3 entries, one too long, one short, one a word less." do
          it "Return diary entry which best fits the time and wpm" do       
            diary = Diary.new
            best = DiaryEntry.new("Friday", "A bright day today yes")
            entry_1 = DiaryEntry.new("Monday", "A dark")
            entry_3 = DiaryEntry.new("Friday", "A bright day today yes is it not")
            diary.add(best)
            diary.add(entry_1)
            diary.add(entry_3)
            result = diary.readable_entries_in_time(5, 1)
            expect(result).to eq best
          end
        end

        context "given one entry, cannot be read in time" do
          it "returns nil" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("Monday", "A dark night")
            diary.add(entry_1)
            expect(diary.readable_entries_in_time(1, 1)).to eq nil
          end
        end

        context "given wpm as 0" do
          it "fails" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("Monday", "A dark night")
            diary.add(entry_1)
            expect{ diary.readable_entries_in_time(0, 1) }.to raise_error "WPM must be above 0"
          end
        end
      end
    end

    describe "return_contacts" do
      context "given one entry with one number" do 
        it "returns list containing mobile phone number" do
          diary = Diary.new
          entry_1 = DiaryEntry.new("Friday", "A bright day 07911123456")
          diary.add(entry_1)
          expect(diary.return_contacts).to eq ["07911123456"]
        end
      end
      context "given two entries, one containing a number" do 
        it "returns list one number" do
          diary = Diary.new
          entry_1 = DiaryEntry.new("Monday", "A dark day")
          entry_2 = DiaryEntry.new("Friday", "A bright day 07911123456")
          diary.add(entry_1)
          diary.add(entry_2)
          expect(diary.return_contacts).to eq ["07911123456"]
        end
      end

      context "given three entries, two containing a number" do 
        it "returns list of 2 numbers" do
          diary = Diary.new
          entry_1 = DiaryEntry.new("Monday", "A dark day")
          entry_2 = DiaryEntry.new("Friday", "A bright day 07911123456")
          entry_3 = DiaryEntry.new("Friday", "A bright day 07911128888")
          diary.add(entry_1)
          diary.add(entry_2)
          diary.add(entry_3)
          expect(diary.return_contacts).to eq ["07911123456", "07911128888"]
        end
      end
    end
  end

  describe "todolist_incomplete behaviour" do
    context "given a single task" do
      it "returns a list of single task" do
        diary = Diary.new
        task = Todo.new("Walk dog")
        diary.todolist_add(task)
        expect(diary.todolist_incomplete).to eq [task]
      end
    end
  
    context "given multiple tasks" do
      it "returns a list of all tasks" do
        diary = Diary.new
        task_1 = Todo.new("Walk dog")
        task_2 = Todo.new("Hoover")
        diary.todolist_add(task_1)
        diary.todolist_add(task_2)
        expect(diary.todolist_incomplete).to eq [task_1, task_2]
      end

      it "returns a list of all tasks" do
        diary = Diary.new
        task_1 = Todo.new("Walk dog")
        task_2 = Todo.new("Hoover")
        diary.todolist_add(task_1)
        diary.todolist_add(task_2)
        expect(diary.todolist_incomplete).to eq [task_1, task_2]
      end
    end
  end

  describe "todolist_complete behaviour" do
    it "returns only complete tasks" do
      diary = Diary.new
      task_1 = Todo.new("Walk dog")
      task_2 = Todo.new("Hoover")
      task_2.mark_done
      diary.todolist_add(task_1)
      diary.todolist_add(task_2)
      expect(diary.todolist_complete).to eq [task_2]
    end
  end
end