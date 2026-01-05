# Replit Deployment Guide

دليل كامل لنشر n8n على Replit.

## الخطوات السريعة

### 1. استيراد المشروع
- اذهب إلى https://replit.com/github
- ضع رابط: `https://github.com/YOUR_USERNAME/n8n`
- اضغط **Import**

### 2. إضافة متغيرات البيئة
في Replit:
1. اضغط على **Secrets** (أيقونة القفل على اليسار)
2. أضف هذه المتغيرات:

```
N8N_BASIC_AUTH_ACTIVE = true
N8N_BASIC_AUTH_USER = admin
N8N_BASIC_AUTH_PASSWORD = your_secure_password_here
N8N_HOST = 0.0.0.0
N8N_PROTOCOL = http
GENERIC_FUNCTION_TIMEOUT = 600
```

### 3. تشغيل التطبيق
- اضغط على الزر الأزرق **Run**
- انتظر 2-3 دقائق حتى ينتهي التحميل
- افتح الرابط العام الذي يعطيه Replit

### 4. تسجيل الدخول
- Username: `admin` (أو القيمة التي وضعتها في `N8N_BASIC_AUTH_USER`)
- Password: القيمة التي وضعتها في `N8N_BASIC_AUTH_PASSWORD`

## إضافة قاعدة بيانات (Supabase)

**اختياري** - إذا أردت حفظ البيانات بشكل دائم:

1. اذهب إلى https://supabase.com
2. أنشئ مشروع جديد (اختر منطقة قريبة)
3. انسخ `DATABASE_URL` من تبويب "Connect"
4. في Replit Secrets أضف:
   ```
   DATABASE_URL = postgresql://postgres:YOUR_PASSWORD@...
   ```

## ملاحظات مهمة

- ✅ `.replit` يحتوي على الأمر الصحيح - اتركه كما هو
- ✅ Replit قد يضع التطبيق في وضع سبات بعد فترة خمول (طبيعي)
- ✅ لـ webhooks دائمة استخدم `WEBHOOK_URL` في الإعدادات
- ⚠️ لا تضع كلمات المرور في الكود - استعمل Secrets

## استكشاف الأخطاء

### "Not Found" أو صفحة فارغة
- تأكد من انتظار التحميل الكامل
- افتح Console (أسفل الشاشة) وابحث عن الأخطاء

### التطبيق ينام
- هذا طبيعي في Replit - يستيقظ عند الوصول الأول
- لـ uptime مستمر ادفع للخطة المدفوعة

### الويبهوكس لا تعمل
- في إعدادات n8n حدّث `WEBHOOK_URL` برابط Replit

## الخطوات التالية

1. **أنشئ workflows** - ابدأ بـ Hello World workflow
2. **أضف تكاملات** - ربط APIs والتطبيقات
3. **أتمتة المهام** - اجعل التطبيقات تعمل معاً تلقائياً
4. **شارك العمل** - شارك الـ workflows مع الفريق

---

**تحتاج مساعدة؟**
- [توثيق n8n الرسمية](https://docs.n8n.io)
- [مجتمع n8n](https://community.n8n.io)
