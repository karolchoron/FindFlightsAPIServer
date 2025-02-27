# ✈️ FindFlights API Server - Backend

[![Website](https://img.shields.io/badge/Live%20Demo-Available-green?style=for-the-badge)](https://findflights.onrender.com)

## EN (PL version bellow)

FlightTrack  is a real-time flight status tracking application. 🛫

🔗 **Start the application:**  
➡ [https://findflights.onrender.com](https://findflights.onrender.com)  

---

## 🚀 **Technologies**
- ✅ ASP.NET Core 
- ✅ C#  
- ✅ RESTfull API (aviationstack API)
- ✅ Docker - deploy & DevOps na render.com

---

## 📥 **Installation (Local)**
0. **Remember to prepare the frontend application as well!**
<br> ➡ [https://github.com/karolchoron/FindFlightsAPIServer](https://github.com/karolchoron/FindFlights)  

1. **Clone the repository**  
2. **Add aviationstack API keys to the secrets.json**

Settings to allow frontend connection:
```
builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri("http://localhost:5240/") });
Port for:
HTTP: 5240
HTTPS: 7220
```
3. **CORS Settings (Cross-Origin Resource Sharing)**
```
builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(policy =>
    {
        policy.WithOrigins("https://findflights.onrender.com") // Edytuj domenę - lokalny adres frontendu z portem : http://localhost: 7050 lub 5228
              .AllowAnyMethod()
              .AllowAnyHeader();
    });
});
```

4. **Launch the application**

### 📌 Examples of real flight numbers:
- LO267
- MM68
- 7C2108
- CX524
- QR5844

---

🤝 **Contact** 
Do you have questions?

Contact via  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin&style=for-the-badge)](https://www.linkedin.com/in/karol-choron/)

---

## PL

FlightTrack to aplikacja do śledzenia statusów lotów w czasie rzeczywistym. 🛫

🔗 **Uruchom aplikację:**  
➡ [https://findflights.onrender.com](https://findflights.onrender.com)  

---

## 🚀 **Technologie**
- ✅ ASP.NET Core 
- ✅ C#  
- ✅ RESTfull API (aviationstack API)
- ✅ Docker - deploy & DevOps na render.com

---

## 📥 **Instalacja (Lokalnie)**
0. **Pamiętaj aby przygotować również aplikację frontendową!**
<br> ➡ [https://github.com/karolchoron/FindFlightsAPIServer](https://github.com/karolchoron/FindFlights)  

1. **Klonuj repozytorium**  
2. **Dodaj klucze aviationstack API do secrets.json**

Ustawienia do zezwolenia połączenia frontendu:
```
builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri("http://localhost:5240/") });
Port dla:
HTTP: 5240
HTTPS: 7220
```
3. **Ustawienia CORS (Cross-Origin Resource Sharing)**
```
builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(policy =>
    {
        policy.WithOrigins("https://findflights.onrender.com") // Edytuj domenę - lokalny adres frontendu z portem : http://localhost: 7050 lub 5228
              .AllowAnyMethod()
              .AllowAnyHeader();
    });
});
```

4. **Uruchom aplikację**

### 📌 Przykładowe numery prawdziwych lotów:
- LO267
- MM68
- 7C2108
- CX524
- QR5844

---

🤝 **Kontakt** 
Masz pytania?

Skontaktuj się przez  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin&style=for-the-badge)](https://www.linkedin.com/in/karol-choron/)

---
