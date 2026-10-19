module ApplicationHelper
  # def sort_link(column, title)
  #   direction = column == params[:column] && params[:direction] == 'asc' ? 'desc' : 'asc'
  #   link_to title, { column: column, direction: direction }
  # end
  def sort_link(column, title)
     direction =
       if column == @sort_column && @sort_direction == "asc"
         "desc"
       else
         "asc"
       end
     link_to title, movies_path(column: column, direction: direction)
   end
end
