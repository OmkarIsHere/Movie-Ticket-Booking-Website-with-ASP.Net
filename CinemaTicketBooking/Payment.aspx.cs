using InstamojoAPI;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class Payment : System.Web.UI.Page
    {
        int totalamount;

        public object JsonConvert { get; private set; }

        protected void LinkButton_paytm_Click(object sender, EventArgs e)
        {
            

            displayotherpayments();
        }

        protected void LinkButton_google_pay_Click(object sender, EventArgs e)
        {
                displayotherpayments();
        }

        protected void displayotherpayments()
        {
            panel_other_type.Style.Add("display", "block");
            panel_upi.Style.Add("display", "none");
        }

        protected void LinkButton_phone_pay_Click(object sender, EventArgs e)
        {
            displayotherpayments();
        }

        protected void LinkButton_upi_Click(object sender, EventArgs e)
        {
            panel_upi.Style.Add("display", "block");
            panel_other_type.Style.Add("display", "none");
        }

        protected void calculateTotal()
        {
            String s = Label9.Text.ToString().Remove(0,4);

            Double TicketPrice = Convert.ToDouble(s);
            Double convFees = 18.00;
            Double gst = TicketPrice * 2 / 100;
            Double total = TicketPrice + convFees + gst;

            Label11.Text = "INR " + gst.ToString();
            Label10.Text = "INR " + convFees.ToString() + ".00";
            Label13.Text = total.ToString();
        }

        protected String generateOrderId()
        {
            Random r = new Random();
            String orderId = "LYNX" + Convert.ToString(r.Next(10000, 29999));
            return orderId;
        }
        protected void Button1_make_payment_Click(object sender, EventArgs e)
        {
            if (Text1.Text != "" && Text2.Text != "" && Text3.Text != "")
            {
                String name = Text1.Text;
                String email = Text2.Text;
                String Number = Text3.Text;


                {
                    String Instamojo_client_id = "test_UxdYuyUmqMlq9aSOWVdpdPVYl4ROSel3l4L";
                    String Insta_client_secret = "test_94NLukJVH2HsGx8tIQRiJM472AaLYmh5aveVepggCXuvM8kfQjVhq9fEAKArM36ONt6JaKTYueCA6ftrsZGQA1vPkcT6TX0VkhNgXc5x7GF9xzom0zEwcSnrxJr";
                    String Insta_Endpoint = InstamojoConstants.INSTAMOJO_API_ENDPOINT;
                    String Insta_Auth_EndPoint = InstamojoConstants.INSTAMOJO_AUTH_ENDPOINT;
                    Instamojo objClass = InstamojoImplementation.getApi(Instamojo_client_id, Insta_client_secret, Insta_Endpoint, Insta_Auth_EndPoint);
                    CreatePaymentOrder(objClass,name,email,Number);

                }
            }
            else
            {
                Warning.Text = "Please Enter Details.";
            }
        }

        private void CreatePaymentOrder(Instamojo objClass ,String name,String email,String num)
        {
            PaymentOrder objPaymentRequest = new PaymentOrder();
            //required post parameters
            objPaymentRequest.name = name;
            objPaymentRequest.email = email;
            objPaymentRequest.phone = num;
            objPaymentRequest.description = "LNYX CINEMA";
            objPaymentRequest.amount = totalamount;
            objPaymentRequest.currency = "INR";
            String RandomName = Path.GetRandomFileName();
            RandomName = RandomName.Replace(".", string.Empty);
            objPaymentRequest.transaction_id = "test" + RandomName;
            Session["transId"] = objPaymentRequest.transaction_id;
            objPaymentRequest.redirect_url = "https://localhost:44336/print_ticket.aspx";

            try
            {
                CreatePaymentOrderResponse objPaymentResponse = objClass.createNewPaymentRequest(objPaymentRequest);
                Response.Redirect(objPaymentResponse.payment_options.payment_url);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            MovieName.Text = Application["MovieName"].ToString();
            TheaterName.Text = Application["TheaterName"].ToString();
            Date.Text = "ON " + Application["Date"].ToString();
            Label9.Text = "INR " + Application["TotalAmount"].ToString();
            totalamount = Convert.ToInt32(Application["TotalAmount"].ToString()) + 19;
            Label13.Text = totalamount.ToString();
        }
    }
}