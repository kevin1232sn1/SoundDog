<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prijzen.aspx.cs" Inherits="Final_working_SoundDog.Prijzen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <h1 class="H1Stripe"><span>Prijzen</span></h1>
    </div>
    <div class="row">
        <div class="large-4 columns">
            <div class="large-12 columns">
                <ul class="pricing-table">
                    <li class="title">Standard</li>
                    <li class="price">€42</li>
                    <li class="description">Ruimte huren</li>
                    <li class="bullet-item">1 ruimte</li>
                    <li class="bullet-item">Tijdsblok 3 uur</li>
                    <li class="bullet-item">3 microfoons</li>
                    <li class="cta-button"><a class="button" href="Reserveren.aspx">Reserveer nu</a></li>
                </ul>
            </div>
            <div class="large-12 columns">
                <ul class="pricing-table">
                    <li class="title">Contract</li>
                    <li class="price">€150</li>
                    <li class="description">Ruimte huren maand contract</li>
                     <li class="bullet-item">1 vaste ruimte</li>
                    <li class="bullet-item">Vast tijdsblok 3 uur</li>
                    <li class="bullet-item">3 microfoons</li>
                    <li class="bullet-item">4x in de maand</li>
                    <li class="cta-button"><a class="button" href="Reserveren.aspx">Reserveer nu</a></li>
                </ul>
            </div>
        </div>
        <div class="large-8 columns">
            <p><strong>De oefenruimtes</strong> zijn verdeeld in ruimtes met of zonder apparatuur.</p>
            <p>
                <strong>De ruimtes inclusief apparatuur zijn te huren per blok van 3 uur.</strong> Te weten:<br>
                12:00 – 15:00, 15:00 – 18:00, 18:00 – 21:00 en 21:00 – 24:00<br>
                (indien er vraag naar is, is het ook mogelijk om ’s ochtends van 9:00 tot 12:00 te oefenen).<br>
                Per blok betaal je 42 euro (incl. BTW)<br>
                Behalve apparatuur, krijg je er ook drie microfoons met snoeren bij. Extra microfoons zijn bij te huren.<br>
                Strippenkaarten zijn ook verkrijgbaar. Tien halen, negen betalen.<br>
                De kosten voor een contract zijn 150 euro per maand. Je krijgt dan een vaste dag en tijd in de week.
            </p>
            <p>
                <strong>Voor de ruimtes exclusief apparatuur worden jaarcontracten afgesloten.</strong> Je hebt dan een jaar lang recht op een eigen oefenruimte met berghok en zangversterker op een vaste dag. Ook hier gelden dezelfde bloktijden als bij de ruimtes inclusief apparatuur.<br>
                Je op- en afbouwtijd krijg je extra, zodat je daadwerkelijk 3 volle uren kan repeteren.<br>
                Voorbeeld 1: Een band die van 18:00 tot 21:00 komt, mag al vanaf 17:30 opbouwen.<br>
                Voorbeeld 2: Een band die van 21:00 tot 24:00 komt, hoeft om 24:15 pas te beginnen met afbouwen.<br>
                De kosten voor deze contracten zijn&nbsp;150 euro per maand. In plaats van gebruik te maken van onze apparatuur, krijg je voor dat geld een eigen afsluitbare bergruimte. Je betaalt één maand borg vooraf. De opzegtermijn is een maand, dus je zit niet persé vast aan een heel jaar. Als je opzegt wordt de borg gebruikt om de huur voor laatste maand te betalen.<br>
                Een zanginstallatie wordt door Sound Dog geregeld. Deze zit bij de huurprijs inbegrepen.
            </p>
            <p>Voor overige prijzen/mogelijkheden verwijs ik je naar de balie van Sound Dog. Of mail je vraag naar: <a href="mailto:info@sounddog.nl">info@sounddog.nl</a>&nbsp;</p>

        </div>
    </div>
</asp:Content>
