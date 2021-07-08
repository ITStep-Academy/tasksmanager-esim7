using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lesson3
{
    public class Task
    {
        public Task(string title)
        {
            Title = title;
        }
        public Guid Id { get; set; } = Guid.NewGuid();
        public string Title { get; set; }
    }



    public partial class FirstForm : System.Web.UI.Page
    {
        public List<Task> TodoList = new List<Task>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TodoList"] == null)
            {
                Session["TodoList"] = TodoList;
            }
            TodoList = (List<Task>)Session["TodoList"];

            taskRepeat.DataSource = TodoList;
            DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {

            if (TextBox.Text != string.Empty)
            {
                var newTask = new Task(TextBox.Text);
                TodoList.Add(newTask);
            }
            taskRepeat.DataSource = TodoList;
            DataBind();
        }
    }
}