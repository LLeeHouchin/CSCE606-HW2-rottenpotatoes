module ApplicationHelper
  def sort_link(column, title)
    direction = column == params[:column] && params[:direction] == 'asc' ? 'desc' : 'asc'
    link_to title, { column: column, direction: direction }
  end
end
