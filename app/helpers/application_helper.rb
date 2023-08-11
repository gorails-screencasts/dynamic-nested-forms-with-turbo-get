module ApplicationHelper
  def turbo_id_for(obj)
    obj.persisted? ? obj.id : obj.hash
  end
end
