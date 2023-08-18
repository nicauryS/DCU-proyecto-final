-- Crear la base de datos si no existe
CREATE DATABASE  aplicacion_estudiantes;

-- Utilizar la base de datos
USE aplicacion_estudiantes;

-- Tabla de Estudiantes
CREATE TABLE Estudiantes (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE,
    direccion VARCHAR(100),
    telefono VARCHAR(15),
    email VARCHAR(100),
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Cursos
CREATE TABLE Cursos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    creditos INT
);

-- Tabla de Inscripciones
CREATE TABLE Inscripciones (
    id INT PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    fecha_inscripcion DATE,
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

-- Tabla de Calificaciones
CREATE TABLE Calificaciones (
    id INT PRIMARY KEY,
    inscripcion_id INT,
    nota DECIMAL(4, 2),
    FOREIGN KEY (inscripcion_id) REFERENCES Inscripciones(id)
);
