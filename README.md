# Hello World - C# 

## 📄 Project Description
This is a simple "Hello World" web application. The application listens on port `8080` and returns a "Hello World from ASP.NET Core!" message when accessed.

## 🗂 Project Structure
c#/ <br>
├── Dockerfile <br>
├── Program.cs <br>
├── README.md <br>
└── hello-world.csproj

## 🛠 Technologies Used
- C#
- Docker

## 🚀 How to Run

### 1. Build the Docker Image
docker build -t hello_csharp .<br>
docker run -p 8080:80 hello_csharp<br>
Open your browser and navigate to: http://localhost:8080

## Creator
https://github.com/aalopezb

