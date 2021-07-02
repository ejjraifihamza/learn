# Install Tailwind CSS In Your Laravel Project:

Run this cmnd **npm install tailwindcss**.
So when the above command is run, the Tailwind CSS will be installed in your project.

## Import Tailwind CSS to Laravel

Now that Tailwind CSS is added to node_modules we are ready to use and import it into our Laravel, which I just created.
Navigate to <span style="color:red">**app.css**</span>. under resources/CSS path and replace the content with the following content.
```
@tailwind base;
 
@tailwind components;
 
@tailwind utilities;
```
The above directives will inject Tailwind’s base, components, and utilities into our app.

## Generate config file for Tailwind CSS

Up to this point, I have installed tailwind and imported it into our applications CSS. Now its time to generate the config file.
The config file is used by Laravel Mix when we build our CSS from the resources folder to the public folder’s <span style="color:red">**app.css**</span>.

There is a command which when run on a terminal or command prompt, will generate us the required config file.
So in your application’s root run the following command.

<span style="color:blue">***npx tailwind init***</span>

Now if you check your app’s root, you will notice a new file generated named <span style="color:red">**tailwind.config.js**</span>. Open it in your favorite text editor or an IDE and you should see the following code in it.

```
module.exports = {
  purge: [],
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
}
```

This is the default config file and you are free to make any changes required in this file. You can find more settings on this at Tailwind’s main docs — https://tailwindcss.com/docs/

## Add Tailwind to Laravel Mix

By now, almost everything is set, I have installed, imported, and also generated the tailwind’s config file. So its time to tell Laravel to use this setup we have done so far.

In Laravel’s mix that is in <span style="color:red">**webpack.mix.js**</span> which is located in the application’s root,  I need to tell Laravel to use Tailwind CSS.

Open the file(<span style="color:red">**webpack.mix.js**</span>) and replace it with the following code.

```
const mix = require('laravel-mix');
const tailwindcss = require('tailwindcss');
 
 
mix.js('resources/js/app.js', 'public/js')
    .postCss('resources/css/app.css', 'public/css', [
        require('tailwindcss'),
    ]);
```

## Build Laravel assets(Laravel Mix)

Now everything is ready, We just need to compile and run these together. As we have used npm in our project we can simply run <span style="color:blue">**npm run dev**</span> or <span style="color:blue">**npm run watch**</span>. When I run <span style="color:blue">**npm run dev**</span>, every time I make a change I should re-run the command whereas if I run <span style="color:blue">**npm run watch**</span>, it will automatically pick up any changes made. So I prefer running it with a watch command.

Before we run any of the two, first I need to run <span style="color:blue">**npm install**</span> for all the required node_modules to setup.

```
npm install
```

```
npm run watch
```

<span style="color:yellow">**congratulation now you have tailwind in your project**</span>