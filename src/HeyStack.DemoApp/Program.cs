using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HeyStack.ServiceModel.Status;
using ServiceStack;

namespace HeyStack.DemoApp {
    class Program {
        private const string ServiceUri = "http://localhost:58027/";
        static void Main(string[] args) {
            var client = new JsonServiceClient(ServiceUri);
            Console.WriteLine("Retrieving status from {0}", ServiceUri);
            var status = client.Get<StatusResultDto>(new GetStatusDto());
            Console.WriteLine(status.Status);
            Console.ReadKey(false);
        }
    }
}
