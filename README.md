# 🔐 Secure PHP Web App with WSO2 Asgardeo

## 📌 Overview
This project demonstrates a real-world integration of **WSO2 Asgardeo** into a pure PHP web application. It securely authenticates users using OAuth 2.0 and OpenID Connect protocols provided by the Asgardeo Customer Identity and Access Management (CIAM) platform. 

*(Note: This project was developed as part of the WSO2 Engineering Internship application process to demonstrate practical usage of WSO2 products.)*

## 🚀 Features
* **Secure User Authentication:** Login handled entirely by WSO2 Asgardeo.
* **Session Management:** PHP session handling using Asgardeo ID tokens.
* **User Profile Data Retrieval:** Fetches user details (Name, Email, Unique ID) upon successful login.

## 📸 Screenshots

* <img width="1915" height="895" alt="Screenshot 2026-03-10 130307" src="https://github.com/user-attachments/assets/d1dc7dff-5cf6-4120-8b84-523947b0438c" />
`
*<img width="1919" height="908" alt="Screenshot 2026-03-10 130035" src="https://github.com/user-attachments/assets/ca01062f-b7b4-4b76-8388-68dabfd8e704" />

* <img width="1915" height="910" alt="Screenshot 2026-03-10 130243" src="https://github.com/user-attachments/assets/b77cbe77-0b6b-46f3-ae39-75137a6050de" />


## 🛠️ Prerequisites
* [XAMPP](https://www.apachefriends.org/) (PHP 7.4 or higher)
* A [WSO2 Asgardeo](https://asgardeo.io/) Organization and a registered "Traditional Web Application".

## ⚙️ Setup Instructions
1. **Clone the repository:**
   ```bash
   git clone [https://github.com/noonecare86/Your-Repo-Name.git](https://github.com/noonecare86/Your-Repo-Name.git)
2. **Move to XAMPP directory:**
  Place the extracted folder inside C:\xampp\htdocs\.
3. **Configure Asgardeo Credentials:**
  Open login.php and callback.php and replace the placeholder values with your actual Asgardeo App details:
  $client_id = 'YOUR_CLIENT_ID';
  $client_secret = 'YOUR_CLIENT_SECRET'; // Only required in callback.php
  $org_name = 'YOUR_ORG_NAME';
4. **Run the Application:**
  Start Apache in XAMPP and navigate to http://localhost/Your-Folder-Name/ in your browser.


**👨‍💻 Author**
Nethmi Wijekoon

GitHub: @noonecare86

LinkedIn: Nethmi Wijekoon
