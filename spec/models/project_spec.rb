require 'rails_helper'

RSpec.describe Project do
  describe "initialization" do
    let(:project) { Project.new }
    let(:task) { Task.new }

    it "considers a project with no tasks to be done" do
      expect(project).to be_done
    end

    it "knows that a project with an incomplete task is not done" do
      task = Task.new
      project.tasks << task
      expect(project).not_to be_done
    end

    it "marks a project done if its tasks as done" do
      project.tasks << task
      task.mark_completed
      expect(project).to be_done
    end
  end
end
