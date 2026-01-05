# Quick Start Guide - دليل البدء السريع

## للتشغيل المحلي

```bash
# تثبيت
npm install -g n8n

# تشغيل
n8n start

# أو مع متغيرات مخصصة
N8N_BASIC_AUTH_ACTIVE=true \
N8N_BASIC_AUTH_USER=admin \
N8N_BASIC_AUTH_PASSWORD=secret123 \
n8n start
```

ثم افتح: **http://localhost:5678**

---

## للتشغيل مع Docker

```bash
# بناء وتشغيل
docker-compose up -d

# لعرض السجلات
docker-compose logs -f n8n

# للإيقاف
docker-compose down
```

---

## للنشر على Replit

1. **استيراد المشروع**
   - اذهب إلى https://replit.com
   - اختر "Import from GitHub"
   - ضع رابط المستودع

2. **إضافة المتغيرات** (Secrets)
   ```
   N8N_BASIC_AUTH_ACTIVE = true
   N8N_BASIC_AUTH_USER = admin
   N8N_BASIC_AUTH_PASSWORD = your_password
   ```

3. **تشغيل**
   - اضغط Run
   - انتظر 2-3 دقائق
   - افتح الرابط العام

---

## المتغيرات الأساسية

| المتغير | الوصف | القيمة الافتراضية |
|--------|-------|------------------|
| `N8N_BASIC_AUTH_ACTIVE` | تفعيل المصادقة | true |
| `N8N_BASIC_AUTH_USER` | اسم المستخدم | admin |
| `N8N_BASIC_AUTH_PASSWORD` | كلمة المرور | (مطلوب) |
| `N8N_HOST` | عنوان الاستماع | 0.0.0.0 |
| `N8N_PORT` | المنفذ | 5678 |
| `DATABASE_URL` | قاعدة بيانات PostgreSQL | (اختياري) |
| `WEBHOOK_URL` | رابط الويبهوك | http://localhost:5678 |

---

## أمثلة تشغيل

### مع PostgreSQL
```bash
DATABASE_URL=postgresql://user:pass@localhost:5432/n8n \
N8N_BASIC_AUTH_PASSWORD=secure123 \
n8n start
```

### مع Supabase
```bash
DATABASE_URL=postgresql://postgres:YOUR_PASSWORD@db.xxxxx.supabase.co:5432/postgres \
n8n start
```

### مع متغيرات محلية
```bash
# من ملف .env
source .env
n8n start
```

---

## استكشاف الأخطاء

```bash
# تصحيح التفاصيل
DEBUG=n8n* n8n start

# معلومات النسخة
n8n --version

# قائمة المساعدة
n8n --help
```

---

## المراجع السريعة

- 📚 [التوثيق الكاملة](https://docs.n8n.io)
- 💬 [مجتمع n8n](https://community.n8n.io)
- 🐙 [GitHub](https://github.com/n8n-io/n8n)
- 🎯 [Roadmap](https://github.com/n8n-io/n8n/projects)
