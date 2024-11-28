# Gunakan image Python sebagai base image
FROM python:3.8-slim

# Set working directory di dalam container
WORKDIR /app

# Salin semua file dari proyek ke dalam container
COPY . .

# Install dependensi
RUN pip install -r requirements.txt

# Set environment variable untuk Flask
ENV FLASK_APP=app.py

# Expose port 5000 agar aplikasi dapat diakses
EXPOSE 5000

# Jalankan aplikasi ketika container dimulai
CMD ["flask", "run", "--host=0.0.0.0"]
