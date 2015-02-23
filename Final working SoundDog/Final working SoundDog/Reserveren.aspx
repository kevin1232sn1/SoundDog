<%@ Page Title="Reserveren bij SounndDog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reserveren.aspx.cs" Inherits="Final_working_SoundDog.Reserveren" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1 class="H1Stripe"><span>Reserveren</span></h1>
    </div>
    <div class="row">
        <div class="large-8 columns">
            <div>
                <p>
                    Oefenruimtes kun je telefonisch reserveren (nummer is te vinden op de <a title="Contact" href="Contact.aspx"><b style="color: black">contactpagina </b></a>).<br>
                    Binnenkort kan dat ook online via de website.
                </p>
                <h3>Beperkte beschikbaarheid</h3>
                <p>
                    De opstartfase van dit bedrijf brengt hoge kosten met zich mee. Hierdoor starten we met slechts drie ruimtes. (Dat worden er later vijf en bij aanhoudend succes zelfs elf, inclusief aparte studio).<br>
                    Van de drie ruimtes waar we mee beginnen is slecht één ruimte gereserveerd voor contracten. Mocht je geïnteresseerd zijn, wees er dan snel bij. Hoe eerder je reageert, hoe groter de kans dat jouw favoriete dag en tijd nog beschikbaar is.
                </p>
            </div>
            <asp:Button Style="display: none" ID="RoomButtonClick" OnClick="RoomButtonClick_Click" runat="server" />
            <asp:HiddenField runat="server" ID="RoomIndex" />
            <div id="MainMap" class="show-for-medium-up" runat="server">
                <div id="Room_1" runat="server"></div>
                <div id="Room_2" runat="server"></div>
                <div id="Room_3" runat="server"></div>
                <div id="Room_4" runat="server"></div>
                <div id="Room_5" runat="server"></div>
                <div id="Room_6" runat="server"></div>
                <div id="Room_7" runat="server"></div>
                <div id="Room_8" runat="server"></div>
                <div id="Room_9" runat="server"></div>
                <div id="Studio" runat="server"></div>
                <div id="RelaxRoom" runat="server">
                    <div id="RelaxRoomLarge" title="RelaxRoom" runat="server"></div>
                    <div id="RelaxRoomSmall" title="RelaxRoom" runat="server"></div>
                </div>
            </div>
        </div>
        <div class="large-4 panel columns ReservationDiv">
            <ul class="pricing-table">
                <li class="title">Online reserveren</li>
                <li class="price">SoundDog</li>
                <li class="description">Klik op de plategrond om een ruimte te kiezen</li>
                <li class="bullet-item">
                    <asp:Label runat="server" ID="SelectedRoom"></asp:Label></li>
                <li class="bullet-item">
                    <input class="fdatepicker" type="text" runat="server" /></li>
                <li class="bullet-item">
                    <asp:DropDownList runat="server" CssClass="dropdown" ID="TimePicker">
                        <asp:ListItem>12:00 - 17:00</asp:ListItem>
                        <asp:ListItem>13:00 - 17:00</asp:ListItem>
                        <asp:ListItem>14:00 - 17:00</asp:ListItem>
                        <asp:ListItem>15:00 - 17:00</asp:ListItem>
                    </asp:DropDownList>
                </li>
                <li class="cta-button">
                    <asp:Button class=" button title" data-reveal-id="myModal" id="BookRoomButton" Text="Reserveren" runat="server"/>
                </li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div id="myModal" class="reveal-modal" data-reveal>
            <h4>Uw Reservering</h4>
                   <div class="Date-field">
                    <label>
                        Uw datum
                        <input id="FilledReservationDate" runat="server" type="text"/>
                    </label>
                </div>
            <div class="Time-field">
                    <label>
                        Uw tijdstip
                        <input id="FilledReservationTime" runat="server" type="text"/>
                    </label>
                </div>
            <div class="Room-field">
                    <label>
                        Uw ruimte
                        <input id="FilledReservationRoom" runat="server" type="text"/>
                    </label>
                </div>
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
            <a class="close-reveal-modal">&#215;</a>
        </div>
    </div>

    <script>
        $(".fdatepicker").fdatepicker({
            language: 'nl'
        });

        $(document).on("opened", "[data-reveal]", function () {
            $(this).appendTo($("form"));
        });
        function DivClicked(clientId) {
            var roomIndex = $("#<%= RoomIndex.ClientID %>");
            roomIndex.val(clientId.id);
            var roomButtonClick = $("#<%= RoomButtonClick.ClientID %>");
            if (roomButtonClick != null) {
                roomButtonClick.click();
            }
        }

    </script>
</asp:Content>

