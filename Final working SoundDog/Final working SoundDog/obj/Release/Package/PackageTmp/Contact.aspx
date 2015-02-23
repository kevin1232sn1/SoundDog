<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Final_working_SoundDog.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1 class="H1Stripe"><span>Contact</span></h1>
    </div>
    <div class="row" >
        <div class="large-6 medium-12 small-12 column" >
            <h4>Sound Dog</h4>
            <b>Telefoon: 076-5321352</b>
            <div data-abide>
                <div class="name-field">
                    <label>
                        Uw naam <small>verplicht</small>
                        <input name="name" type="text" required pattern="[a-zA-Z]+">
                    </label>
                    <small class="error">Naam is verplicht!</small>
                </div>
                <div class="email-field">
                    <label>
                        Email <small>verplicht</small>
                        <input name="email" type="email" required>
                    </label>
                    <small class="error">Een email adres is verplicht.</small>
                </div>
                <div class="Phone-field">
                    <label>
                        Telefoon <small>verplicht</small>
                        <input name="phone" type="tel" required>
                    </label>
                    <small class="error">Een telefoonnummer is verplicht.</small>
                </div>
                <div class="remark-field">
                    <label>
                        Opmerking
                            <input name="remark" type="text">
                    </label>
                </div>
                <button id="submit" name="submit" type="submit" value="Submit">Verstuur</button>
            </div>
        </div>
        <div class="large-6 column">
            <div class="large-2 columns">&nbsp</div>
            <div class="large-8 centered columns panel" >
                <div class="large-12 centered">
                    <h4>Gegevens:</h4>
                    <ul class="no-bullet">
                        <li>Naam: Sound Dog</li>
                        <li>Adres: Oude Baan 8</li>
                        <li>Postcode: 4825 BL Breda</li>
                        <li>Email: info@sounddog.nl</li>
                        <li>Telefoon: 076-5321352</li>
                    </ul>
                </div>
            </div>
            <div class="large-2 columns">&nbsp</div>
        </div>
    </div>

    <div class="row">
        <div style="height: 300px!important" id="map-canvas" class="large-12 column">
            <a class="reveal-link" id="reveal-link" style="visibility: hidden; top: -9999px;" data-reveal-id="mySuccesModal"></a>
        </div>
    </div>

    <div id="mySuccesModal" class="reveal-modal" data-reveal>
        <h2>Bericht succesvol verzonden!</h2>
        <p class="lead">Er word zo snel mogelijk met u contact opgenomen!</p>
        <p>Voor dringende vragen kunt u altijd bellen naar: <b>06 - 833 933 03</b></p>
        <a class="close-reveal-modal">&#215;</a>
    </div>

    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCHqq2YE9iyCR5ol6wjnt_oSr22eFcKy6o">
    </script>


    <script>
        function initialize() {
            var myLatlng = new google.maps.LatLng(51.60626, 4.77554);
            var mapOptions = {
                zoom: 14,
                center: myLatlng
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: 'SoundDog!'
            });
        }

        google.maps.event.addDomListener(window, 'load', initialize);

    </script>

</asp:Content>
