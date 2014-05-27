using System.Linq;
using System.Web.Caching;
using HeyStack.Api.Server.Services.Data;
using HeyStack.ServiceModel.Movies;
using ServiceStack;

namespace HeyStack.Api.Server.Services {
    public class MovieService : Service {
        private readonly IMovieDatabase database;

        public MovieService(IMovieDatabase database) {
            this.database = database;
        }

        public MovieListResult Get(GetMoviesDto dto) {
            var movies = database.ListMovies();
            var entries = movies.Select(movie => movie.ConvertTo<MovieResult>()).ToList();
            return (new MovieListResult() { Entries = entries });
        }

        public MovieResult Post(PostMovieDto dto) {
            var movie = dto.ConvertTo<Movie>();
            movie = database.SaveMovie(movie);
            return (movie.ConvertTo<MovieResult>());
        }
    }
}