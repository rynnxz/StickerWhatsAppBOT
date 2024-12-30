# Gunakan base image untuk Node.js
FROM node:16

# Tentukan working directory
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin semua file proyek ke container
COPY . .

# Expose port (jika menggunakan server)
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
