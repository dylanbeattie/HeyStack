using ServiceStack.DataAnnotations;

namespace HeyStack.Api.Server.Services.Data {
    public class Movie {
        [AutoIncrement]
        public int Id { get; set; }
        public string Title { get; set; }
        public int Year { get; set; }
    }
}