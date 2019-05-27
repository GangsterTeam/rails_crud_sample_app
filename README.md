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
**views/samples/show.html.erb**
```ruby
<h1><%= @sample.name %></h1>
```
8. create a sample record

**app/controllers/samples_controller.rb**
```ruby
def new
  @sample = Sample.new
end

def create
  sample = Sample.create(sample_params)
  redirect_to samples_path
end

private
def sample_params
  params.require(:sample).permit(:name)
end
```
**views/samples/new.html.erb**
```ruby
<h3>Create a Sample</h3>
<%= form_with model: @sample do |form| %>
  <%= form.text_field :name, placeholder: "name" %>
  <%= form.submit %>
<% end %>
```
9. Update part
**app/controllers/samples_controller.rb**
```ruby
def edit
  @sample = Sample.find(params[:id])
end
def update
  @sample = Sample.find(params[:id])
  @Sample.update(sample_params)
  redirect_to sample_path(@sample)
end
private
  def sample_params
  params.require(:sample).permit(:name)
end
```
**views/samples/edit.html.erb**
```ruby
<h3>Update Sample Details</h3>
<%= form_with model: @sample do |form| %>
  <%= form.text_field :name, placeholder: "name" %>
  <%= form.submit %>
<% end %>
```
10. Delete part
**app/controllers/samples_controller.rb**
```ruby
def destroy
  @sample = Sample.find(params[:id])
  @sample.destroy
  redirect_to samples_path
end
```
**views/samples/show.html.erb**
```ruby
<%= link_to 'Remove', @sample, method: :delete, data: { confirm: 'Are you sure?' } %>
```

## Here we Goo..
![CrudSampleonlinevideocutter](https://user-images.githubusercontent.com/4152211/58434843-51cb9380-80db-11e9-9b64-47fa6baa1c68.gif)
![crud_app_rails](https://user-images.githubusercontent.com/4152211/58434368-ec76a300-80d8-11e9-870f-1ab54b8307f1.png)
