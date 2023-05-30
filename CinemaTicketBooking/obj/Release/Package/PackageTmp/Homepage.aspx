<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="CinemaTicketBooking.Homepage" MasterPageFile="~/LynxCinema.Master"%>
<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">
     
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
     <link rel="stylesheet" href="css/homepage.css" />


     <section id="carousel-slider">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="slider-images/slider-1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-3.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-4.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-5.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-6.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-7.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-8.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-9.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-10.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-11.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-12.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-13.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-14.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-15.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-16.png" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <div class="now-showing-title">
        <h1>NOW SHOWING</h1>
    </div>


     <asp:Panel ID="Panel1" runat="server"  Height="700px" Width="1366px" CssClass="Parent_Panel_Cinema" Wrap="True">
         <asp:LinkButton ID="Panel2" runat="server"  CssClass="Child_panel_movies" ><img src="images/black-panther-small.jpg"/> <h3>BLACK PANTHER :<br />WAKANDA FOREVER</h3><br /><p>ENGLISH • HINDI • [U/A] • ACTION</p></asp:LinkButton>
         <asp:LinkButton ID="Panel3" runat="server"  CssClass="Child_panel_movies" ><img src="images/drishyam-small.jpg" /> <h3><br />DRISHYAM 2</h3><br /><p>HINDI • [U/A] • THRILLER</p></asp:LinkButton>
         <asp:LinkButton ID="Panel4" runat="server"  CssClass="Child_panel_movies" ><img src="images/godavari-small.jpg"/> <h3><br />GODAVARI</h3><br /><p>• MARATHI • [U/A] • DRAMA</p></asp:LinkButton>
         <asp:LinkButton ID="Panel5" runat="server"  CssClass="Child_panel_movies" ><img src="images/kantara-small.jpg"/> <h3><br />KANATARA</h3><br /><p>HINDI • [U/A] • THRILLER</p></asp:LinkButton>
         <asp:LinkButton ID="Panel6" runat="server"  CssClass="Child_panel_movies" ><img src="images/milismall (1).jpg"/> <h3><br />MILI</h3><br /><p>DRAMA • HINDI • [U/A] • THRILLER</p></asp:LinkButton>
         <asp:LinkButton ID="Panel7" runat="server"  CssClass="Child_panel_movies" ><img src="images/phonebooth-small (1).jpg"/> <h3><br />PHONE BHOOT</h3><br /><p>COMEDY • HINDI • [U/A] • HORROR</p></asp:LinkButton>
         <asp:LinkButton ID="Panel8" runat="server"  CssClass="Child_panel_movies" ><img src="images/ramsetusmall.jpg"/> <h3><br />RAM SETU</h3><br /><p>ACTION • THILLER • HINDI • [U/A] </p></asp:LinkButton>
         <asp:LinkButton ID="Panel9" runat="server"  CssClass="Child_panel_movies" ><img src="images/blackAdam-small.jpg"/> <h3><br />BLACK-ADAM</h3><br /><p>ENGLISH • HINDI • [U/A] • ACTION • Sci-Fi</p></asp:LinkButton>
     </asp:Panel>  
    
     <div class="view-all">
        <a href="#" class="view-effect">
            <span class="view-all-text">VIEW ALL</span>
                <i class="fa-solid fa-chevron-right"></i>
        </a>
     </div>

    <div class="Comming-soon-title">
        <h1>COMMING SOON</h1>
    </div>

    <asp:Panel ID="Panel10" runat="server"  Height="700px" Width="1366px" CssClass="Parent_Panel_Cinema" Wrap="True">
         <asp:LinkButton ID="Panel11" runat="server"  CssClass="Child_panel_movies" ><img src="now-showing-images/image-1.png"/> <h3>PADACHONE INGALU <br />KAATHOLI</h3><br /><p>MALAYALAM • DRAMA </p></asp:LinkButton>
         <asp:LinkButton ID="Panel12" runat="server"  CssClass="Child_panel_movies" ><img src="now-showing-images/image-2.png" /> <h3><br />AGENT KANNAYIRAM</h3><br /><p>TAMIL • CRIME</p></asp:LinkButton>
         <asp:LinkButton ID="Panel13" runat="server"  CssClass="Child_panel_movies" ><img src="now-showing-images/image-3.png"/> <h3><br />BILLA RANGA BAASHA</h3><br /><p>KANNADA • THRILLER</p></asp:LinkButton>
         <asp:LinkButton ID="Panel14" runat="server"  CssClass="Child_panel_movies" ><img src="now-showing-images/image-4.png"/> <h3><br />MEDAL</h3><br /><p>GUJARATI • SPORTS</p></asp:LinkButton>
         <asp:LinkButton ID="Panel15" runat="server"  CssClass="Child_panel_movies" ><img src="now-showing-images/image-5.png"/> <h3><br />TRIPLE RIDING</h3><br /><p>KANNADA • ROMANCE</p></asp:LinkButton>
         <asp:LinkButton ID="Panel16" runat="server"  CssClass="Child_panel_movies" ><img src="now-showing-images/image-6.png"/> <h3><br />BHEDIYA</h3><br /><p>HINDI • CREATURE • COMEDY</p></asp:LinkButton>
         <asp:LinkButton ID="Panel17" runat="server"  CssClass="Child_panel_movies" ><img src="now-showing-images/image-7.png"/> <h3><br />JETA</h3><br /><p>MARATHI • SOCIAL </p></asp:LinkButton>
         <asp:LinkButton ID="Panel18" runat="server"  CssClass="Child_panel_movies" ><img src="now-showing-images/image-8.png"/> <h3><br />KAARI</h3><br /><p>TAMIL • DRAMA</p></asp:LinkButton>
     </asp:Panel>

    <div class="view-all">
        <a href="#" class="view-effect">
            <span class="view-all-text">VIEW ALL</span>
                <i class="fa-solid fa-chevron-right"></i>
        </a>
     </div>
   
</asp:Content>

