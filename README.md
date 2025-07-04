# 📸 Procesamiento de Imágenes: Calculadora de Operaciones en MATLAB

[![Tec de Monterrey](https://img.shields.io/badge/Tec%20de%20Monterrey-0066B3?style=flat-square&logoColor=white)](https://tec.mx/)

![MATLAB](https://img.shields.io/badge/MATLAB-Image_Processing-blue.svg)  
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)  

## 📖 Descripción General  
Este proyecto implementa una calculadora de operaciones entre imágenes en MATLAB, permitiendo realizar diversas operaciones aritméticas y lógicas entre dos imágenes. El programa procesa imágenes en escala de grises y versiones binarizadas, mostrando resultados visuales con sus respectivos histogramas.

## ⚙️ Características Principales
- 🖼️ Carga y preprocesamiento automático de imágenes (conversión a grises, binarización, redimensionamiento)
- 🧮 12 operaciones diferentes entre imágenes (aritméticas y lógicas)
- 📊 Visualización comparativa de imágenes originales y resultados
- 📈 Generación automática de histogramas
- 🔁 Menú interactivo en terminal para selección de operaciones

## 🖥️ ¿Cómo Funciona?
1. **Preprocesamiento**:  
   - Carga dos imágenes (`moon.tif` y `peppers.png`)
   - Convierte ambas a escala de grises y las redimensiona al mismo tamaño
   - Genera versiones binarizadas usando umbralización automática

2. **Visualización Inicial**:  
   - Muestra imágenes originales y binarizadas
   - Genera histogramas para ambas imágenes

3. **Menú Interactivo**:  
   ![Menú en Terminal](MATLAB/images/MENU-TERMINAL.png)  
   Ofrece 12 operaciones diferentes mediante una interfaz de terminal:

4. **Operaciones Disponibles**:
   | Operación | Símbolo | Ejemplo Resultado |
   |----------|---------|------------------|
   | Suma | `+` | ![Suma](MATLAB/images/SUMA.jpg) |
   | Resta | `-` | ![Resta](MATLAB/images/RESTA.jpg) |
   | Multiplicación | `*` | ![Multiplicación](MATLAB/images/MULTIPLICACION.jpg) |
   | División | `/` | ![División](MATLAB/images/DIVISION.jpg) |
   | XOR | `⊕` | ![XOR](MATLAB/images/XOR.jpg) |
   | NAND | `⊼` | ![NAND](MATLAB/images/NAND.jpg) |
   | AND | - | ![AND](MATLAB/images/AND.jpg) |
   | OR | - | ![OR](MATLAB/images/OR.jpg) |
   | Menor o Igual | `<=` | ![Menor Igual](MATLAB/images/MENOR-IGUAL.jpg) |
   | Mayor o Igual | `>=` | ![Mayor Igual](MATLAB/images/MAYOR-IGUAL.jpg) |
   | Igual | `==` | ![Igual](MATLAB/images/IGUAL.jpg) |
   | No Igual | `~=` | ![No Igual](MATLAB/images/NO-IGUAL.jpg) |

5. **Visualización de Resultados**:
   - Para cada operación muestra:
     - Imagen resultante en escala de grises
     - Su histograma correspondiente
     - Versión binarizada del resultado
     - Histograma de la versión binarizada

## 🎯 Propósito
Proyecto universitario desarrollado para la materia de **Procesamiento Digital de Imágenes** en el Tecnológico de Monterrey. Su finalidad es demostrar la aplicación práctica de operaciones fundamentales entre imágenes mediante técnicas de procesamiento digital.

## 🔍 Resultados Completos
Todos los resultados generados por las operaciones están disponibles en la carpeta [MATLAB/images/](MATLAB/images/):
- Comparativas iniciales: [FIG1.jpg](MATLAB/images/FIG1.jpg), [FIG2.jpg](MATLAB/images/FIG2.jpg)
- Resultados de cada operación (ver tabla anterior)

## 🚀 Aplicaciones Futuras
1. **Segmentación avanzada** de características en imágenes médicas
2. **Detección de cambios** en secuencias temporales (vigilancia)
3. **Fusión de imágenes** para aplicaciones astronómicas
4. **Procesamiento de video** en tiempo real
5. **Reconocimiento de patrones** combinado con redes neuronales
6. **Sistemas de visión artificial** para robótica

## 📜 Licencia
Copyright © 2025 Jesús Vásquez - Tecnológico de Monterrey

Este proyecto es material académico desarrollado como parte del programa educativo 
del Tecnológico de Monterrey. Se permite su uso para fines educativos y de investigación, siempre que se cite 
adecuadamente la fuente académica y se respeten los derechos de autor de las 
imágenes utilizadas en el proyecto.

---

**🔧 Requisitos**: MATLAB R2024b o superior  
**👨‍💻 Autor**: Jesús Vásquez
**🏫 Institución**: Tecnológico de Monterrey  
