# rails-d3js-demo

This is a practice project for Rails and D3.js.

### Steps to run this project

Install required libraries:

```
bundle
```

Create a database:

```
rake db:create
rake db:migrate
```

Import the Bioassay data into the database:

```
rake import_data:assaystats
```

Start server and go to http://localhost:3000:

```
rails s
```

### Documents

Database schema: docs/db-schema.png

### Credits

- The data used in this project is from [http://life.ccs.miami.edu/life/statistics](http://life.ccs.miami.edu/life/statistics).
- The code for bar chart is modified based on [http://bl.ocks.org/mbostock/3885304](http://bl.ocks.org/mbostock/3885304).
