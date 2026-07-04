<form action="action_page.php">
  <div class="container">

    <h1>✈ Welcome to Chhatrapati Shivaji Maharaj International Airport, Mumbai</h1>

    <marquee style="color:red;">
      Welcome to Mumbai International Airport | Safe Journey | Immigration Registration Portal
    </marquee>

    <p>Please complete the passenger registration form before entering the immigration counter.</p>

    <hr><br>

    <label><b>Full Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="fullname" required><br>

    <label><b>Father's Name</b></label>
    <input type="text" placeholder="Enter Father's Name" name="fathername" required><br>

    <label><b>Mother's Name</b></label>
    <input type="text" placeholder="Enter Mother's Name" name="mothername" required><br>

    <label><b>Date of Birth</b></label>
    <input type="date" name="dob" required><br>

    <label><b>Gender</b></label>
    <select required>
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
    </select><br><br>

    <label><b>Nationality</b></label>
    <select required>
        <option>Indian</option>
        <option>USA</option>
        <option>UK</option>
        <option>Canada</option>
        <option>Australia</option>
        <option>Germany</option>
        <option>Japan</option>
        <option>Other</option>
    </select><br><br>

    <label><b>Passport Number</b></label>
    <input type="text" placeholder="Enter Passport Number" required><br>

    <label><b>Visa Number</b></label>
    <input type="text" placeholder="Enter Visa Number" required><br>

    <label><b>Passport Expiry Date</b></label>
    <input type="date" required><br>

    <label><b>Flight Number</b></label>
    <input type="text" placeholder="AI-302" required><br>

    <label><b>Arrival Date</b></label>
    <input type="date" required><br>

    <label><b>Arrival Time</b></label>
    <input type="time" required><br>

    <label><b>Terminal</b></label>
    <select>
        <option>Terminal 1</option>
        <option>Terminal 2</option>
    </select><br><br>

    <label><b>Seat Number</b></label>
    <input type="text" placeholder="12A" required><br>

    <label><b>Baggage Count</b></label>
    <input type="number" min="0" max="10" required><br>

    <label><b>Mobile Number</b></label>
    <input type="tel" placeholder="+91 XXXXXXXXXX" required><br>

    <label><b>Email Address</b></label>
    <input type="email" placeholder="Enter Email" required><br>

    <label><b>Purpose of Visit</b></label>
    <select>
        <option>Tourism</option>
        <option>Business</option>
        <option>Employment</option>
        <option>Education</option>
        <option>Medical</option>
        <option>Transit</option>
    </select><br><br>

    <label><b>Address in India</b></label>
    <textarea rows="4" cols="50" placeholder="Enter Complete Address"></textarea><br><br>

    <label><b>Emergency Contact Number</b></label>
    <input type="tel" placeholder="+91 XXXXXXXXXX" required><br>

    <label><b>Upload Passport Copy</b></label>
    <input type="file"><br><br>

    <label><b>Upload Visa Copy</b></label>
    <input type="file"><br><br>

    <input type="checkbox" required>
    I confirm that all the information provided above is true and correct.

    <br><br>

    <button type="submit" class="registerbtn">✈ Submit Registration</button>
    <button type="reset">Reset Form</button>

  </div>

  <div class="container signin">

      <hr>

      <h3>Airport Facilities</h3>

      <ul>
        <li>🛫 Free Wi-Fi</li>
        <li>☕ Cafeteria & Restaurants</li>
        <li>💱 Currency Exchange</li>
        <li>🚕 Taxi Service</li>
        <li>🛄 Baggage Assistance</li>
        <li>🏨 Airport Lounge</li>
      </ul>

      <hr>

      <h3>Emergency Contact</h3>

      <p>📞 Help Desk : +91-22-66851010</p>
      <p>📧 support@mumbaiairport.com</p>

      <h2 style="color:green;">
      ✔ Thank You for Choosing Mumbai International Airport.
      </h2>

      <marquee behavior="alternate">
      ✈ Have a Pleasant Journey ✈
      </marquee>

  </div>

</form>
