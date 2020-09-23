using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;


namespace JMSHWebsite.Menu.WorkHistory
{
    public partial class StirlingSolns : System.Web.UI.Page
    {
        string PieXValues { get; set; }
        string PieYValues { get; set; }
        DataPoint pt { get; set; }

    protected void Page_Load(object sender, EventArgs e)
        {
            PieXValues = ConfigurationManager.AppSettings["PieXvaluesStirling"];
            PieYValues = ConfigurationManager.AppSettings["PieYvaluesStirling"];

            string[] Yvalues = PieXValues.Split(',').Select(sValue => sValue.Trim()).ToArray();
            string[] Xvalues = PieYValues.Split(',').Select(sValue => sValue.Trim()).ToArray();

            int[] myInts = Array.ConvertAll(Yvalues, s => int.Parse(s));

            // simpleChart(myInts, Xvalues);

            testpie(Xvalues, Yvalues);

            Chart1.Click += new ImageMapEventHandler(this.Chart1_Click);          

        }

        

        public void testpie(string[] XValues, string[] YValues)
        {
            Chart1.Width = 390;
            Chart1.Height = 165;

            ChartArea ca = new ChartArea();
            ca.BackColor = Color.Transparent;

            Chart1.ChartAreas.Add(ca);
            //https://stackoverflow.com/questions/7385676/how-to-create-a-mouse-click-event-for-an-item-point-from-a-pie-chart
            Chart1.Series.Add(new Series("Data"));

            Chart1.Legends.Add(new Legend("Stores"));

            //Chart1.Legends["Stores"].BackColor = Color.FromArgb(240, 240, 245);

            //Chart1.Legends["Stores"].Font = new Font("Bell MT", 15.0f, FontStyle.Regular, GraphicsUnit.Pixel);

            //Chart1.Legends["Stores"].BackColor = Color.Transparent;
            //Chart1.Legends["Stores"].ForeColor = Color.MidnightBlue;

            //Chart1.Legends["Stores"].Font = new Font("Comic Sans MS", 15.3f, FontStyle.Regular, GraphicsUnit.Pixel);


            Chart1.Legends["Stores"].Font = new Font("Times New Roman", 16.0f, FontStyle.Regular, GraphicsUnit.Pixel);
            Chart1.Legends["Stores"].BackColor = Color.Transparent;
            Chart1.Legends["Stores"].ForeColor = Color.MidnightBlue;




            //Chart1.Legends["Stores"].Position.Y  = 100;
            //Chart1.Legends["Stores"].Position.X = 10;

            Chart1.Series["Data"].ChartType = SeriesChartType.Pie;

            //https://stackoverflow.com/questions/27685766/show-tooltip-on-series-data-on-mouseover-in-system-web-ui-datavisualization-ch
            //DataPoint pt;
            for (int x = 0; x < XValues.Length; x++)
            {
                int ptIdx = Chart1.Series["Data"].Points.AddXY(
                     XValues[x],
                     YValues[x]);
                pt = Chart1.Series["Data"].Points[ptIdx];
                pt.LegendText = "#VALX";//: #VALY";                
                pt.LegendToolTip = "#PERCENT{P0}";//"/Contact/Details/Hey";               
                //pt.ToolTip. ("text", [control], 10000);               

                Chart1.Series["Data"].ToolTip = "#VALX" + PieChartText(pt.AxisLabel);
                Chart1.Series["Data"].Points[x].ToolTip = "#VALX" + PieChartText(pt.AxisLabel);

                


            }

           
            // legend.ForeColor = Color.Green;
            //Chart1.Height = 165;
            //Chart1.Width = 400;
            Chart1.Series["Data"].Label = " ";
            Chart1.Series[0].Label = "#PERCENT{P0}";
            // Chart1.Series["Data"].Label = "#PERCENT{P0}";
            Chart1.Series[0].Font = new Font("Segoe UI", 6.0f, FontStyle.Bold);
            // Chart1.Series[0].BackSecondaryColor = Color.Red;


        }

        public string PieChartText(string val)
        {
           
            switch (val)
            {
                case "Problem Solving":
                    return System.Environment.NewLine + "Using SQL server functionality to deliver effective solutions";                   

                case "Communication":
                    return System.Environment.NewLine + "Communicate with internal and external customers in a calm effective manner";

                case "Planning":
                    return System.Environment.NewLine + "Dealing with a continually changing workload, " +
                     System.Environment.NewLine + "being able organise and prioritise succesfully.  ";

                case "Technical":
                    return System.Environment.NewLine + "Interpreting customer specifications and delivering timeley enhancements and solutions.";
                                 
                default:
                    return "";
            }


        }

        //https://stackoverflow.com/questions/42563240/pie-chart-slice-click


        private void Chart1_Click(object sender, System.Web.UI.WebControls.ImageMapEventArgs e)
        {
            string x = "";
            
       
            //pt.ToolTip.
        }

        public void simpleChart(int[] myInts, string[] XValues)
        {

            //Chart1.Width = 390;
            //Chart1.Height = 175;

            // Define the chart area
            ChartArea chartArea = new ChartArea("chartAreaName");

            //chartArea.BackSecondaryColor = System.Drawing.Color.Black;


            //chartArea.Position.Height = 100;
            //chartArea.Position.Width = 100;

            // Build a pie series
            Series series = new Series("Default");
            series.ChartType = SeriesChartType.Pie;
            series["PieLabelStyle"] = "Disabled";

            //series.Color = Color.Black;

            //series.LabelBackColor = System.Drawing.Color.Black;

            Chart1.Series.Add(series);
            Chart1.Series[0].Points.AddY(2);

            // Bind the data to the chart
            Chart1.Series["Default"].Points.DataBindXY(XValues, myInts);

            //Legend legend = new Legend();
            //legend.BackSecondaryColor = System.Drawing.Color.Black;

            //Chart1.Legends["Default"].BackColor = Color.Red;

            //legend.Position.Auto = false;           
            //legend.Position.Width = 30;
            //legend.Position.Height = 60;
            //Chart1.Legends[0].BackColor = Color.Transparent;

            //legend.BackColor = Color.Transparent;

            //legend.Position = new ElementPosition(73, 0, 30, 60);

            //Chart1.Legends.Add(legend);            

            Chart1.ChartAreas.Add(chartArea);



        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
    }
}