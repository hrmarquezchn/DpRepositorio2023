-- Active: 1698714888156@@127.0.0.1@5432@postgres


CREATE TABLE Departamentos (
    ID_Departamento serial PRIMARY KEY,
    Departamento VARCHAR(255)
);
CREATE TABLE Cargos (
    ID_Cargo serial PRIMARY KEY,
    Nombre_Cargo VARCHAR(255)
);

CREATE TABLE Defensores (
    ID serial PRIMARY KEY,
    Nombre VARCHAR(255),
    Genero CHAR(1),
    RNP VARCHAR(10),
    Telefono VARCHAR(15),
    Correo VARCHAR(255),
    Materia VARCHAR(255),
    ID_Cargo INT,
    FOREIGN KEY (ID_Cargo) REFERENCES Cargos (ID_Cargo)
);


CREATE TABLE Sedes (
    ID_Sede serial PRIMARY KEY,
    Sede_Defensa_Publica VARCHAR(255),
    Latitud NUMERIC(10, 6),
    Longitud NUMERIC(10, 6),
    ID_Departamento INT,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamentos (ID_Departamento)
);