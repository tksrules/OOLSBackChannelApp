<%= form_for(@post) do |f| %>
  <% if @post.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(@post.errors.count, "error") %> prohibited this post from being saved:</h2>

      <ul>
      <% @post.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
      </ul>
    </div>
  <% end %>


  <div class="field">
    <%= f.label :category %><br />
    <select name="categories" id="categorylist">
      <%= options_for_select [
                                     ['general',           'general'],
                                     ['important',          'important']

                             ] %>
    </select>

  </div>

    <div class="field">
      <%= f.label :content %><br />
      <%= f.text_field :content, :size => "100" %>
    </div>

  <div class="actions">
    <%= f.submit %>
  </div>
<% end %>
