using System.Collections.Generic;

namespace HeyStack.ServiceModel.Movies {
    public class MovieListResult {
        public IList<MovieResult> Entries { get; set; }
    }
}