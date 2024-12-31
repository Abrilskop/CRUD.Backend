# Sistema CRUD - Backend

Este repositorio contiene una implementación de un sistema CRUD (Crear, Leer, Actualizar, Eliminar) en el backend utilizando **C#** y **.NET**. 
El proyecto está estructurado mediante la arquitectura hexagonal.

## Puntos Principales de Funcionalidad

- **Operaciones CRUD**: Implementación completa de las operaciones Crear, Leer, Actualizar y Eliminar para entidades del sistema.
- **Arquitectura por Capas**: La aplicación sigue el patrón de separación de responsabilidades en diferentes capas:
  - **Dominio**: Contiene las entidades y reglas de negocio.
  - **Infraestructura**: Implementación de la interacción con bases de datos y otros servicios externos.
  - **Aplicación**: Contiene la lógica de la aplicación y servicios que orquestan las operaciones CRUD.
  - **API**: Exponen las APIs necesarias para interactuar con el sistema.
- **Patrones de Diseño**:
  - **Repositorio**: Para gestionar el acceso a los datos.
  - **Inyección de Dependencias**: Para la gestión de dependencias de una manera flexible y desacoplada.

## Pila Tecnológica

- **Lenguaje**: C#
- **Framework**: .NET (versiones compatibles: .NET 6 o superior)
- **Base de Datos**: SQL Server
- **Patrones de Diseño**: Repository, Inyección de Dependencias

## Estructura del Proyecto

El proyecto está estructurado en las siguientes capas:

### 1. **Dominio**  
Contiene las entidades principales de la aplicación y las reglas de negocio.  
Ejemplo de clases:
- `Cliente.cs`
- `Producto.cs`

### 2. **Infraestructura**  
Maneja la persistencia de datos, interactúa con la base de datos y otros servicios externos.
- `ClienteRepository.cs`: Implementación del patrón repositorio para acceder a los datos de los clientes.

### 3. **Aplicación**  
Contiene los servicios que ejecutan la lógica de negocio y orquestan las operaciones CRUD.
- `ClienteService.cs`: Servicio que maneja la lógica para crear, leer, actualizar y eliminar clientes.

### 4. **API**  
Expone las APIs para que los usuarios interactúen con el sistema (RESTful APIs).
- `ClienteController.cs`: Controlador que expone las operaciones CRUD para clientes.

## Requisitos

Antes de ejecutar el proyecto, asegúrate de tener instalados los siguientes requisitos:

- **.NET SDK** (recomendado versión 6 o superior): [Descargar .NET](https://dotnet.microsoft.com/download)
- **IDE**: Visual Studio y Visual Studio Code.

## Endpoints Disponibles

### Clientes

- **GET /api/clientes**: Obtener todos los clientes.
- **GET /api/clientes/{id}**: Obtener un cliente por su ID.
- **POST /api/clientes**: Crear un nuevo cliente.
- **PUT /api/clientes/{id}**: Actualizar un cliente existente.
- **DELETE /api/clientes/{id}**: Eliminar un cliente por su ID.

## Ejemplo de uso

### 1. Crear un nuevo cliente

Realiza una petición `POST` con el siguiente cuerpo:

```json
{
  "nombre": "Juan",
  "apellidos": "Pérez",
  "direccion": "Calle Falsa 123, Madrid",
  "telefono": "+34 612345678",
  "email": "juan.perez@email.com"
}
