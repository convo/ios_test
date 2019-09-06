# The Movie DB Client (test)

## Instructions

 - You have to create an app that cosumes a Json from The Movie DB API, there is no need to use all the info that comes on it.
 - We recommend you to use swift, but you can use Objective-C if you want.
 - We will be online to answer any question.
 - Use the best practices, approaches, design patterns, etc. that you know, this test is oriented on **how you do it** and not much on how much you do, so use your time wisely
 - Ask us for the API Token when you start, we will provide you one.
 
**Important:  When you finish, do a last commit of you changes to this repo, and let us know that you finish, any later commit will be IGNORED!!**

## API
The Movie DB API documentation is here `https://www.themoviedb.org/documentation/api`, but for this test you can use the following URL's.

 - List of movies with Liam Neeson sorted by popularity
 `http://api.themoviedb.org/3/discover/movie?with_cast=3896&sort_by=popularity.desc&api_key=XXXXX`
    
 - Movie poster
 `http://image.tmdb.org/t/p/w185[poster_path]`

## Design
You can add as much detail to the app as you want, but again, you have a limited time.
With the movies list from the json, you will create a table showing each movie title.
If user touch any of the rows, the app will show a 2nd view which will present the title, the description and and the poster of the movie selected. (See the wireframe below)
The only restriction that you have is that **you can't use interface builder or storyboard**, you have to code the UI and use auto layout.

### Wireframe Link
`https://docs.google.com/presentation/d/1gcQ_MXhnk4iXikCf8Hf48ROrt2gOB6je1ozT4pjgSfI/edit?usp=sharing`
