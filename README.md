# 🌐 Proyecto Flutter Multi-API  
**Autor:** José Pila  

Este proyecto es una aplicación Flutter que integra múltiples APIs públicas dentro de un solo menú principal.  
El objetivo es aprender a consumir servicios HTTP, manejar JSON, navegar entre pantallas y construir interfaces modulares, todo dentro de una misma app.

---

## 📱 Tecnologías utilizadas

- **Flutter** (SDK principal)
- **Dart** (lógica del proyecto)
- **HTTP package** para consumo de APIs REST
- **Material Design** para la interfaz gráfica

---

## 🔗 APIs implementadas

### 1️⃣ Pokémon API  
Permite visualizar información básica relacionada con Pokémon.  
La pantalla está lista para extender con más funcionalidades como listado, imágenes y vista de detalles.

---

### 2️⃣ 7timer Weather API  
Servicio meteorológico que provee datos de:

- Pronóstico en formato **JSON**
- Imagen PNG del clima
- Modos de reporte como: `civil`, `civillight`, `astro`, `meteo`

En esta implementación se consulta:

- Latitud: **0.2**
- Longitud: **-79.0**

Y la app muestra:

- Imagen del pronóstico
- Datos en JSON generados por la API

---

### 3️⃣ Menú principal (HomeScreen)

Permite navegar entre todas las APIs usando una vista tipo cuadrícula (**GridView**).  
Cada tarjeta representa una API diferente y abre su pantalla correspondiente.

---

## 📂 Estructura del proyecto

```
lib/
 └── main.dart          # Archivo principal con menú + API 7timer
 └── pokemon-api.dart   # Archivo de la API Pokémon
```

---

## 🚀 Cómo ejecutar el proyecto

1. Clonar el repositorio:
   ```sh
   git clone <url-del-repositorio>
   ```

2. Instalar dependencias:
   ```sh
   flutter pub get
   ```

3. Ejecutar la app:
   ```sh
   flutter run
   ```

---

## 🧭 Navegación dentro de la app

- **Pokémon API:** Pantalla base para extender funcionalidades.
- **Clima 7timer:** Muestra pronóstico más datos en JSON.
- El menú se amplía fácilmente agregando más tarjetas.

---

## ✨ Mejoras futuras sugeridas

- Implementación de geolocalización (GPS).
- Ingreso de latitud/longitud por parte del usuario.
- UI más detallada para mostrar clima.
- Integrar más APIs (gatos, países, películas, astronomía, etc.).
- Crear estructura modular: screens, widgets, services.

---

## 👨‍💻 Autor

Desarrollado por:

### **José Pila**

Con fines de práctica en:

- Consumo de APIs REST
- Navegación en Flutter
- Manejo de estado
- Construcción de interfaces móviles
- Buenas prácticas de desarrollo

---

## 📝 Licencia

Este proyecto es de uso libre para fines educativos y personales.
