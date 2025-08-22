# Real-Time Chat Application

A full-stack chat application that allows multiple users to send and receive messages in real-time. Built with Spring Boot, WebSockets, and Thymeleaf, it demonstrates backend WebSocket handling, dynamic frontend rendering, and deployment with Docker.

**Live Demo:** (https://chatapplication-qkn5.onrender.com/chat)

## How It's Made

**Tech Stack:**  
- **Backend:** Spring Boot, WebSockets, STOMP, SockJS, Thymeleaf  
- **Frontend:** HTML, CSS, JavaScript  
- **Deployment:** Docker, Render  
- **Persistence:** Browser localStorage (for theme and chat history)  

Key details:  
- Spring Boot manages WebSocket connections for real-time messaging.  
- Frontend uses Thymeleaf templates served by Spring Boot.  
- Chat messages and user theme preferences are stored in localStorage to persist state across refreshes.  
- Docker container ensures environment consistency and smooth deployment on Render.

---

## Optimizations

- Prevented duplicate messages when the page reloads.  
- Smooth scrolling and responsive chat UI for better user experience.  
- LocalStorage caching reduces unnecessary reloads.  
- Dockerized the backend to simplify deployment and ensure consistency across environments.


## Lessons Learned

- **WebSockets & STOMP/SockJS:** Implemented real-time bidirectional communication between clients and server.  
- **Spring Boot & Thymeleaf:** Served dynamic content and integrated backend logic with frontend templates.  
- **Docker & Deployment:** Containerized the application and deployed it to Render, learning practical cloud deployment steps.  
- **Frontend Persistence:** Managed theme and chat history using localStorage for a better UX.  
- **Full-Stack Integration:** Combined backend, frontend, and deployment into a single working application, enhancing understanding of the full lifecycle.

