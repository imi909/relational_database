# Database MySQL - alta_online_shop
MySQL, the most popular Open Source SQL database management system, is developed, distributed, and supported by Oracle Corporation.

Alta_online_shop is database for final assignment MySQL task.

## Features

Here included:
- Fetching data: Select, Create, Insert, Update, Delete.
- Filtering data: Where, In, Like%, Between, And, Not.
- Aggregating data: Sum(), Count(*), Order by.
- Joining data: Left Join, Union.

## Tables References

#### Operator

| Columns   | Type           |
| :-------- | :-------       | 
| `id`       | `int AI PK`    |
| `nama`    | `varchar(255)` |
| `created_at`      | `datetime`     |
| `updated_at`      | `datetime`     |

#### Payment_method

| Columns   | Type           |
| :-------- | :-------       | 
| `id`       | `int AI PK`    |
| `nama`    | `varchar(255)` |
| `created_at`      | `datetime`     |
| `updated_at`      | `datetime`     |

#### Product

| Columns   | Type           |
| :-------- | :-------       | 
| `id`       | `int AI PK`    |
| `nama`    | `varchar(255)` |
| `pice`       | `int`    |
| `product_type_id`    | `int` |
| `operator_id`       | `int`    |
| `created_at`      | `datetime`     |
| `updated_at`      | `datetime`     |

#### Product_description

| Columns   | Type           |
| :-------- | :-------       | 
| `id`       | `int AI PK`    |
| `description`    | `mediumtext` |
| `product_id`    | `int` |
| `created_at`      | `datetime`     |
| `updated_at`      | `datetime`     |

#### Product_type

| Columns   | Type           |
| :-------- | :-------       | 
| `id`       | `int AI PK`    |
| `nama`    | `varchar(255)` |
| `created_at`      | `datetime`     |
| `updated_at`      | `datetime`     |

#### Transaction

| Columns   | Type           |
| :-------- | :-------       | 
| `id`       | `int AI PK`    |
| `user_id`    | `int` |
| `payment_method_id`       | `int`    |
| `user_id`    | `enum('PENDING','SUCCESS','FAILED')` |
| `created_at`      | `datetime`     |
| `updated_at`      | `datetime`     |

#### Transaction_detail

| Columns   | Type           |
| :-------- | :-------       | 
| `id`       | `int AI PK`    |
| `product_id`    | `int` |
| `qty`       | `int`    |
| `price`       | `int`    |
| `transaction_id`       | `int`    |
| `created_at`      | `datetime`     |
| `updated_at`      | `datetime`     |

#### Transaction_detail

| Columns   | Type           |
| :-------- | :-------       | 
| `id`       | `int AI PK`    |
| `nama`    | `varchar(255)` |
| `gender`       | `enum('LAKI_LAKI','PEREMPUAN')`    |
| `created_at`      | `datetime`     |
| `updated_at`      | `datetime`     |
