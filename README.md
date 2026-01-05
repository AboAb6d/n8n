# n8n - Workflow Automation Platform

n8n هي منصة أتمتة workflows مجانية وopen source توفر مئات التكاملات لربط التطبيقات وأتمتة المهام.

## المميزات

- ✅ **مفتوحة المصدر** - يمكنك تعديل الكود كاملاً
- ✅ **مئات التكاملات** - ربط أي تطبيق تقريباً
- ✅ **واجهة بصرية سهلة** - بناء workflows بدون كود
- ✅ **مجانية** - لا توجد رسوم مخفية
- ✅ **آمنة** - احفظها على سيرفر خاص بك

## البدء السريع

### تثبيت محلي

```bash
npm install -g n8n
n8n start
```

افتح: `http://localhost:5678`

### نشر على Replit (مجاني)

1. انسخ المستودع إلى Replit
2. في Secrets أضف:
   - `N8N_BASIC_AUTH_USER=admin`
   - `N8N_BASIC_AUTH_PASSWORD=secure123`
3. اضغط **Run**

### نشر مع Docker

```bash
docker-compose up -d
```

افتح: `http://localhost:5678`

## الإعدادات (متغيرات البيئة)

انسخ `.env.example` إلى `.env`:

```bash
cp .env.example .env
```

**المتغيرات الأساسية:**
- `N8N_BASIC_AUTH_USER` - اسم المستخدم
- `N8N_BASIC_AUTH_PASSWORD` - كلمة المرور
- `N8N_HOST` - عنوان الاستماع (افتراضي: 0.0.0.0)
- `N8N_PORT` - المنفذ (افتراضي: 5678)
- `DATABASE_URL` - قاعدة بيانات (اختياري)
- `WEBHOOK_URL` - رابط الويبهوك

## الملفات المهمة

- `.replit` - إعدادات Replit
- `docker-compose.yml` - تشغيل مع Docker
- `Dockerfile` - صورة الحاوية
- `.env.example` - متغيرات النموذج

## تعديل اللوجو والألوان والاسم

بما أن n8n open source، يمكنك تعديل:

1. **اللوجو والألوان** - في ملفات الواجهة الأمامية
2. **الاسم** - في إعدادات التطبيق
3. **الميزات** - أضف أو عدّل الميزات

للتفاصيل: [توثيق تخصيص n8n](https://docs.n8n.io)

## استكشاف الأخطاء

**التطبيق لا يبدأ:**
```bash
DEBUG=n8n* npm start
```

**الويبهوكس لا تعمل:**
احدّث `WEBHOOK_URL` برابط الخادم الصحيح

**مشكلة قاعدة البيانات:**
تأكد من تعيين `DATABASE_URL` بشكل صحيح

## المراجع

- [توثيق n8n](https://docs.n8n.io)
- [مجتمع n8n](https://community.n8n.io)
- [GitHub](https://github.com/n8n-io/n8n)