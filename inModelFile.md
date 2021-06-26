// if You noticed we dont define any where that that specific model need to intract with specific table in our database thats bcz default behavior for table name in laravel is snake cases and it pluralizes your class name, and there are the way to manipulate this and to give a diffrent name and to do that we need to create a new property like down below;
protected $table = 'your table name';
// and also you can manipulate tha primary key:
protected $table = 'your column name';
// if you just dont want your primary key, set the value of your primary key to false 
protected $table = false;