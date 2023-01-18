using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Week7TestProgram
{
    public partial class validationForm : System.Web.UI.Page
    {
        private SqlConnection conObj = null;
        private SqlCommand cmdObj = null;

        public object LblMessage { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRcon"].ConnectionString))
            {
                using (cmdObj = new SqlCommand("usp_PositionDetails", conObj))
                {
                    cmdObj.CommandType = CommandType.StoredProcedure;
                    cmdObj.Parameters.AddWithValue("@PositionCode", TxtPositionCode.Text);
                    cmdObj.Parameters.AddWithValue("@Description", TxtDescription.Text);
                    cmdObj.Parameters.AddWithValue("@Year", DdlYear.SelectedValue);

                    cmdObj.Parameters.AddWithValue("@BudgetStrength", TxtBudgetedStrength.Text);
                    cmdObj.Parameters.AddWithValue("@CurrentStrength", TxtStrength.Text);






                    if (conObj.State == ConnectionState.Closed)
                    {
                        conObj.Open();
                    }

                    int res = cmdObj.ExecuteNonQuery();
                    if (res > 0)
                    {
                       // LblMessage.Text = " Strength created sucessfully";
                    }
                }
            }


        }

        protected void BtnReset_Click(object sender, EventArgs e)

        {
            ResetControls();
        }
          


            public void ResetControls()
            {
                TxtPositionCode.Text = "";
                TxtDescription.Text = "";
                TxtBudgetedStrength.Text = "";
                TxtStrength.Text = "";
            }
        
    }
    }
