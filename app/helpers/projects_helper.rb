module ProjectsHelper
  def associated_tasks_prefix(task)
    new_or_existing = task.new_record? ? "new" : "existing"
    # "project[#{new_or_existing}_task_attributes][]"
    "project[tasks_attributes][]"
  end
end
