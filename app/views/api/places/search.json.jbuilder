
# <!-- <div class="results">
#   <% @search.each_hit_with_result do |hit, post| %>
#   <div class="result">
#     <h2>
#       <%= post.title %>
#     </h2>
#     <h6>
#       <%= #{hit.score} %>
#     </h6>
#     <p>
#       <%= truncate(post.body, :length => 100) %>
#     </p>
#   </div>
#   <% end %>
# </div>
# <div class="pagination">
#   <%= @search.results %>
# </div>
#  -->

# debugger
# json.search @search.each_hit_with_result do |hit, post|
#   json.title post.title
# end

json.array! @search.results do |result|
  json.extract! result, :title
end


# json.inspect @search.inspect
