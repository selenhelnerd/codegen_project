# CodeGen Project

Bu proje, PostgreSQL veritabanı şemasından otomatik olarak SQLAlchemy model ve view sınıfları oluşturmak için kullanılan bir kod üretim aracıdır. Veritabanı şemasını analiz ederek, views için Python kodu üretir.

## İçindekiler

- [Genel Bakış](#genel-bakış)
- [Kurulum](#kurulum)
- [Kullanım](#kullanım)
  - [Model Oluşturma](#model-oluşturma)
  - [View Oluşturma](#view-oluşturma)
  - [Alembic Migrasyonları](#alembic-migrasyonları)
- [Proje Yapısı](#proje-yapısı)
- [Teknik Detaylar](#teknik-detaylar)
- [Gereksinimler](#gereksinimler)

## Genel Bakış

CodeGen, veritabanı şemasını otomatik olarak Python koduna dönüştürerek, SQLAlchemy ORM modellerini ve veritabanı views yapilarini hızlı bir şekilde olusturmayi sağlar. Bu araç, özellikle büyük ve karmaşık veritabanı şemalarıyla çalışırken, manuel kod yazma sürecini otomatikleştirerek zaman kazandırır.

Temel özellikleri:

- PostgreSQL tablolarını SQLAlchemy model sınıflarına dönüştürme
- Veritabanı views yapilarini SQLAlchemy ORM ile kullanılabilir hale getirme
- Veritabanı fonksiyonlarını ve triggers yapilarini Python koduna dönüştürme
- Alembic ile şema değişikliklerini yönetme
- Jinja2 şablonları ile özelleştirilebilir kod üretimi

## Kurulum

1. Projeyi klonlayın:

```bash
git clone <repo-url>
cd codegen_project
```

2. Gerekli Python paketlerini yükleyin:

```bash
pip install sqlalchemy psycopg2-binary alembic jinja2 sqlalchemy-declarative-extensions
```

3. Veritabanı bağlantı bilgilerini yapılandırın:

`generate_models.py` ve `generate_views.py` dosyalarında veritabanı bağlantı parametrelerini kendi ortamınıza göre düzenleyin:

```python
# Veritabanı bağlantı parametreleri
DB_USER = "kullanici_adi"
DB_PASSWORD = "sifre"
DB_HOST = "localhost"
DB_PORT = 5432
DB_NAME = "veritabani_adi"
```

## Kullanım

### Model Oluşturma

Veritabanı tablolarından SQLAlchemy model sınıfları oluşturmak için:

```bash
python generate_models.py
```

Bu komut, veritabanı şemasını analiz eder ve `output/models.py` dosyasını oluşturur.

### View Oluşturma

Veritabanı viewslarindan SQLAlchemy sınıfları oluşturmak için:

```bash
python generate_views.py
```

Bu komut, veritabanındaki görünümleri analiz eder ve `app/db/views.py` dosyasını oluşturur.

### Alembic Migrasyonları

Veritabanı şema değişikliklerini yönetmek için Alembic :

1. Yeni bir migrasyon oluşturmak için:

```bash
alembic revision --autogenerate -m "migrasyon açıklaması"
```

2. Migrasyonu uygulamak için:

```bash
alembic upgrade head
```

3. Migrasyonu geri almak için:

```bash
alembic downgrade -1
```

## Proje Yapısı

```
codegen_project/
├── alembic/                  # Alembic migrasyon dosyaları
│   ├── versions/             # Migrasyon versiyonları
│   ├── env.py                # Alembic ortam yapılandırması
│   └── script.py.mako        # Migrasyon şablonu
├── app/                      # Uygulama kodları
│   └── db/                   # Veritabanı ile ilgili kodlar
│       ├── base.py           # Temel SQLAlchemy sınıfları
│       └── views.py          # Oluşturulan view sınıfları
├── templates/                # Jinja2 şablonları
│   ├── class_template.j2     # Model sınıfları için şablon
│   ├── models_template.j2    # Alternatif model şablonu
│   └── view_template.j2      # View sınıfları için şablon
├── alembic.ini               # Alembic yapılandırması
├── generate_models.py        # Model oluşturma 
├── generate_views.py         # View oluşturma 
└── schema_dump.sql           # Veritabanı şema dökümü
```

## Teknik Detaylar

### Model Oluşturma Süreci

`generate_models.py` :

1. Veritabanına bağlanır
2. SQLAlchemy Inspector kullanarak tablo metadatasını toplar:
   - Sütun bilgileri (isim, tip, nullable, default değer)
   - Primary key kısıtlamaları
   - Foreign key ilişkileri
   - Tablo yorumları
3. Görünüm (view) metadatasını toplar
4. Stored function ve trigger DDL'lerini toplar
5. Jinja2 şablonunu kullanarak Python kodunu oluşturur
6. Oluşturulan kodu `output/models.py` dosyasına yazar

### View Oluşturma Süreci

`generate_views.py`  :

1. Veritabanına bağlanır
2. Görünüm (view) metadatasını ve DDL tanımlarını toplar
3. Görünüm sütunlarını alır
4. Jinja2 şablonunu kullanarak Python kodunu oluşturur
5. Oluşturulan kodu `app/db/views.py` dosyasına yazar

### Alembic Entegrasyonu

Proje, Alembic ile entegre edilmiştir ve şu özellikleri destekler:

- Otomatik migrasyon oluşturma
- view değişikliklerini izleme
- Şema değişikliklerini geri alma
- Migrasyon geçmişini yönetme

`alembic/env.py` dosyasında, `sqlalchemy_declarative_extensions` kütüphanesi kullanılarak Alembic'in view  değişikliklerini izlemesi sağlanmıştır.

## Gereksinimler

- Python 3.8+
- PostgreSQL 12+
- SQLAlchemy 1.4+
- Alembic
- Jinja2
- psycopg2-binary
- sqlalchemy-declarative-extensions


