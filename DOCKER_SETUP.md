# n8n Docker Deployment

تم إنشاء ملفات Docker اللازمة لنشر n8n كـ container.

## الخطوات:

### 1. بناء وتشغيل الـ Container

```bash
# بناء الصورة
docker-compose build

# تشغيل الـ Container
docker-compose up -d
```

### 2. الوصول إلى n8n
افتح في متصفحك: `http://localhost:5678`

### 3. أوامر مفيدة

```bash
# عرض السجلات
docker-compose logs -f n8n

# إيقاف الـ Container
docker-compose down

# إزالة البيانات
docker-compose down -v
```

## الملفات المُنشأة:

- **Dockerfile**: لبناء صورة Docker للـ n8n
- **docker-compose.yml**: لتشغيل n8n مع الخدمات المدعومة

## ملاحظات مهمة:

- البيانات محفوظة في volume `n8n_data`
- استخدم متغيرات البيئة في docker-compose.yml للتخصيص
- للإنتاج، يفضل تفعيل PostgreSQL (موجود معلق في الملف)
