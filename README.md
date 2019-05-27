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

```
Rails.application.routes.draw do
  resources :dogs
end
```

or 

```
Rails.application.routes.draw do
get 'dogs/index'
get 'dogs/show'
get 'dogs/new'
get 'dogs/edit'
end
```

