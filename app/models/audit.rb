class Audit < ActiveRecord::Base  
  resourcify
  paginates_per  10
  filterrific(available_filters: [:sorted_by_tabla, :created_at_lt, :sorted_by_usuario,:created_at_lta])
  scope :sorted_by_tabla, lambda{ |tabla|where(:auditable_type => [*tabla])}
  scope :created_at_lt, lambda { |reference_time| where('audits.created_at >= ?', reference_time)}
  scope :created_at_lta, lambda { |reference_time| where('audits.created_at <= ?', reference_time)}
  def self.options_for_sorted_by_tabla
    order('(auditable_type)').map { |e| [e.auditable_type] }.uniq
  end
  def self.search(term, page)
  if term
    where('name LIKE ?', "%#{term}%").order('id DESC').page(current_page)
  else
    # note: default is all, just sorted
    order('id DESC').page(current_page) 
  end
end
end