# Sử dụng Node.js
FROM node:18-alpine

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy file package.json và package-lock.json
COPY package*.json ./

# Cài đặt các thư viện
RUN npm install --production

# Copy toàn bộ code còn lại vào container
COPY . .

# Mở port mà server sẽ chạy (Render thường dùng port do biến môi trường cấp, nhưng cứ expose 3000 hoặc 8080)
EXPOSE 8080

# Lệnh chạy server
CMD ["npm", "start"]