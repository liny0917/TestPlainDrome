using System;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace PlainDrome
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             * 
             *   Limit:可列印字元
             *   Demand: 針對字母(不分大小寫)及數字進行比對
             */
            if (!IsPostBack)
            {
   
            }
        }


        protected void BtnCheck_OnClick(object sender, EventArgs e)
        {
            var drmoeText = Inputtxt.Text;
            try
            {
                if (!JdugeInput(drmoeText))
                {
                    Alert("請勿空白");
                }
                else
                {
                    var result = ProcessInput(drmoeText);
                    if (result != null)
                    {
                        lblString.Text = result;
                        var newResult = Reverse(result);
                        lblResult.Text = CheckPlaindrome(result, newResult).ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                ShowMessage(string.Format("Error: {0}請注意", ex.Message));
            }
       
        }

        private void ShowMessage(string msg)
        {
            lblMsg.Visible = !string.IsNullOrEmpty(msg);
            lblMsg.Text = msg;
        }

        private static string ProcessInput(string source)
        {
            var pattern = "[A-Za-z0-9]";
            var strNewInput = "";
            var result = Regex.Matches(source, pattern);
            foreach (var text in result)
            {
                strNewInput += text;
            }
            return strNewInput;
        }

        /// <summary>
        /// 反轉可列印字元字串
        /// </summary>
        /// <param name="result"></param>
        /// <returns></returns>
        private static string Reverse(string result)
        {
            char[] newResult = result.ToCharArray();
            Array.Reverse(newResult);
            return new string(newResult);
        }

        private static bool CheckPlaindrome(string result, string resultReverse)
        {
            return result.Equals(resultReverse, StringComparison.OrdinalIgnoreCase);
        }
       

        private static bool JdugeInput(string strText)
        {
            return !string.IsNullOrEmpty(strText);
        }

        private void Alert(string strMsg)
        {
            var script = "alert(\"" + strMsg + "\");";
            Page.Controls.Add(new LiteralControl("<script>" + script + "</script>"));
        }
    }
}