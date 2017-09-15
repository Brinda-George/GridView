using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebformEx.Models
{
    [Serializable]
    public class Person
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FullName
        {
            get
            {
                return string.Concat(FirstName, LastName);
            }
            set
            {
                FullName = string.Concat(FirstName, LastName);
            }
        }
    }
}