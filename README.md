# **Agricultural Management System**

The Flutter app is designed to help farmers manage their crops and connect with buyers, facilitating the purchase and sale of crops. The app includes robust features for authentication, authorization, user registration, role assignment, and specific functionalities for each user role.

## Features

### Authentication

- Users can securely log in to the app to access their accounts and data.

### Authorization

- Role-based access control ensures that users can only access features based on their designated role.

### User Registration

- Users can register for an account by providing necessary details.
- During registration, users choose their role as either "Farmer" or "Buyer".

### Role Assignment

- The system automatically assigns the chosen role ("Farmer" or "Buyer") to the user upon successful registration.

## Feature 1

Farmers can track the lifecycle of their crops, from planting to harvest. A farmer can be able to: Create a new crop: Farmers can add a new crop including crop type, planting date, expected harvest date, and the planting field. The server generates a unique ID for the new crop.

**Read crop details**:  Farmers can access specific crop details using the unique crop ID. The server provides the details of the requested crop.

**Update crop details**:  Farmers can modify crop details, such as the expected harvest date. The server returns the updated crop details.

**Delete crop entry**:  Farmers can remove a crop entry, for instance, after the harvest and sale of the crop. The server confirms the deletion.

**List all crops**:  Farmers can retrieve a list of all their crops. The server returns a list containing details of all crops.

## Feature 2

Allow farmers to access a marketplace where they can sell crops and agricultural products and also allows buyers to view comprehensive details about each product before making a purchase decision.

### Farmer Role

- Farmers are the primary users who manage crops, view details, and handle orders.
    - Permissions:
        - Create, read, update, and delete their crop entries.
        - Manage inventory, view orders, and receive payments.
    - Registration:
        - Select "Farmer" role during registration.
        - Provide details; system assigns "Farmer" role post-registration.

### Buyer Role

- Buyers purchase crops directly from farmers.
    - Permissions:
        - Browse crop listings, place orders, view status, and payments.
    - Registration:
        - Select "Buyer" role during registration.
        - Provide details; system assigns "Buyer" role upon success.

## **Group Members**

| Name | ID No |
| --- | --- |
| Ermiyas Tesfaye | UGR/6782/14 |
| Naol Gezahegne | UGR/2063/14 |
| Ahmed Muhammed Seid | UGR/8920/14 |
| Bikila Tariku | UGR/----/14 |
