# Ultra-minimal test - just nginx
FROM nginx:alpine

# Replace default page with simple health check
RUN echo '{"status":"ok","service":"whisper-test"}' > /usr/share/nginx/html/health.json
RUN echo 'server { listen 8000; location /health { default_type application/json; alias /usr/share/nginx/html/health.json; } location / { return 200 "whisper placeholder"; } }' > /etc/nginx/conf.d/default.conf

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]
