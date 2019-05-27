# README
## Simple CRUD Application using Rails 

* Create
* Read
* Update
* Delete

### Ruby version - 2.6
### Rails version - 5.2.3

1. create new rails application ```rails new rails_crud_sample_app```
2. chnage location ```cd rails_crud_sample_app```
3. create model ```rails g model sample name```
4. create controller ```rails g controller samples index show new edit```
5. config/routes.rb

```ruby
Rails.application.routes.draw do
  resources :samples
end
```
or 
```ruby
Rails.application.routes.draw do
get 'samples/index'
get 'samples/show'
get 'samples/new'
get 'samples/edit'
end
```
6. ```rake db:migrate```

7.Get / Show the list

**app/controllers/samples_controller.rb**
```ruby
def index
@samples = Sample.all
end
```
**views/samples/index.html.erb**
```ruby
<ul>
  <% @samples.each do |sample| %>
    <li><%= link_to sample.name, sample_path(sample)  %></li>
  <% end %>
</ul>
```
**app/controllers/samples_controller.rb**
```ruby
def show
@sample = Sample.find(params[:id])
end
```

