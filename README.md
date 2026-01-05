## Statamic v5 Headless

- Download Database : `/backup/{latest}`
- Main Documentation : https://statamic.dev/rest-api

### Setup

- Prepare **PHP 8.3** and **MySQL 8.4**
- Setup Database and Connect to ENV
- Duplicate `env.example` to `.env`
- Installation `composer install`
- Enable `ENV (STATAMIC_PRO_ENABLED)` and `ENV(STATAMIC_API_ENABLED)`
- Or you can enable it for all environments in `config/statamic/api.php`
- Enable Resource & Config `config/statamic/api.php`
- Generate Key `php artisan key:generate`
- Run with `php artisan serve`
- Login Admin `http://localhost:8000/admin-panel` (email : fajriyan@fajriyan.com |
  password : fajriyan)

### routing

`GET : /api/collections/{collection}/entries`

- Collection Products : http://localhost:8000/api/collections/products/entries
- Collection Careers : http://localhost:8000/api/collections/careers/entries
- Collection Pages : http://localhost:8000/api/collections/pages/entries

`GET /api/taxonomies/{taxonomy}/terms`

- Taxonomies Career Category :
  http://localhost:8000/api/taxonomies/career_categories/terms
- Taxonomies Career Location :
  http://localhost:8000/api/taxonomies/career_location/terms
- Taxonomies Career Department :
  http://localhost:8000/api/taxonomies/career_department/terms
- Taxonomies Product Categories :
  http://localhost:8000/api/taxonomies/product_categories/terms

### filter

- How to Use : https://statamic.dev/rest-api#using-filters
- example :
  http://localhost:8000/api/collections/products/entries?filter[title]=PixelForge+Studio
