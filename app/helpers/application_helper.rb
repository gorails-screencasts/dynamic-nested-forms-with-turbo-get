module ApplicationHelper
  def turbo_id_for(obj, id_or_hash: false)
    id = if id_or_hash
           obj.id
         elsif obj.persisted?
           dom_id(obj)
         end

    id || obj.hash
  end
end
