rails new b_app
cd b_app
bin/rails g model Person name:string email:string type:string
cd app/models

touch user.rb
echo "class User < Person has_many :accounts end ">>user.rb

touch admin.rb
echo "class Admin < Person has_many :posts end">>admin.rb

cd ../
cd ../
bin/rails g model Account name:string email:string type:string
bin/rails g model Post name:string email:string type:string

cd app/models

echo "class Account < ActiveRecord::Base belongs_to :admin end">>account.rb
echo "class Post < ActiveRecord::Base belongs_to :user end">>post.rb

rake db:migrate 
rails c
Person.create(name:'ashwini' email:'ashwini.yaraguppi1993@gmail.com' type:'user')
Person.create(name:'abhay' email:'abhay@gmail.com' type:'user')
Person.create(name:'teju' email:'teju@gmail.com' type:'user')

person.new
person.all
exit



