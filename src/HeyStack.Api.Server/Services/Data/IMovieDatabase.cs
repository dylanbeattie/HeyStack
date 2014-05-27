using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HeyStack.ServiceModel.Movies;

namespace HeyStack.Api.Server.Services.Data {
    public interface IMovieDatabase {
        IList<Movie> ListMovies();
        Movie SaveMovie(Movie movie);
    }
}