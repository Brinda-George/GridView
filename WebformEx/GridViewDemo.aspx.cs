using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformEx
{
    public partial class GridViewDemo : System.Web.UI.Page
    {
        static List<Employee> empList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BuildDataSet();
                BindData();
            }
        }
        private void BuildDataSet()
        {
            empList = new List<Employee>();
            empList.Add(new Employee { EmpId = 1, FirstName = "Brinda", LastName = "George" });
            empList.Add(new Employee { EmpId = 2, FirstName = "Meenu", LastName = "Mathew" });
            empList.Add(new Employee { EmpId = 3, FirstName = "Georgia", LastName = "Peter" });
            empList.Add(new Employee { EmpId = 4, FirstName = "Anjana", LastName = "Saly" });
        }
        private void BindData()
        {
            GridViewEmployee.DataSource = empList;
            GridViewEmployee.DataBind();
        }
        protected void GridViewEmployee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewEmployee.EditIndex = e.NewEditIndex;
            BindData();
        }
        protected void GridViewEmployee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewEmployee.EditIndex = -1;
            BindData();
        }
        protected void GridViewEmployee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            empList.RemoveAt(e.RowIndex);
            BindData();
        }
        protected void GridViewEmployee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var employee = empList[e.RowIndex];
            employee.FirstName = ((TextBox)GridViewEmployee.Rows[e.RowIndex].FindControl("txtFirstName")).Text;
            employee.LastName = ((TextBox)GridViewEmployee.Rows[e.RowIndex].FindControl("txtLastName")).Text;
            GridViewEmployee.EditIndex = -1;
            BindData();
        }
        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            empList.Add(new Employee
            {
                EmpId = empList.Count() + 1,
                FirstName = txtAddFirstName.Text,
                LastName = txtAddLastName.Text
            });
            BindData();
        }
    }
    public class Employee
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int EmpId { get; set; }
    }
}