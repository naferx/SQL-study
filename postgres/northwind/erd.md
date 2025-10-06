# Northwind Database ERD

```mermaid
erDiagram
    customers ||--o{ orders : places
    customers ||--o{ customer_customer_demo : has

    employees ||--o{ orders : processes
    employees ||--o{ employee_territories : assigned_to
    employees ||--o{ employees : reports_to

    shippers ||--o{ orders : ships

    orders ||--|{ order_details : contains

    products ||--o{ order_details : ordered_in
    products }o--|| categories : belongs_to
    products }o--|| suppliers : supplied_by

    territories ||--o{ employee_territories : covers
    territories }o--|| region : in

    customer_demographics ||--o{ customer_customer_demo : defines

    customers {
        varchar customer_id PK
        varchar company_name
        varchar contact_name
        varchar contact_title
        varchar address
        varchar city
        varchar region
        varchar postal_code
        varchar country
        varchar phone
        varchar fax
    }

    employees {
        smallint employee_id PK
        varchar last_name
        varchar first_name
        varchar title
        varchar title_of_courtesy
        date birth_date
        date hire_date
        varchar address
        varchar city
        varchar region
        varchar postal_code
        varchar country
        varchar home_phone
        varchar extension
        bytea photo
        text notes
        smallint reports_to FK
        varchar photo_path
    }

    orders {
        smallint order_id PK
        varchar customer_id FK
        smallint employee_id FK
        date order_date
        date required_date
        date shipped_date
        smallint ship_via FK
        real freight
        varchar ship_name
        varchar ship_address
        varchar ship_city
        varchar ship_region
        varchar ship_postal_code
        varchar ship_country
    }

    order_details {
        smallint order_id PK_FK
        smallint product_id PK_FK
        real unit_price
        smallint quantity
        real discount
    }

    products {
        smallint product_id PK
        varchar product_name
        smallint supplier_id FK
        smallint category_id FK
        varchar quantity_per_unit
        real unit_price
        smallint units_in_stock
        smallint units_on_order
        smallint reorder_level
        integer discontinued
    }

    categories {
        smallint category_id PK
        varchar category_name
        text description
        bytea picture
    }

    suppliers {
        smallint supplier_id PK
        varchar company_name
        varchar contact_name
        varchar contact_title
        varchar address
        varchar city
        varchar region
        varchar postal_code
        varchar country
        varchar phone
        varchar fax
        text homepage
    }

    shippers {
        smallint shipper_id PK
        varchar company_name
        varchar phone
    }

    territories {
        varchar territory_id PK
        varchar territory_description
        smallint region_id FK
    }

    region {
        smallint region_id PK
        varchar region_description
    }

    employee_territories {
        smallint employee_id PK_FK
        varchar territory_id PK_FK
    }

    customer_demographics {
        varchar customer_type_id PK
        text customer_desc
    }

    customer_customer_demo {
        varchar customer_id PK_FK
        varchar customer_type_id PK_FK
    }

    us_states {
        smallint state_id PK
        varchar state_name
        varchar state_abbr
        varchar state_region
    }
```

## Key Relationships

### Core Business Flow
1. **Customers** place **Orders**
2. **Employees** process **Orders**
3. **Orders** contain **Order Details** (line items)
4. **Order Details** reference **Products**
5. **Shippers** ship **Orders**

### Product Management
- **Products** belong to **Categories**
- **Products** are supplied by **Suppliers**

### Employee Management
- **Employees** can report to other **Employees** (hierarchical)
- **Employees** are assigned to **Territories**
- **Territories** belong to **Regions**

### Customer Segmentation
- **Customers** can have demographic classifications via **Customer Demographics**

## Database Statistics
- **14 tables** total
- **13 foreign key relationships**
- **3 many-to-many relationships** (employee_territories, customer_customer_demo, order_details)
