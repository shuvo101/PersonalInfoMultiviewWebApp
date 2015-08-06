using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalInfoMultiviewWebApp
{
    public partial class PersonalInfoInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnGoToStep2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnBackStep1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnGoToStep3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            lblName.Text =" " + NameTextBox.Text;
            lblFatherName.Text = " " + FatherNameTextBox.Text;
            lblMotherName.Text = " " + MotherTextBox.Text;
            lblGender.Text = " " + GenderDropDownList.SelectedValue;
            lblEmail.Text = " " + EmailTextBox.Text;
            lblphone.Text = " " + PhoneTextBox.Text;
            lblDistrict.Text = " " + DistrictTextBox.Text;
        }

        protected void btnGoToStepTwo2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Confirmation.aspx");
        }
    }
}