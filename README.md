##TODO List

##Description
This project creates a responsive todo list. You can add tasks and then mark them as unfinished.

##Setup
-Fork skeleton and todo list from jah2488's github account.
-Clone this repo
- `rake generate:migration <NAME>` to create a migration (Don't include the `<` `>` in your name, it should also start with a capital)
- `rake db:migrate` to run the migration and update the database
- Create models in lib that subclass `ActiveRecord::Base`
- ... ?

## Rundown

```
.
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
├── config
│   └── database.yml
├── console.rb
├── db
│   ├── dev.sqlite3
│   ├── migrate
│   │   └── 20150530110751_add_todo.rb
│   └── setup.rb
└── lib
    ├── all.rb
    ├── todo.rb
    └── todo_list.rb

```

##Comments
This project utilized jah2488's todolist repository. Here are the respective links: https://github.com/jah2488/todo-csv (the todolist) and https://github.com/tiy-austin-ror-may2015/model-skeleton (skeleton).
