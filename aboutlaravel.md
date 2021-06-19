# about laravel 
1 - yield is used to define a section in layout and it's constantly used to get content from a child page into a master page , so the app page is a master page and the index page is the child page

2 - files inside our resources directory(if you want to work with scss create folder scss and file app.scss and change webpack.mix.js file) will be exported into the public directory where there will be a css and javascript folder (ps : mix runs on webpack and in order to run webpack we need to set up a few tools node.js and npm install in your pc )

3 - run cmnd 'npm install' this will requiring all necessary packages

4- run cmnd 'npm run dev' to run webpack once and you need to run it one more time to work (this should compiled that two files in webpack.mix.js) ps : this cmnd compile just once 

5- run cmnd 'npm run watch' to compiling every time 

// Non fluent
DB::select(['table' => 'posts', 'where' => ['id' => 1]])
// Fluent
DB:table('posts')->where('id', 1)->get()
// important : to work with DB you have to use it in 'PostsController' file by typing:
use Illuminate\Support\Facades\DB;