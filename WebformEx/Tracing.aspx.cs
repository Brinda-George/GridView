using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformEx.Models;

namespace WebformEx
{
    public partial class Tracing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["master"] = "New Session";
            Application["test"] = 0;
            if (!IsPostBack)
                Session["Tester"] = new TestClass { ID = 1, Name = "John Doe" };
        }
        private void Createperson()
        {
            List<Person> person = new List<Person>();
            person.Add(new Person
            {
                FirstName = "Brinda",
                LastName = "George"
            });
            Session["Person"] = person;
            if (Trace.IsEnabled)
            {
                Trace.Write("Session Created!!");
            }
        }
        protected void btnSession_Click(object sender, EventArgs e)
        {
            Createperson();
        }
        protected void btnDelete_Click(object sender, EventArgs ex)
        {
            var person = (List<Person>)Session["Person"];
            try
            {
                person.RemoveAt(0);
                Trace.Write("Session Deleted!!");
            }
            catch(Exception exception)
            {
                Trace.Warn(exception.Message);
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
    [Serializable]
    public class TestClass
    {
        public int ID { get; set; }
        public string Name { get; set; }
    }
}