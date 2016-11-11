using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

#region Additional Namespaces
using eToolsSystem.Entities;
using eToolsSystem.Entities.DTOs;
using System.Collections;
using System.Data.Entity.Validation;
using eTool.UI;
#endregion

public partial class Assessments_AssessmentCommand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }


    protected void CheckForException(object sender, ObjectDataSourceStatusEventArgs e)
    {
        MessageUserControl.HandleDataBoundException(e);
    }

  

}