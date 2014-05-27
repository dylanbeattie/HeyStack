using System.Collections.Generic;
using ServiceStack.Data;
using ServiceStack.OrmLite;

namespace HeyStack.Api.Server.Services.Data {
    public class SqlMovieDatabase : IMovieDatabase {
        private readonly IDbConnectionFactory dbFactory;

        public SqlMovieDatabase(IDbConnectionFactory dbFactory) {
            this.dbFactory = dbFactory;
        }

        public Movie SaveMovie(Movie movie) {
            using (var connection = dbFactory.OpenDbConnection()) {
                connection.Save(movie);
            }
            return (movie);
        }

        public IList<Movie> ListMovies() {
            using (var connection = dbFactory.OpenDbConnection()) {
                return (connection.Select<Movie>());
            }
        }
    }
}