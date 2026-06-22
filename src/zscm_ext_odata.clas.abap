"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>ODataWeb.Northwind.Model</em>
"! <br/>It contains the additional schemas
"!   <li><em>NorthwindModel</em></li>
CLASS zscm_ext_odata DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Alphabetical_list_of_product</p>
      BEGIN OF tys_alphabetical_list_of_produ,
        "! <em>Key property</em> ProductID
        product_id        TYPE int4,
        "! <em>Key property</em> ProductName
        product_name      TYPE c LENGTH 40,
        "! SupplierID
        supplier_id       TYPE int4,
        "! CategoryID
        category_id       TYPE int4,
        "! QuantityPerUnit
        quantity_per_unit TYPE c LENGTH 20,
        "! UnitPrice
        unit_price        TYPE p LENGTH 10 DECIMALS 4,
        "! UnitsInStock
        units_in_stock    TYPE int2,
        "! UnitsOnOrder
        units_on_order    TYPE int2,
        "! ReorderLevel
        reorder_level     TYPE int2,
        "! <em>Key property</em> Discontinued
        discontinued      TYPE abap_bool,
        "! <em>Key property</em> CategoryName
        category_name     TYPE c LENGTH 15,
      END OF tys_alphabetical_list_of_produ,
      "! <p class="shorttext synchronized">List of Alphabetical_list_of_product</p>
      tyt_alphabetical_list_of_produ TYPE STANDARD TABLE OF tys_alphabetical_list_of_produ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Category</p>
      BEGIN OF tys_category,
        "! <em>Key property</em> CategoryID
        category_id   TYPE int4,
        "! CategoryName
        category_name TYPE c LENGTH 15,
        "! Description
        description   TYPE string,
        "! Picture
        picture       TYPE xstring,
        "! odata.etag
        etag          TYPE string,
      END OF tys_category,
      "! <p class="shorttext synchronized">List of Category</p>
      tyt_category TYPE STANDARD TABLE OF tys_category WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Category_Sales_for_1997</p>
      BEGIN OF tys_category_sales_for_1997,
        "! <em>Key property</em> CategoryName
        category_name  TYPE c LENGTH 15,
        "! CategorySales
        category_sales TYPE p LENGTH 10 DECIMALS 4,
      END OF tys_category_sales_for_1997,
      "! <p class="shorttext synchronized">List of Category_Sales_for_1997</p>
      tyt_category_sales_for_1997 TYPE STANDARD TABLE OF tys_category_sales_for_1997 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Current_Product_List</p>
      BEGIN OF tys_current_product_list,
        "! <em>Key property</em> ProductID
        product_id   TYPE int4,
        "! <em>Key property</em> ProductName
        product_name TYPE c LENGTH 40,
      END OF tys_current_product_list,
      "! <p class="shorttext synchronized">List of Current_Product_List</p>
      tyt_current_product_list TYPE STANDARD TABLE OF tys_current_product_list WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Customer</p>
      BEGIN OF tys_customer,
        "! <em>Key property</em> CustomerID
        customer_id   TYPE c LENGTH 5,
        "! CompanyName
        company_name  TYPE c LENGTH 40,
        "! ContactName
        contact_name  TYPE c LENGTH 30,
        "! ContactTitle
        contact_title TYPE c LENGTH 30,
        "! Address
        address       TYPE c LENGTH 60,
        "! City
        city          TYPE c LENGTH 15,
        "! Region
        region        TYPE c LENGTH 15,
        "! PostalCode
        postal_code   TYPE c LENGTH 10,
        "! Country
        country       TYPE c LENGTH 15,
        "! Phone
        phone         TYPE c LENGTH 24,
        "! Fax
        fax           TYPE c LENGTH 24,
        "! odata.etag
        etag          TYPE string,
      END OF tys_customer,
      "! <p class="shorttext synchronized">List of Customer</p>
      tyt_customer TYPE STANDARD TABLE OF tys_customer WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Customer_and_Suppliers_by_City</p>
      BEGIN OF tys_customer_and_suppliers_by,
        "! City
        city         TYPE c LENGTH 15,
        "! <em>Key property</em> CompanyName
        company_name TYPE c LENGTH 40,
        "! ContactName
        contact_name TYPE c LENGTH 30,
        "! <em>Key property</em> Relationship
        relationship TYPE c LENGTH 9,
      END OF tys_customer_and_suppliers_by,
      "! <p class="shorttext synchronized">List of Customer_and_Suppliers_by_City</p>
      tyt_customer_and_suppliers_by TYPE STANDARD TABLE OF tys_customer_and_suppliers_by WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CustomerDemographic</p>
      BEGIN OF tys_customer_demographic,
        "! <em>Key property</em> CustomerTypeID
        customer_type_id TYPE c LENGTH 10,
        "! CustomerDesc
        customer_desc    TYPE string,
      END OF tys_customer_demographic,
      "! <p class="shorttext synchronized">List of CustomerDemographic</p>
      tyt_customer_demographic TYPE STANDARD TABLE OF tys_customer_demographic WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Employee</p>
      BEGIN OF tys_employee,
        "! <em>Key property</em> EmployeeID
        employee_id       TYPE int4,
        "! LastName
        last_name         TYPE c LENGTH 20,
        "! FirstName
        first_name        TYPE c LENGTH 10,
        "! Title
        title             TYPE c LENGTH 30,
        "! TitleOfCourtesy
        title_of_courtesy TYPE c LENGTH 25,
        "! BirthDate
        birth_date        TYPE timestamp,
        "! HireDate
        hire_date         TYPE timestamp,
        "! Address
        address           TYPE c LENGTH 60,
        "! City
        city              TYPE c LENGTH 15,
        "! Region
        region            TYPE c LENGTH 15,
        "! PostalCode
        postal_code       TYPE c LENGTH 10,
        "! Country
        country           TYPE c LENGTH 15,
        "! HomePhone
        home_phone        TYPE c LENGTH 24,
        "! Extension
        extension         TYPE c LENGTH 4,
        "! Photo
        photo             TYPE xstring,
        "! Notes
        notes             TYPE string,
        "! ReportsTo
        reports_to        TYPE int4,
        "! PhotoPath
        photo_path        TYPE c LENGTH 255,
      END OF tys_employee,
      "! <p class="shorttext synchronized">List of Employee</p>
      tyt_employee TYPE STANDARD TABLE OF tys_employee WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Order</p>
      BEGIN OF tys_order,
        "! <em>Key property</em> OrderID
        order_id         TYPE int4,
        "! CustomerID
        customer_id      TYPE c LENGTH 5,
        "! EmployeeID
        employee_id      TYPE int4,
        "! OrderDate
        order_date       TYPE timestamp,
        "! RequiredDate
        required_date    TYPE timestamp,
        "! ShippedDate
        shipped_date     TYPE timestamp,
        "! ShipVia
        ship_via         TYPE int4,
        "! Freight
        freight          TYPE p LENGTH 10 DECIMALS 4,
        "! ShipName
        ship_name        TYPE c LENGTH 40,
        "! ShipAddress
        ship_address     TYPE c LENGTH 60,
        "! ShipCity
        ship_city        TYPE c LENGTH 15,
        "! ShipRegion
        ship_region      TYPE c LENGTH 15,
        "! ShipPostalCode
        ship_postal_code TYPE c LENGTH 10,
        "! ShipCountry
        ship_country     TYPE c LENGTH 15,
        "! odata.etag
        etag             TYPE string,
      END OF tys_order,
      "! <p class="shorttext synchronized">List of Order</p>
      tyt_order TYPE STANDARD TABLE OF tys_order WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Orders_Qry</p>
      BEGIN OF tys_orders_qry,
        "! <em>Key property</em> OrderID
        order_id         TYPE int4,
        "! CustomerID
        customer_id      TYPE c LENGTH 5,
        "! EmployeeID
        employee_id      TYPE int4,
        "! OrderDate
        order_date       TYPE timestamp,
        "! RequiredDate
        required_date    TYPE timestamp,
        "! ShippedDate
        shipped_date     TYPE timestamp,
        "! ShipVia
        ship_via         TYPE int4,
        "! Freight
        freight          TYPE p LENGTH 10 DECIMALS 4,
        "! ShipName
        ship_name        TYPE c LENGTH 40,
        "! ShipAddress
        ship_address     TYPE c LENGTH 60,
        "! ShipCity
        ship_city        TYPE c LENGTH 15,
        "! ShipRegion
        ship_region      TYPE c LENGTH 15,
        "! ShipPostalCode
        ship_postal_code TYPE c LENGTH 10,
        "! ShipCountry
        ship_country     TYPE c LENGTH 15,
        "! <em>Key property</em> CompanyName
        company_name     TYPE c LENGTH 40,
        "! Address
        address          TYPE c LENGTH 60,
        "! City
        city             TYPE c LENGTH 15,
        "! Region
        region           TYPE c LENGTH 15,
        "! PostalCode
        postal_code      TYPE c LENGTH 10,
        "! Country
        country          TYPE c LENGTH 15,
      END OF tys_orders_qry,
      "! <p class="shorttext synchronized">List of Orders_Qry</p>
      tyt_orders_qry TYPE STANDARD TABLE OF tys_orders_qry WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Order_Detail</p>
      BEGIN OF tys_order_detail,
        "! <em>Key property</em> OrderID
        order_id   TYPE int4,
        "! <em>Key property</em> ProductID
        product_id TYPE int4,
        "! UnitPrice
        unit_price TYPE p LENGTH 10 DECIMALS 4,
        "! Quantity
        quantity   TYPE int2,
        "! Discount
        discount   TYPE /iwbep/v4_float,
      END OF tys_order_detail,
      "! <p class="shorttext synchronized">List of Order_Detail</p>
      tyt_order_detail TYPE STANDARD TABLE OF tys_order_detail WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Order_Subtotal</p>
      BEGIN OF tys_order_subtotal,
        "! <em>Key property</em> OrderID
        order_id TYPE int4,
        "! Subtotal
        subtotal TYPE p LENGTH 10 DECIMALS 4,
      END OF tys_order_subtotal,
      "! <p class="shorttext synchronized">List of Order_Subtotal</p>
      tyt_order_subtotal TYPE STANDARD TABLE OF tys_order_subtotal WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Product</p>
      BEGIN OF tys_product,
        "! <em>Key property</em> ProductID
        product_id        TYPE int4,
        "! ProductName
        product_name      TYPE c LENGTH 40,
        "! SupplierID
        supplier_id       TYPE int4,
        "! CategoryID
        category_id       TYPE int4,
        "! QuantityPerUnit
        quantity_per_unit TYPE c LENGTH 20,
        "! UnitPrice
        unit_price        TYPE p LENGTH 10 DECIMALS 4,
        "! UnitsInStock
        units_in_stock    TYPE int2,
        "! UnitsOnOrder
        units_on_order    TYPE int2,
        "! ReorderLevel
        reorder_level     TYPE int2,
        "! Discontinued
        discontinued      TYPE abap_bool,
      END OF tys_product,
      "! <p class="shorttext synchronized">List of Product</p>
      tyt_product TYPE STANDARD TABLE OF tys_product WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Products_Above_Average_Price</p>
      BEGIN OF tys_products_above_average_pri,
        "! <em>Key property</em> ProductName
        product_name TYPE c LENGTH 40,
        "! UnitPrice
        unit_price   TYPE p LENGTH 10 DECIMALS 4,
      END OF tys_products_above_average_pri,
      "! <p class="shorttext synchronized">List of Products_Above_Average_Price</p>
      tyt_products_above_average_pri TYPE STANDARD TABLE OF tys_products_above_average_pri WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Products_by_Category</p>
      BEGIN OF tys_products_by_category,
        "! <em>Key property</em> CategoryName
        category_name     TYPE c LENGTH 15,
        "! <em>Key property</em> ProductName
        product_name      TYPE c LENGTH 40,
        "! QuantityPerUnit
        quantity_per_unit TYPE c LENGTH 20,
        "! UnitsInStock
        units_in_stock    TYPE int2,
        "! <em>Key property</em> Discontinued
        discontinued      TYPE abap_bool,
      END OF tys_products_by_category,
      "! <p class="shorttext synchronized">List of Products_by_Category</p>
      tyt_products_by_category TYPE STANDARD TABLE OF tys_products_by_category WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Product_Sales_for_1997</p>
      BEGIN OF tys_product_sales_for_1997,
        "! <em>Key property</em> CategoryName
        category_name TYPE c LENGTH 15,
        "! <em>Key property</em> ProductName
        product_name  TYPE c LENGTH 40,
        "! ProductSales
        product_sales TYPE p LENGTH 10 DECIMALS 4,
      END OF tys_product_sales_for_1997,
      "! <p class="shorttext synchronized">List of Product_Sales_for_1997</p>
      tyt_product_sales_for_1997 TYPE STANDARD TABLE OF tys_product_sales_for_1997 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Region</p>
      BEGIN OF tys_region,
        "! <em>Key property</em> RegionID
        region_id          TYPE int4,
        "! RegionDescription
        region_description TYPE c LENGTH 50,
      END OF tys_region,
      "! <p class="shorttext synchronized">List of Region</p>
      tyt_region TYPE STANDARD TABLE OF tys_region WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Sales_by_Category</p>
      BEGIN OF tys_sales_by_category,
        "! <em>Key property</em> CategoryID
        category_id   TYPE int4,
        "! <em>Key property</em> CategoryName
        category_name TYPE c LENGTH 15,
        "! <em>Key property</em> ProductName
        product_name  TYPE c LENGTH 40,
        "! ProductSales
        product_sales TYPE p LENGTH 10 DECIMALS 4,
      END OF tys_sales_by_category,
      "! <p class="shorttext synchronized">List of Sales_by_Category</p>
      tyt_sales_by_category TYPE STANDARD TABLE OF tys_sales_by_category WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Sales_Totals_by_Amount</p>
      BEGIN OF tys_sales_totals_by_amount,
        "! SaleAmount
        sale_amount  TYPE p LENGTH 10 DECIMALS 4,
        "! <em>Key property</em> OrderID
        order_id     TYPE int4,
        "! <em>Key property</em> CompanyName
        company_name TYPE c LENGTH 40,
        "! ShippedDate
        shipped_date TYPE timestamp,
      END OF tys_sales_totals_by_amount,
      "! <p class="shorttext synchronized">List of Sales_Totals_by_Amount</p>
      tyt_sales_totals_by_amount TYPE STANDARD TABLE OF tys_sales_totals_by_amount WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Shipper</p>
      BEGIN OF tys_shipper,
        "! <em>Key property</em> ShipperID
        shipper_id   TYPE int4,
        "! CompanyName
        company_name TYPE c LENGTH 40,
        "! Phone
        phone        TYPE c LENGTH 24,
      END OF tys_shipper,
      "! <p class="shorttext synchronized">List of Shipper</p>
      tyt_shipper TYPE STANDARD TABLE OF tys_shipper WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Summary_of_Sales_by_Quarter</p>
      BEGIN OF tys_summary_of_sales_by_quarte,
        "! ShippedDate
        shipped_date TYPE timestamp,
        "! <em>Key property</em> OrderID
        order_id     TYPE int4,
        "! Subtotal
        subtotal     TYPE p LENGTH 10 DECIMALS 4,
      END OF tys_summary_of_sales_by_quarte,
      "! <p class="shorttext synchronized">List of Summary_of_Sales_by_Quarter</p>
      tyt_summary_of_sales_by_quarte TYPE STANDARD TABLE OF tys_summary_of_sales_by_quarte WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Summary_of_Sales_by_Year</p>
      BEGIN OF tys_summary_of_sales_by_year,
        "! ShippedDate
        shipped_date TYPE timestamp,
        "! <em>Key property</em> OrderID
        order_id     TYPE int4,
        "! Subtotal
        subtotal     TYPE p LENGTH 10 DECIMALS 4,
      END OF tys_summary_of_sales_by_year,
      "! <p class="shorttext synchronized">List of Summary_of_Sales_by_Year</p>
      tyt_summary_of_sales_by_year TYPE STANDARD TABLE OF tys_summary_of_sales_by_year WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Supplier</p>
      BEGIN OF tys_supplier,
        "! <em>Key property</em> SupplierID
        supplier_id   TYPE int4,
        "! CompanyName
        company_name  TYPE c LENGTH 40,
        "! ContactName
        contact_name  TYPE c LENGTH 30,
        "! ContactTitle
        contact_title TYPE c LENGTH 30,
        "! Address
        address       TYPE c LENGTH 60,
        "! City
        city          TYPE c LENGTH 15,
        "! Region
        region        TYPE c LENGTH 15,
        "! PostalCode
        postal_code   TYPE c LENGTH 10,
        "! Country
        country       TYPE c LENGTH 15,
        "! Phone
        phone         TYPE c LENGTH 24,
        "! Fax
        fax           TYPE c LENGTH 24,
        "! HomePage
        home_page     TYPE string,
      END OF tys_supplier,
      "! <p class="shorttext synchronized">List of Supplier</p>
      tyt_supplier TYPE STANDARD TABLE OF tys_supplier WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Territory</p>
      BEGIN OF tys_territory,
        "! <em>Key property</em> TerritoryID
        territory_id          TYPE c LENGTH 20,
        "! TerritoryDescription
        territory_description TYPE c LENGTH 50,
        "! RegionID
        region_id             TYPE int4,
      END OF tys_territory,
      "! <p class="shorttext synchronized">List of Territory</p>
      tyt_territory TYPE STANDARD TABLE OF tys_territory WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      "! <p><strong>Missing Elements</strong></p>
      "! <p>Some elements are missing because they require features not supported by the client proxy-framework or have missing dependencies.<br/> These elements are shown in the following list:</p>
      "! <ul>
      "! <li><strong>Invoices</strong>: Entity Set 'Invoices'  skipped, Entity Type 'Invoice' is missing
      "! <li><strong>Order_Details_Extendeds</strong>: Entity Set 'Order_Details_Extendeds'  skipped, Entity Type 'Order_Details_Extended' is missing
      "! </ul>
      BEGIN OF gcs_entity_set,
        "! Alphabetical_list_of_products
        "! <br/> Collection of type 'Alphabetical_list_of_product'
        alphabetical_list_of_pro_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ALPHABETICAL_LIST_OF_PRO_2',
        "! Categories
        "! <br/> Collection of type 'Category'
        categories                 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CATEGORIES',
        "! Category_Sales_for_1997
        "! <br/> Collection of type 'Category_Sales_for_1997'
        category_sales_for_1997_2  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CATEGORY_SALES_FOR_1997_2',
        "! Current_Product_Lists
        "! <br/> Collection of type 'Current_Product_List'
        current_product_lists      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CURRENT_PRODUCT_LISTS',
        "! Customers
        "! <br/> Collection of type 'Customer'
        customers                  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CUSTOMERS',
        "! Customer_and_Suppliers_by_Cities
        "! <br/> Collection of type 'Customer_and_Suppliers_by_City'
        customer_and_suppliers_b_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CUSTOMER_AND_SUPPLIERS_B_2',
        "! CustomerDemographics
        "! <br/> Collection of type 'CustomerDemographic'
        customer_demographics      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CUSTOMER_DEMOGRAPHICS',
        "! Employees
        "! <br/> Collection of type 'Employee'
        employees                  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EMPLOYEES',
        "! Orders
        "! <br/> Collection of type 'Order'
        orders                     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ORDERS',
        "! Orders_Qries
        "! <br/> Collection of type 'Orders_Qry'
        orders_qries               TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ORDERS_QRIES',
        "! Order_Details
        "! <br/> Collection of type 'Order_Detail'
        order_details              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ORDER_DETAILS',
        "! Order_Subtotals
        "! <br/> Collection of type 'Order_Subtotal'
        order_subtotals            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ORDER_SUBTOTALS',
        "! Products
        "! <br/> Collection of type 'Product'
        products                   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCTS',
        "! Products_Above_Average_Prices
        "! <br/> Collection of type 'Products_Above_Average_Price'
        products_above_average_p_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCTS_ABOVE_AVERAGE_P_2',
        "! Products_by_Categories
        "! <br/> Collection of type 'Products_by_Category'
        products_by_categories     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCTS_BY_CATEGORIES',
        "! Product_Sales_for_1997
        "! <br/> Collection of type 'Product_Sales_for_1997'
        product_sales_for_1997_2   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_SALES_FOR_1997_2',
        "! Regions
        "! <br/> Collection of type 'Region'
        regions                    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'REGIONS',
        "! Sales_by_Categories
        "! <br/> Collection of type 'Sales_by_Category'
        sales_by_categories        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_BY_CATEGORIES',
        "! Sales_Totals_by_Amounts
        "! <br/> Collection of type 'Sales_Totals_by_Amount'
        sales_totals_by_amounts    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_TOTALS_BY_AMOUNTS',
        "! Shippers
        "! <br/> Collection of type 'Shipper'
        shippers                   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SHIPPERS',
        "! Summary_of_Sales_by_Quarters
        "! <br/> Collection of type 'Summary_of_Sales_by_Quarter'
        summary_of_sales_by_quar_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SUMMARY_OF_SALES_BY_QUAR_2',
        "! Summary_of_Sales_by_Years
        "! <br/> Collection of type 'Summary_of_Sales_by_Year'
        summary_of_sales_by_years  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SUMMARY_OF_SALES_BY_YEARS',
        "! Suppliers
        "! <br/> Collection of type 'Supplier'
        suppliers                  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SUPPLIERS',
        "! Territories
        "! <br/> Collection of type 'Territory'
        territories                TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'TERRITORIES',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      "! <p><strong>Missing Elements</strong></p>
      "! <p>Some elements are missing because they require features not supported by the client proxy-framework or have missing dependencies.<br/> These elements are shown in the following list:</p>
      "! <ul>
      "! <li><strong>Invoice</strong>: Entity Type skipped. Creation of Entity Type 'Invoice' ended with error: Type 'Single' not allowed for key properties
      "! <li><strong>Order_Details_Extended</strong>: Entity Type skipped. Creation of Entity Type 'Order_Details_Extended' ended with error: Type 'Single' not allowed for key properties
      "! </ul>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for Alphabetical_list_of_product</p>
        "! See also structure type {@link ..tys_alphabetical_list_of_produ}
        BEGIN OF alphabetical_list_of_produ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF alphabetical_list_of_produ,
        "! <p class="shorttext synchronized">Internal names for Category</p>
        "! See also structure type {@link ..tys_category}
        BEGIN OF category,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Products
            products TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCTS',
          END OF navigation,
        END OF category,
        "! <p class="shorttext synchronized">Internal names for Category_Sales_for_1997</p>
        "! See also structure type {@link ..tys_category_sales_for_1997}
        BEGIN OF category_sales_for_1997,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF category_sales_for_1997,
        "! <p class="shorttext synchronized">Internal names for Current_Product_List</p>
        "! See also structure type {@link ..tys_current_product_list}
        BEGIN OF current_product_list,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF current_product_list,
        "! <p class="shorttext synchronized">Internal names for Customer</p>
        "! See also structure type {@link ..tys_customer}
        BEGIN OF customer,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! CustomerDemographics
            customer_demographics TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CUSTOMER_DEMOGRAPHICS',
            "! Orders
            orders                TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ORDERS',
          END OF navigation,
        END OF customer,
        "! <p class="shorttext synchronized">Internal names for Customer_and_Suppliers_by_City</p>
        "! See also structure type {@link ..tys_customer_and_suppliers_by}
        BEGIN OF customer_and_suppliers_by,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF customer_and_suppliers_by,
        "! <p class="shorttext synchronized">Internal names for CustomerDemographic</p>
        "! See also structure type {@link ..tys_customer_demographic}
        BEGIN OF customer_demographic,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Customers
            customers TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CUSTOMERS',
          END OF navigation,
        END OF customer_demographic,
        "! <p class="shorttext synchronized">Internal names for Employee</p>
        "! See also structure type {@link ..tys_employee}
        BEGIN OF employee,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Employees1
            employees_1 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'EMPLOYEES_1',
            "! Employee1
            employee_1  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'EMPLOYEE_1',
            "! Orders
            orders      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ORDERS',
            "! Territories
            territories TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TERRITORIES',
          END OF navigation,
        END OF employee,
        "! <p class="shorttext synchronized">Internal names for Order</p>
        "! See also structure type {@link ..tys_order}
        BEGIN OF order,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Customer
            customer      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CUSTOMER',
            "! Employee
            employee      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'EMPLOYEE',
            "! Order_Details
            order_details TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ORDER_DETAILS',
            "! Shipper
            shipper       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SHIPPER',
          END OF navigation,
        END OF order,
        "! <p class="shorttext synchronized">Internal names for Orders_Qry</p>
        "! See also structure type {@link ..tys_orders_qry}
        BEGIN OF orders_qry,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF orders_qry,
        "! <p class="shorttext synchronized">Internal names for Order_Detail</p>
        "! See also structure type {@link ..tys_order_detail}
        BEGIN OF order_detail,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Order
            order   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ORDER',
            "! Product
            product TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT',
          END OF navigation,
        END OF order_detail,
        "! <p class="shorttext synchronized">Internal names for Order_Subtotal</p>
        "! See also structure type {@link ..tys_order_subtotal}
        BEGIN OF order_subtotal,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF order_subtotal,
        "! <p class="shorttext synchronized">Internal names for Product</p>
        "! See also structure type {@link ..tys_product}
        BEGIN OF product,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Category
            category      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CATEGORY',
            "! Order_Details
            order_details TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ORDER_DETAILS',
            "! Supplier
            supplier      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SUPPLIER',
          END OF navigation,
        END OF product,
        "! <p class="shorttext synchronized">Internal names for Products_Above_Average_Price</p>
        "! See also structure type {@link ..tys_products_above_average_pri}
        BEGIN OF products_above_average_pri,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF products_above_average_pri,
        "! <p class="shorttext synchronized">Internal names for Products_by_Category</p>
        "! See also structure type {@link ..tys_products_by_category}
        BEGIN OF products_by_category,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF products_by_category,
        "! <p class="shorttext synchronized">Internal names for Product_Sales_for_1997</p>
        "! See also structure type {@link ..tys_product_sales_for_1997}
        BEGIN OF product_sales_for_1997,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF product_sales_for_1997,
        "! <p class="shorttext synchronized">Internal names for Region</p>
        "! See also structure type {@link ..tys_region}
        BEGIN OF region,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Territories
            territories TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TERRITORIES',
          END OF navigation,
        END OF region,
        "! <p class="shorttext synchronized">Internal names for Sales_by_Category</p>
        "! See also structure type {@link ..tys_sales_by_category}
        BEGIN OF sales_by_category,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sales_by_category,
        "! <p class="shorttext synchronized">Internal names for Sales_Totals_by_Amount</p>
        "! See also structure type {@link ..tys_sales_totals_by_amount}
        BEGIN OF sales_totals_by_amount,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sales_totals_by_amount,
        "! <p class="shorttext synchronized">Internal names for Shipper</p>
        "! See also structure type {@link ..tys_shipper}
        BEGIN OF shipper,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Orders
            orders TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ORDERS',
          END OF navigation,
        END OF shipper,
        "! <p class="shorttext synchronized">Internal names for Summary_of_Sales_by_Quarter</p>
        "! See also structure type {@link ..tys_summary_of_sales_by_quarte}
        BEGIN OF summary_of_sales_by_quarte,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF summary_of_sales_by_quarte,
        "! <p class="shorttext synchronized">Internal names for Summary_of_Sales_by_Year</p>
        "! See also structure type {@link ..tys_summary_of_sales_by_year}
        BEGIN OF summary_of_sales_by_year,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF summary_of_sales_by_year,
        "! <p class="shorttext synchronized">Internal names for Supplier</p>
        "! See also structure type {@link ..tys_supplier}
        BEGIN OF supplier,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Products
            products TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCTS',
          END OF navigation,
        END OF supplier,
        "! <p class="shorttext synchronized">Internal names for Territory</p>
        "! See also structure type {@link ..tys_territory}
        BEGIN OF territory,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Employees
            employees TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'EMPLOYEES',
            "! Region
            region    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'REGION',
          END OF navigation,
        END OF territory,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define Alphabetical_list_of_product</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_alphabetical_list_of_produ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Category</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_category RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Category_Sales_for_1997</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_category_sales_for_1997 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Current_Product_List</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_current_product_list RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Customer</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_customer RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Customer_and_Suppliers_by_City</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_customer_and_suppliers_by RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CustomerDemographic</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_customer_demographic RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Employee</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_employee RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Order</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_order RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Orders_Qry</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_orders_qry RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Order_Detail</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_order_detail RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Order_Subtotal</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_order_subtotal RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Product</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Products_Above_Average_Price</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_products_above_average_pri RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Products_by_Category</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_products_by_category RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Product_Sales_for_1997</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_sales_for_1997 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Region</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_region RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Sales_by_Category</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sales_by_category RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Sales_Totals_by_Amount</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sales_totals_by_amount RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Shipper</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_shipper RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Summary_of_Sales_by_Quarter</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_summary_of_sales_by_quarte RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Summary_of_Sales_by_Year</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_summary_of_sales_by_year RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Supplier</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_supplier RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Territory</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_territory RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zscm_ext_odata IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'ODataWeb.Northwind.Model' ) ##NO_TEXT.

    def_alphabetical_list_of_produ( ).
    def_category( ).
    def_category_sales_for_1997( ).
    def_current_product_list( ).
    def_customer( ).
    def_customer_and_suppliers_by( ).
    def_customer_demographic( ).
    def_employee( ).
    def_order( ).
    def_orders_qry( ).
    def_order_detail( ).
    def_order_subtotal( ).
    def_product( ).
    def_products_above_average_pri( ).
    def_products_by_category( ).
    def_product_sales_for_1997( ).
    def_region( ).
    def_sales_by_category( ).
    def_sales_totals_by_amount( ).
    def_shipper( ).
    def_summary_of_sales_by_quarte( ).
    def_summary_of_sales_by_year( ).
    def_supplier( ).
    def_territory( ).

  ENDMETHOD.


  METHOD def_alphabetical_list_of_produ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ALPHABETICAL_LIST_OF_PRODU'
                                    is_structure              = VALUE tys_alphabetical_list_of_produ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Alphabetical_list_of_product' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ALPHABETICAL_LIST_OF_PRO_2' ).
    lo_entity_set->set_edm_name( 'Alphabetical_list_of_products' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ID' ).
    lo_primitive_property->set_edm_name( 'ProductID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NAME' ).
    lo_primitive_property->set_edm_name( 'ProductName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ID' ).
    lo_primitive_property->set_edm_name( 'SupplierID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_ID' ).
    lo_primitive_property->set_edm_name( 'CategoryID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_PER_UNIT' ).
    lo_primitive_property->set_edm_name( 'QuantityPerUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_PRICE' ).
    lo_primitive_property->set_edm_name( 'UnitPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNITS_IN_STOCK' ).
    lo_primitive_property->set_edm_name( 'UnitsInStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNITS_ON_ORDER' ).
    lo_primitive_property->set_edm_name( 'UnitsOnOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REORDER_LEVEL' ).
    lo_primitive_property->set_edm_name( 'ReorderLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCONTINUED' ).
    lo_primitive_property->set_edm_name( 'Discontinued' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_NAME' ).
    lo_primitive_property->set_edm_name( 'CategoryName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_category.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CATEGORY'
                                    is_structure              = VALUE tys_category( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Category' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CATEGORIES' ).
    lo_entity_set->set_edm_name( 'Categories' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_ID' ).
    lo_primitive_property->set_edm_name( 'CategoryID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_NAME' ).
    lo_primitive_property->set_edm_name( 'CategoryName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'Description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PICTURE' ).
    lo_primitive_property->set_edm_name( 'Picture' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Binary' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCTS' ).
    lo_navigation_property->set_edm_name( 'Products' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_category_sales_for_1997.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CATEGORY_SALES_FOR_1997'
                                    is_structure              = VALUE tys_category_sales_for_1997( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Category_Sales_for_1997' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CATEGORY_SALES_FOR_1997_2' ).
    lo_entity_set->set_edm_name( 'Category_Sales_for_1997' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_NAME' ).
    lo_primitive_property->set_edm_name( 'CategoryName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_SALES' ).
    lo_primitive_property->set_edm_name( 'CategorySales' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_current_product_list.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CURRENT_PRODUCT_LIST'
                                    is_structure              = VALUE tys_current_product_list( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Current_Product_List' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CURRENT_PRODUCT_LISTS' ).
    lo_entity_set->set_edm_name( 'Current_Product_Lists' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ID' ).
    lo_primitive_property->set_edm_name( 'ProductID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NAME' ).
    lo_primitive_property->set_edm_name( 'ProductName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_customer.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CUSTOMER'
                                    is_structure              = VALUE tys_customer( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CUSTOMERS' ).
    lo_entity_set->set_edm_name( 'Customers' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ID' ).
    lo_primitive_property->set_edm_name( 'CustomerID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_NAME' ).
    lo_primitive_property->set_edm_name( 'ContactName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_TITLE' ).
    lo_primitive_property->set_edm_name( 'ContactTitle' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS' ).
    lo_primitive_property->set_edm_name( 'Address' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY' ).
    lo_primitive_property->set_edm_name( 'City' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE' ).
    lo_primitive_property->set_edm_name( 'Phone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX' ).
    lo_primitive_property->set_edm_name( 'Fax' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CUSTOMER_DEMOGRAPHICS' ).
    lo_navigation_property->set_edm_name( 'CustomerDemographics' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CUSTOMER_DEMOGRAPHIC' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ORDERS' ).
    lo_navigation_property->set_edm_name( 'Orders' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'ORDER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_customer_and_suppliers_by.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CUSTOMER_AND_SUPPLIERS_BY'
                                    is_structure              = VALUE tys_customer_and_suppliers_by( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Customer_and_Suppliers_by_City' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CUSTOMER_AND_SUPPLIERS_B_2' ).
    lo_entity_set->set_edm_name( 'Customer_and_Suppliers_by_Cities' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY' ).
    lo_primitive_property->set_edm_name( 'City' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_NAME' ).
    lo_primitive_property->set_edm_name( 'ContactName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATIONSHIP' ).
    lo_primitive_property->set_edm_name( 'Relationship' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_customer_demographic.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CUSTOMER_DEMOGRAPHIC'
                                    is_structure              = VALUE tys_customer_demographic( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CustomerDemographic' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CUSTOMER_DEMOGRAPHICS' ).
    lo_entity_set->set_edm_name( 'CustomerDemographics' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TYPE_ID' ).
    lo_primitive_property->set_edm_name( 'CustomerTypeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_DESC' ).
    lo_primitive_property->set_edm_name( 'CustomerDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CUSTOMERS' ).
    lo_navigation_property->set_edm_name( 'Customers' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CUSTOMER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_employee.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EMPLOYEE'
                                    is_structure              = VALUE tys_employee( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Employee' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EMPLOYEES' ).
    lo_entity_set->set_edm_name( 'Employees' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMPLOYEE_ID' ).
    lo_primitive_property->set_edm_name( 'EmployeeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_NAME' ).
    lo_primitive_property->set_edm_name( 'LastName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_NAME' ).
    lo_primitive_property->set_edm_name( 'FirstName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TITLE' ).
    lo_primitive_property->set_edm_name( 'Title' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TITLE_OF_COURTESY' ).
    lo_primitive_property->set_edm_name( 'TitleOfCourtesy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BIRTH_DATE' ).
    lo_primitive_property->set_edm_name( 'BirthDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HIRE_DATE' ).
    lo_primitive_property->set_edm_name( 'HireDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS' ).
    lo_primitive_property->set_edm_name( 'Address' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY' ).
    lo_primitive_property->set_edm_name( 'City' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOME_PHONE' ).
    lo_primitive_property->set_edm_name( 'HomePhone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTENSION' ).
    lo_primitive_property->set_edm_name( 'Extension' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHOTO' ).
    lo_primitive_property->set_edm_name( 'Photo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Binary' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTES' ).
    lo_primitive_property->set_edm_name( 'Notes' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPORTS_TO' ).
    lo_primitive_property->set_edm_name( 'ReportsTo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHOTO_PATH' ).
    lo_primitive_property->set_edm_name( 'PhotoPath' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'EMPLOYEES_1' ).
    lo_navigation_property->set_edm_name( 'Employees1' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EMPLOYEE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'EMPLOYEE_1' ).
    lo_navigation_property->set_edm_name( 'Employee1' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EMPLOYEE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ORDERS' ).
    lo_navigation_property->set_edm_name( 'Orders' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'ORDER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TERRITORIES' ).
    lo_navigation_property->set_edm_name( 'Territories' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'TERRITORY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_order.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ORDER'
                                    is_structure              = VALUE tys_order( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Order' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ORDERS' ).
    lo_entity_set->set_edm_name( 'Orders' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'OrderID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ID' ).
    lo_primitive_property->set_edm_name( 'CustomerID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMPLOYEE_ID' ).
    lo_primitive_property->set_edm_name( 'EmployeeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_DATE' ).
    lo_primitive_property->set_edm_name( 'OrderDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIRED_DATE' ).
    lo_primitive_property->set_edm_name( 'RequiredDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPED_DATE' ).
    lo_primitive_property->set_edm_name( 'ShippedDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_VIA' ).
    lo_primitive_property->set_edm_name( 'ShipVia' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREIGHT' ).
    lo_primitive_property->set_edm_name( 'Freight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_NAME' ).
    lo_primitive_property->set_edm_name( 'ShipName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'ShipAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_CITY' ).
    lo_primitive_property->set_edm_name( 'ShipCity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_REGION' ).
    lo_primitive_property->set_edm_name( 'ShipRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'ShipPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'ShipCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CUSTOMER' ).
    lo_navigation_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CUSTOMER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'EMPLOYEE' ).
    lo_navigation_property->set_edm_name( 'Employee' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EMPLOYEE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ORDER_DETAILS' ).
    lo_navigation_property->set_edm_name( 'Order_Details' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'ORDER_DETAIL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SHIPPER' ).
    lo_navigation_property->set_edm_name( 'Shipper' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SHIPPER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_orders_qry.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ORDERS_QRY'
                                    is_structure              = VALUE tys_orders_qry( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Orders_Qry' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ORDERS_QRIES' ).
    lo_entity_set->set_edm_name( 'Orders_Qries' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'OrderID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ID' ).
    lo_primitive_property->set_edm_name( 'CustomerID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMPLOYEE_ID' ).
    lo_primitive_property->set_edm_name( 'EmployeeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_DATE' ).
    lo_primitive_property->set_edm_name( 'OrderDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIRED_DATE' ).
    lo_primitive_property->set_edm_name( 'RequiredDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPED_DATE' ).
    lo_primitive_property->set_edm_name( 'ShippedDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_VIA' ).
    lo_primitive_property->set_edm_name( 'ShipVia' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREIGHT' ).
    lo_primitive_property->set_edm_name( 'Freight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_NAME' ).
    lo_primitive_property->set_edm_name( 'ShipName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'ShipAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_CITY' ).
    lo_primitive_property->set_edm_name( 'ShipCity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_REGION' ).
    lo_primitive_property->set_edm_name( 'ShipRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'ShipPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'ShipCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS' ).
    lo_primitive_property->set_edm_name( 'Address' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY' ).
    lo_primitive_property->set_edm_name( 'City' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_order_detail.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ORDER_DETAIL'
                                    is_structure              = VALUE tys_order_detail( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Order_Detail' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ORDER_DETAILS' ).
    lo_entity_set->set_edm_name( 'Order_Details' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'OrderID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ID' ).
    lo_primitive_property->set_edm_name( 'ProductID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_PRICE' ).
    lo_primitive_property->set_edm_name( 'UnitPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY' ).
    lo_primitive_property->set_edm_name( 'Quantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCOUNT' ).
    lo_primitive_property->set_edm_name( 'Discount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Single' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ORDER' ).
    lo_navigation_property->set_edm_name( 'Order' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'ORDER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT' ).
    lo_navigation_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_order_subtotal.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ORDER_SUBTOTAL'
                                    is_structure              = VALUE tys_order_subtotal( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Order_Subtotal' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ORDER_SUBTOTALS' ).
    lo_entity_set->set_edm_name( 'Order_Subtotals' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'OrderID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL' ).
    lo_primitive_property->set_edm_name( 'Subtotal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_product.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT'
                                    is_structure              = VALUE tys_product( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCTS' ).
    lo_entity_set->set_edm_name( 'Products' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ID' ).
    lo_primitive_property->set_edm_name( 'ProductID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NAME' ).
    lo_primitive_property->set_edm_name( 'ProductName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ID' ).
    lo_primitive_property->set_edm_name( 'SupplierID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_ID' ).
    lo_primitive_property->set_edm_name( 'CategoryID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_PER_UNIT' ).
    lo_primitive_property->set_edm_name( 'QuantityPerUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_PRICE' ).
    lo_primitive_property->set_edm_name( 'UnitPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNITS_IN_STOCK' ).
    lo_primitive_property->set_edm_name( 'UnitsInStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNITS_ON_ORDER' ).
    lo_primitive_property->set_edm_name( 'UnitsOnOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REORDER_LEVEL' ).
    lo_primitive_property->set_edm_name( 'ReorderLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCONTINUED' ).
    lo_primitive_property->set_edm_name( 'Discontinued' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CATEGORY' ).
    lo_navigation_property->set_edm_name( 'Category' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CATEGORY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ORDER_DETAILS' ).
    lo_navigation_property->set_edm_name( 'Order_Details' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'ORDER_DETAIL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SUPPLIER' ).
    lo_navigation_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SUPPLIER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_products_above_average_pri.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCTS_ABOVE_AVERAGE_PRI'
                                    is_structure              = VALUE tys_products_above_average_pri( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Products_Above_Average_Price' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCTS_ABOVE_AVERAGE_P_2' ).
    lo_entity_set->set_edm_name( 'Products_Above_Average_Prices' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NAME' ).
    lo_primitive_property->set_edm_name( 'ProductName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_PRICE' ).
    lo_primitive_property->set_edm_name( 'UnitPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_products_by_category.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCTS_BY_CATEGORY'
                                    is_structure              = VALUE tys_products_by_category( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Products_by_Category' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCTS_BY_CATEGORIES' ).
    lo_entity_set->set_edm_name( 'Products_by_Categories' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_NAME' ).
    lo_primitive_property->set_edm_name( 'CategoryName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NAME' ).
    lo_primitive_property->set_edm_name( 'ProductName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_PER_UNIT' ).
    lo_primitive_property->set_edm_name( 'QuantityPerUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNITS_IN_STOCK' ).
    lo_primitive_property->set_edm_name( 'UnitsInStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCONTINUED' ).
    lo_primitive_property->set_edm_name( 'Discontinued' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_product_sales_for_1997.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_SALES_FOR_1997'
                                    is_structure              = VALUE tys_product_sales_for_1997( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Product_Sales_for_1997' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_SALES_FOR_1997_2' ).
    lo_entity_set->set_edm_name( 'Product_Sales_for_1997' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_NAME' ).
    lo_primitive_property->set_edm_name( 'CategoryName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NAME' ).
    lo_primitive_property->set_edm_name( 'ProductName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES' ).
    lo_primitive_property->set_edm_name( 'ProductSales' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_region.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'REGION'
                                    is_structure              = VALUE tys_region( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'REGIONS' ).
    lo_entity_set->set_edm_name( 'Regions' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_ID' ).
    lo_primitive_property->set_edm_name( 'RegionID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'RegionDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TERRITORIES' ).
    lo_navigation_property->set_edm_name( 'Territories' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'TERRITORY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_sales_by_category.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SALES_BY_CATEGORY'
                                    is_structure              = VALUE tys_sales_by_category( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Sales_by_Category' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_BY_CATEGORIES' ).
    lo_entity_set->set_edm_name( 'Sales_by_Categories' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_ID' ).
    lo_primitive_property->set_edm_name( 'CategoryID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_NAME' ).
    lo_primitive_property->set_edm_name( 'CategoryName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NAME' ).
    lo_primitive_property->set_edm_name( 'ProductName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES' ).
    lo_primitive_property->set_edm_name( 'ProductSales' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_sales_totals_by_amount.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SALES_TOTALS_BY_AMOUNT'
                                    is_structure              = VALUE tys_sales_totals_by_amount( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Sales_Totals_by_Amount' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_TOTALS_BY_AMOUNTS' ).
    lo_entity_set->set_edm_name( 'Sales_Totals_by_Amounts' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'SaleAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'OrderID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPED_DATE' ).
    lo_primitive_property->set_edm_name( 'ShippedDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_shipper.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SHIPPER'
                                    is_structure              = VALUE tys_shipper( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Shipper' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SHIPPERS' ).
    lo_entity_set->set_edm_name( 'Shippers' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPER_ID' ).
    lo_primitive_property->set_edm_name( 'ShipperID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE' ).
    lo_primitive_property->set_edm_name( 'Phone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ORDERS' ).
    lo_navigation_property->set_edm_name( 'Orders' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'ORDER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_summary_of_sales_by_quarte.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SUMMARY_OF_SALES_BY_QUARTE'
                                    is_structure              = VALUE tys_summary_of_sales_by_quarte( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Summary_of_Sales_by_Quarter' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SUMMARY_OF_SALES_BY_QUAR_2' ).
    lo_entity_set->set_edm_name( 'Summary_of_Sales_by_Quarters' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPED_DATE' ).
    lo_primitive_property->set_edm_name( 'ShippedDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'OrderID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL' ).
    lo_primitive_property->set_edm_name( 'Subtotal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_summary_of_sales_by_year.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SUMMARY_OF_SALES_BY_YEAR'
                                    is_structure              = VALUE tys_summary_of_sales_by_year( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Summary_of_Sales_by_Year' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SUMMARY_OF_SALES_BY_YEARS' ).
    lo_entity_set->set_edm_name( 'Summary_of_Sales_by_Years' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPED_DATE' ).
    lo_primitive_property->set_edm_name( 'ShippedDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'OrderID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL' ).
    lo_primitive_property->set_edm_name( 'Subtotal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 19 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_supplier.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SUPPLIER'
                                    is_structure              = VALUE tys_supplier( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SUPPLIERS' ).
    lo_entity_set->set_edm_name( 'Suppliers' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ID' ).
    lo_primitive_property->set_edm_name( 'SupplierID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_NAME' ).
    lo_primitive_property->set_edm_name( 'CompanyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_NAME' ).
    lo_primitive_property->set_edm_name( 'ContactName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_TITLE' ).
    lo_primitive_property->set_edm_name( 'ContactTitle' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS' ).
    lo_primitive_property->set_edm_name( 'Address' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY' ).
    lo_primitive_property->set_edm_name( 'City' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE' ).
    lo_primitive_property->set_edm_name( 'Phone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX' ).
    lo_primitive_property->set_edm_name( 'Fax' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOME_PAGE' ).
    lo_primitive_property->set_edm_name( 'HomePage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCTS' ).
    lo_navigation_property->set_edm_name( 'Products' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_territory.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'TERRITORY'
                                    is_structure              = VALUE tys_territory( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Territory' ) ##NO_TEXT.
    lo_entity_type->/iwbep/if_v4_pm_et_advanced~set_schema_namespace( `NorthwindModel` ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'TERRITORIES' ).
    lo_entity_set->set_edm_name( 'Territories' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TERRITORY_ID' ).
    lo_primitive_property->set_edm_name( 'TerritoryID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TERRITORY_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'TerritoryDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_ID' ).
    lo_primitive_property->set_edm_name( 'RegionID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'EMPLOYEES' ).
    lo_navigation_property->set_edm_name( 'Employees' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EMPLOYEE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'REGION' ).
    lo_navigation_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'REGION' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


ENDCLASS.
