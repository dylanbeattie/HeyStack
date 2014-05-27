using System;
using System.Linq;
using System.Net;
using System.Text;
using ServiceStack;

namespace HeyStack.ServiceModel.Movies {

    [Api("ServiceStack Demonstration API")]
    [ApiResponse(HttpStatusCode.OK, "OK")]
    [ApiResponse(HttpStatusCode.InternalServerError, "Internal server error - something went wrong.")]
    [Route("/movies", "GET",
        Summary = "Return a list of movies from the HeyStack database",
        Notes = @"This service will return a list of all the movies in the application's database."
    )]
    public class GetMoviesDto {
        /* This class doesn't contain anything yet. */
        /* We could add filtering, search, etc. to this class in a later story */
    }

    [Api("ServiceStack Demonstration API")]
    [ApiResponse(HttpStatusCode.Created, "Created")]
    [ApiResponse(HttpStatusCode.InternalServerError, "Internal server error - something went wrong.")]
    [Route("/movies", "POST",
        Summary = "Add a movie to the database",
        Notes = @"Adds a new movie to the database, and return the newly-added movie."
    )]
    public class PostMovieDto {
        //[ApiMember(Name = "Title", Description = "The movie title", ParameterType = "body", DataType = "string")]
        public string Title { get; set; }
        //[ApiMember(Name = "Year", Description = "The year the movie was released", ParameterType = "body", DataType = "int")]
        public int Year { get; set; }
    }
}
