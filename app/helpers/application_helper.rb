module ApplicationHelper
 def browse_need_url(options={})
    url="/browse_needs"
    return url if options.blank?
    url <<  "/category/#{options[:category_id]}" unless options[:category_id].blank?
    url <<  "/urgency/#{options[:urgency_id]}" unless options[:urgency_id].blank?
    url <<  "/district/#{options[:district_id]}" unless options[:district_id].blank?
    return url
  end
end
