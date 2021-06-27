# Mass assignment is when you send an array to the model creation
## define which column(s) can be mass assigned 
```
$car = Car::create([
            'name' => $request->input('name'),
            'founded' => $request->input('founded'),
            'description' => $request->input('description')
        ]); 
```
## you should define which model attributes you want to make mass assignable
### so in your car model you should add 
```
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'founded', 'description'];

```

## If you would like to make all of your attributes mass assignable
```
    /**
    * The attributes that aren't mass assignable.
    *
    * @var array
    */
    protected $guarded = [];
```

read more about mass assignment [mass assignment](https://stackoverflow.com/questions/22279435/what-does-mass-assignment-mean-in-laravel).