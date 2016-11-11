<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Specifications.aspx.cs" Inherits="Specifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <%--div#topicid.bobclass--%>

<%--<div id="topic" class="bob">--%>
   <%-- h1+p+(ul>li*3>lorem)+p*3+figure>figcaption--%>
    <header class="page-header">
        <img src="Images/Logo.PNG" style="float:right; width:300px; height: 135px" />
        <h1>CQRS</h1>
        <h2>
            <span class="fa-stack fa-lg">
                <i class="fa fa-github fa-stack-1x text-muted"></i>
                <i class="fa fa-ban fa-stack-2x text-danger"></i>
            </span>
            Do <u>NOT</u> Store in a Repository
        </h2>
    </header>
    <table>

    <tr>
        <td>
            Course Weight:
        </td>
        <td>
            10% &nbsp;&nbsp;<a href="MarkingRubik.aspx">Evalutation</a>
        </td>
    </tr>
     <tr>
        <td>
            Assessment Date:
        </td>
        <td>
            <asp:label ID=labelDate runat="server"> <%= DateTime.Today.ToString("MMM dd, yyyy") %></asp:label>
        </td>
    </tr>
     <tr>
        <td>
            Student Name:
        </td>
        <td>
            
        </td>
    </tr>
    </table>
    <br /><br />
    <p>
         In this assessment, you will be demonstrating your understanding of CQRS. In this assessment, you will be evaluated on the following:
     </p>   <ul>
        <li>Create controller methods containing Linq to Entity calls</li>
        <li>Implement a web form which will have a CRUD interface to maintain the Category Entity</li>
        <li>Implement a web form which will display a list of stock items by category description</li>
         <li>Use the ObjectDatasource control for data-binding controls to controller methods</li>
    </ul>  
  
    <p>
You have been supplied a starting solution for this assessment called eToolsAssessment. You are to place this folder onto your 
        machine (desktop or documents). The solution folder contains the database in a .bak (backup file) 
        called eTools.bak. The starting solution has certain portions of the assessment pre-coded. <strong>This code works and should not be altered.</strong></p>
    <p>
You are to complete each of the activities to create a successful solution to this assessment. You will need to use specified names 
        in portions of the activities to integrate with the existing code. You many need to create local variables to use in your answer (these variables can be 
        called whatever you wish). Use the following activity instructions to complete this assessment.
    </p>
    <h4>Activity 1 Setup</h4>
    <p>Restore the supplied SQL database. The database name is <strong>eTools</strong>. The database contains data for testing your solution.</p>
    <h4>Activity 2 Create Linq queries</h4>
    <h5>CRUD</h5>
    <p>You will need to implement a series of DataObjectMethods. You will need complete the code which will support the CRUD maintenance of the Category entity. 
        Complete the code in the following DataObjectMethods: Category_Add, Category_Update, Category_Delete. Category_List and Catgeory_FindbyID have been coded for you. </p>
    <h5>Query</h5>
    <p>You will need to create a query which will use the DTOs/CategoryDTO and POCOsCategoryStockItem classes to represent a collection of data. Place this query in the 
        DataObjectMethod called CategoryStockList. This query will obtain the category description and for each description; the stock items of that category. 
        The stock item data will contain the stock item description, quantity on hand and mark up value (Selling Price - Purchase Price). </p>
    
    <h4>Activity 3 WebForm: Assessments/AssessmentCommand</h4>
    <p> You are to use a ListView to implement CRUD processing for the Category entity. 
        You will need to add an ObjectDataSource for access to the CRUD DataObjectMethods within your controller (Activity 2). 
        You will need to properly wire a ListView to this ODS. The ListView should allow for adding new category records, updating and deleting existing category records.
    </p>
    
    <p> The web form has error handling partially implemented. The necessary code for error handling has been placed in the code-behind. 
        The Message user control has been placed on the starter web form. You will need to properly wire your ODS to make use of the user control for error handling.</p>
    <center>
            <figure>
        <img src="Images/CRUDImage.jpg" width="800"/>
        <figcaption>Display of the ListView for Category CRUD</figcaption>
    </figure>
     </center>
    
        <h4>Activity 4 WebForm: Assessments/AssessmentQuery</h4>
    <p> You are to use a Repeater containing a GridView to display the collection that will be obtained from the DataObjectMethod CategoryStockList (see image below). 
        You will need to add an ObjectDataSource for access to the DataObjectMethod within your controller (Activity 2). 
        You will need to properly wire the Repeater to this ODS. </p>
    <p> 
    <p>The web form has error handling partially implemented. The necessary code for error handling has been placed in the code-behind. 
        The Message user control has been placed on the starter web form. 
        You will need to properly wire your ODS (Selected event) to make use of the user control for error handling.</p>
    <center>
            <figure>
        <img src="/Images/RepeaterImage.JPG" width="800"/>
        <figcaption>Resulting display of the repeater</figcaption>
    </figure></center>
       
  


    <%--</div>--%>
</asp:Content>
