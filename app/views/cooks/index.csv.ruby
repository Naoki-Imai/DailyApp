require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(title recipe url updated_at)
  csv << csv_column_names
  @cooks.each do |cook|
    column_values = [
      cook.title,
      cook.recipe,
      cook.url,
      cook.updated_at
    ]
    csv << column_values
  end
end