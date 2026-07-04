<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Mumbai Airport Immigration System</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: url("https://images.unsplash.com/photo-1509062522246-3755977927d7") no-repeat center center fixed;
    background-size: cover;
}

/* overlay */
.overlay {
    background: rgba(0,0,0,0.6);
    min-height: 100vh;
    padding: 20px;
}

/* container */
.container {
    width: 80%;
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 15px;
}

/* header */
h1 {
    text-align: center;
    background: linear-gradient(90deg, #0044cc, #00ccff);
    color: white;
    padding: 15px;
    border-radius: 10px;
}

/* inputs */
input, select {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px 0;
}

/* button */
button {
    padding: 12px;
    border: none;
    cursor: pointer;
    border-radius: 10px;
    margin-right: 10px;
}

button[type="submit"] {
    background: green;
    color: white;
}

button.print {
    background: orange;
    color: white;
}

/* ticket */
.ticket {
    display: none;
    margin-top: 20px;
    padding: 20px;
    border: 2px dashed #333;
    border-radius: 10px;
    background: #f9f9f9;
}

/* plane animation */
.plane {
    position: fixed;
    top: 80px;
    left: -200px;
    font-size: 50px;
    animation: fly 8s linear infinite;
}

@keyframes fly {
    0% { left: -200px; top: 80px; }
    50% { top: 200px; }
    100% { left: 110%; top: 80px; }
}
</style>
</head>

<body>

<div class="plane">✈️</div>

<div class="overlay">

<div class="container">

<h1>✈ Chhatrapati Shivaji Maharaj International Airport - Mumbai</h1>

<form id="form">

<label>Name</label>
<input type="text" id="name" required>

<label>Flight Number</label>
<input type="text" id="flight" required>

<label>Destination</label>
<input type="text" id="dest" required>

<label>Seat Number</label>
<input type="text" id="seat" required>

<button type="submit">🛫 Generate Boarding Pass</button>
<button type="reset">Reset</button>

</form>

<div class="ticket" id="ticketBox">
    <h2>🎫 Boarding Pass</h2>
    <p id="tname"></p>
    <p id="tflight"></p>
    <p id="tdest"></p>
    <p id="tseat"></p>

    <img id="qr" width="120">

    <br><br>
    <button class="print" onclick="window.print()">🖨 Print Ticket</button>
</div>

</div>
</div>

<script>
document.getElementById("form").addEventListener("submit", function(e){
    e.preventDefault();

    let name = document.getElementById("name").value;
    let flight = document.getElementById("flight").value;
    let dest = document.getElementById("dest").value;
    let seat = document.getElementById("seat").value;

    document.getElementById("ticketBox").style.display = "block";

    document.getElementById("tname").innerText = "Passenger: " + name;
    document.getElementById("tflight").innerText = "Flight: " + flight;
    document.getElementById("tdest").innerText = "Destination: " + dest;
    document.getElementById("tseat").innerText = "Seat: " + seat;

    // QR Code (simple API)
    document.getElementById("qr").src =
    "https://api.qrserver.com/v1/create-qr-code/?size=120x120&data=" +
    name + "-" + flight + "-" + dest + "-" + seat;
});
</script>

</body>
</html>
