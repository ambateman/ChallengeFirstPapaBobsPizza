using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsPizza
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            double dblTotal = 0.00;
            double dblCrustCost = 0.00;
            double dblSizeCost = 0.00;
            double dblToppingCost = 0.00;
            double dblDiscount = 0.00;

            //Now we get values for all of these variables if certain options are called for.
            //Note that there is no harm in pre-checking the lowest price crust or size because size and thickness
            //are mandatory for any order. If the customer wants to spring for the larger size or 
            //thicker crust, it's no different than them selecting those from no radio buttons checked.

            if (radSizeBaby.Checked)
            {
                dblSizeCost = 10.00;
            }
            else if (radSizeMama.Checked)
            {
                dblSizeCost = 13.00;
            }
            else    //Because a crust must be selected means that the final must be papa size.
            {
                dblSizeCost = 16.00;
            }

            //Now for the crust thickness:
            if (radCrustThick.Checked) dblCrustCost = 2.00; //since only one option has a cost associated with it.


            //Toppings are purely optional to any order, so naturally none are pre-checked.
            if (chkAnchovies.Checked) dblToppingCost += 2.00;
            if (chkGreenPeppers.Checked) dblToppingCost += 0.50;
            if (chkOnions.Checked) dblToppingCost += 0.75;
            if (chkPepperoni.Checked) dblToppingCost += 1.50;
            if (chkRedPeppers.Checked) dblToppingCost += 0.75;

            //finally, create a discount of $2.00 if one of two combinations is ordered:
            //create and intialize our boolean test variables.
            bool combo1 = false;
            bool combo2 = false;

            combo1 = chkPepperoni.Checked && chkGreenPeppers.Checked && chkAnchovies.Checked;
            combo2 = chkPepperoni.Checked && chkRedPeppers.Checked && chkOnions.Checked;
            if (combo1 || combo2) dblDiscount = -2.00; //subtract from the total

            //Now add all of these up;
            dblTotal = dblCrustCost + dblSizeCost + dblToppingCost + dblDiscount;

            //set the total label to show the price

            lblTotal.Text = "$" + dblTotal.ToString();

        }
    }
}