<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Healthcare Vaccination Management System</title>

<style>

body{
    margin:0;
    font-family:Arial;
    background:url("https://images.unsplash.com/photo-1576091160550-2173dba999ef") no-repeat center center fixed;
    background-size:cover;
}

.overlay{
    background:rgba(0,0,0,0.6);
    min-height:100vh;
    padding:20px;
}

.container{
    width:80%;
    margin:auto;
    background:white;
    padding:20px;
    border-radius:15px;
    box-shadow:0 0 20px black;
}

h1{
    text-align:center;
    color:white;
    background:linear-gradient(90deg,#0066cc,#00cc99);
    padding:15px;
    border-radius:10px;
}

input,select{
    width:100%;
    padding:10px;
    margin-top:5px;
    margin-bottom:15px;
    border-radius:8px;
}

button{
    padding:12px;
    border:none;
    cursor:pointer;
    border-radius:8px;
    margin-right:10px;
}

button[type=submit]{
    background:green;
    color:white;
}

button[type=reset]{
    background:red;
    color:white;
}

.print{
    background:orange;
    color:white;
}

.certificate{
    display:none;
    margin-top:25px;
    border:2px dashed green;
    padding:20px;
    border-radius:10px;
    background:#f4fff4;
}

.syringe{
    position:fixed;
    top:100px;
    left:-200px;
    font-size:60px;
    animation:move 8s linear infinite;
}

@keyframes move{

0%{
left:-200px;
}

100%{
left:110%;
}

}

</style>

</head>

<body>

<div class="syringe">💉</div>

<div class="overlay">

<div class="container">

<h1>🏥 Healthcare Vaccination Management System</h1>

<form id="form">

<label>Patient Name</label>
<input type="text" id="name" required>

<label>Patient ID</label>
<input type="text" id="pid" required>

<label>Vaccine Name</label>
<select id="vaccine">

<option>Covishield</option>
<option>Covaxin</option>
<option>BCG</option>
<option>Polio</option>
<option>MMR</option>
<option>Hepatitis B</option>

</select>

<label>Hospital Name</label>
<input type="text" id="hospital" required>

<label>Doctor Name</label>
<input type="text" id="doctor" required>

<label>Vaccination Date</label>
<input type="date" id="date" required>

<button type="submit">
Generate Certificate
</button>

<button type="reset">
Reset
</button>

</form>

<div class="certificate" id="certificate">

<h2 align="center">💉 Vaccination Certificate</h2>

<p id="pname"></p>

<p id="ppid"></p>

<p id="pvaccine"></p>

<p id="phospital"></p>

<p id="pdoctor"></p>

<p id="pdate"></p>

<img id="qr" width="120">

<br><br>

<button class="print" onclick="window.print()">
🖨 Print Certificate
</button>

</div>

</div>

</div>

<script>

document.getElementById("form").addEventListener("submit",function(e){

e.preventDefault();

let name=document.getElementById("name").value;
let pid=document.getElementById("pid").value;
let vaccine=document.getElementById("vaccine").value;
let hospital=document.getElementById("hospital").value;
let doctor=document.getElementById("doctor").value;
let date=document.getElementById("date").value;

document.getElementById("certificate").style.display="block";

document.getElementById("pname").innerHTML="<b>Patient Name :</b> "+name;

document.getElementById("ppid").innerHTML="<b>Patient ID :</b> "+pid;

document.getElementById("pvaccine").innerHTML="<b>Vaccine :</b> "+vaccine;

document.getElementById("phospital").innerHTML="<b>Hospital :</b> "+hospital;

document.getElementById("pdoctor").innerHTML="<b>Doctor :</b> "+doctor;

document.getElementById("pdate").innerHTML="<b>Vaccination Date :</b> "+date;

document.getElementById("qr").src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data="+name+"-"+pid+"-"+vaccine;

});

</script>

</body>
</html>
