using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
//how to limit the draggable area?
//https://stackoverflow.com/questions/31946111/limit-a-draggable-element-js

namespace KPWebsite.Menu.Summary
{
    public partial class VerticalMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.flexdiv.InnerHtml = GenerateHtml("Flexibility");
            this.decdiv.InnerHtml = GenerateHtml("Decision Making");
           this.plandiv.InnerHtml = GenerateHtml("Planning");
           this.probdiv.InnerHtml = GenerateHtml("Problem Solving");
           this.commdiv.InnerHtml = GenerateHtml("Communication");
           this.teamdiv.InnerHtml = GenerateHtml("Teamwork");
           this.anadiv.InnerHtml = GenerateHtml("Analytical");
           this.resdiv.InnerHtml = GenerateHtml("Resourcefulness");
           this.techdiv.InnerHtml = GenerateHtml("Technical");          
           //this.manadiv.InnerHtml = GenerateHtml("Manage Performance");


        }

        [WebMethod]
        public string PassHtml(string skillset)
        {
            return this.flexdiv.InnerHtml = GenerateHtml(skillset);
        }

        //[WebMethod]
        public string GenerateHtml(string pSkill)
        {

            switch (pSkill)
            {
                case "Flexibility":
                    return TechnicalInfo("<div style='background-color:#f0f0f5;height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5;height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 6px; left: 12px; right: 0px  '>" +
                                "</br>" +
                               "When implementing an enhancement for a call center I had to start work early in the morning. " +
                               "To add all changes via modules and executables and ensure the process was working in a simulated live environent.    </br>" +
                               "This process was over many weeks and enabled a smooth transition to a live environment. " +                              
                               "</p> </div>");
                case "Manage Performance":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 6px; left: 12px; right: 0px  '>" +
                                "</br>" +
                               " I was working on an urgent software integration project," +
                               " involving 4 parties, ours and their customer, a third party IT company and ourselves. " + 
                               " I gathered the technical information, broke the project down into component parts and produced a timescale. " +
                               " I liaised and kept all parties informed and was able to complete the integration on time." +
                               "</p> </div>");
                case "Planning":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 6px; left: 12px; right: 0px  '>" +
                                "</br>" +
                               "I use Microsoft outlook to alert me of any planned meetings or to contact customers. " +
                               " I keep diaried notes of past projects and contact information.  </br>" +
                               " I also have extensive detailed notes and project plans of all past projects, which always helps" +
                               " with new projects, both from a technical and planning perspective." +
                               "</p> </div>");
                case "Problem Solving":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 8px; left: 12px; right: 0px  '>" +
                                "</br>" +
                               "I setup text messaging through sql server, using a third party SMS company. " +
                               "Our customer, a delivery comany, needed the ability to send text messages as seperate collection and delivery messages. </br>" +
                               "I changed the configuration of triggers and stored procedures to include this complex bespoke behaviour.  " +
                               "</p> </div>");
                case "Communication":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 6px; left: 12px; right: 0px  '>" +
                                "</br>" +
                               "Supporting Leic. constabularys command and control system included " +
                               "major enhancements every 6 months. These forums had members from all UK forces " +
                               "and the Software provider, to discuss and vote on future requirements.  " +
                               "This required good knowledge of the current system and very good communication skills.  " +
                               "</p> </div>");
                case "Decision Making":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 6px; left: 12px; right: 0px  '>" +
                                "</br>" +                               
                               "I investigated batch timings in a batch scheduler application, as changes were made to a mainframe maintenance window, that batches were connecting to." + 
                               " Establishing any impacts, looking at batch source code and at Batch Scheduler settings and specs," +
                               " to decide which batches would be affected and the course of action to take." +
                                "</p> </div>");
                case "Teamwork":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 6px; left: 12px; right: 0px  '>" +
                                "</br>" +
                                " At Access there was a team of 3, with the most SQL experience, I regularly helped the team with SQL issues." +
                                    " At next there was a team of 20. There was a developer who had never used our MQ Web service." +
                               " I had completed a project, involving this, and sat with the developer to help with the technical aspects." +
                               "</p> </div>");
                case "Analytical":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 6px; left: 12px; right: 0px  '>" +
                                "</br>" +
                               "Investigated Load balancing 4 websites, I examined the servers, source code and spec." + 
                               " I worked with the Network dept who set up virtual servers, configuring IIS and importing SSL certs." +
                               " We successfully load balanced 1 site, after further testing found there was hard coded network details, necessitating a rewrite." +
                               "</p> </div>");
                case "Resourcefulness":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 6px; left: 12px; right: 0px  '>" +
                                "</br>" +
                               "I Modified an intranet website, that allowed users to book, cancel and modify appointments for a Flu Jab.</br>" +
                               "I tailored the application to new requirements including, recognising the user, allow the user to add, change and delete appointments. " +
                               "Emailing the user when an appointments had been made, canceled or modified." +
                             
                               "</p> </div>");
                case "Technical":
                    return TechnicalInfo("<div style='background-color:#f0f0f5; height:200px;width:200px;'>" +
                                "<p style='font-size:16px; background-color:#f0f0f5; height:200px;width:250px; line-height: 1.3; font-style:font-family: verdana; " +
                                                    "position: absolute;text-align: left;  top: 8px; left: 12px; right: 0px  '>" +
                                "</br>" +
                                "I worked on a project to update a windows batch that connected to a web service, " +
                               "and read an MQ queue feed in the form of an xml string. The batch used the xml string to update an Informix and Sql server Database.</br>" +
                               "The batch was the added to a bespoke windows batch scheduler, ran 6 times a day and never failed or errored " +
                               "</p> </div>");


            }

            return TechnicalInfo("<p style='font-size:16px; background-color:red; line-height: 1.5; font-style:font-family: verdana; text-align: left; position: absolute; top: 25px; left: 115px; right: 15px  '>" +
                                "ERROR LOADING SQL</br>" +
                                "</p>");
        }



        // public static string TechnicalInfo(String TechInfo, String para)
        public static string TechnicalInfo(String para)
        {

            /*border:3px ridge #908579;*/
            return "<div align='center'  style='color:black;  height:200px; clear:none;'  class='textblock-container'>" +
                        //"<div  style='color:white; border-bottom:3px ridge #908579;background: linear-gradient(#545456,#6F7078);  height:22px; width:345px; clear:both;   float:left;' class='textblock'>" +
                        //    "<p style='font-size:18px; font-style:font-family: verdana; text-align: left; position: relative; top: -18px; left: 2px; height:312px;width:333px;'>" + TechInfo + "</p>" +
                        //"</div>" +
                        "<div  style='color:white; border:0px ridge blue;background-color:#f0f0f5; height:10px;; width:200px; clear:both;   float:left;' class='textblock'>" +
                           "<p></p>" +
                       "</div>" +
                       "<div  style='color:black; border:0px ridge blue;background-color:#f0f0f5; height:200px; width:200px;clear:both;   float:left;' class='textblock'>" + para +
                       "</div>" +
                   "</div>";


        }
    }

}



/*
 * Example cust allowed to run sql so check for syntax and check with developer the implications. 
Example transaction broker winbro have a bespoke process/service that written that when new stock added/changed this is transferred to US system. Triggers add new/changed stock to a new table. A service runs and as soon as it sees new data in table transfers to US table. This is then via triggers put into correct stock tables in US. This was failing that is stock was not being transferred i.e. missing stock. When do new upgrades there is a process called finalise update that is run afterwards which replaces all triggers and updates any new tables. But after investigating winbros DB saw that the triggers had not been updated, as finalise update had not worked. This was fixed and issue was resoved after testing
*/
