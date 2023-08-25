CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    correo VARCHAR(100),
    telefono VARCHAR(20),
    empresa VARCHAR(100),
    fecha_registro DATE
);

CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    categoria VARCHAR(50)
);

CREATE TABLE Ventas (
    id INT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    fecha_venta DATE,
    monto_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE AnalisisIA (
    id INT PRIMARY KEY,
    id_producto INT,
    fecha_analisis DATE,
    resultado TEXT,
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE Empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    puesto VARCHAR(50),
    fecha_contratacion DATE,
    salario DECIMAL(10, 2)
);



INSERT INTO Clientes (id, nombre, correo, telefono, empresa, fecha_registro)
VALUES
(1, 'Juan P�rez', 'juan.perez@gmail.com', '829-980-9082', 'TechSolutions Inc.', '2023-01-15'),
(2, 'Mar�a Garc�a', 'maria.garcia@gmail.com', '829-981-9083', 'InnovateTech Solutions', '2023-02-02'),
(3, 'Carlos Ram�rez', 'carlos.ramirez@gmail.com', '829-982-9084', 'AI Innovations Corp.', '2023-03-20'),
(4, 'Laura Mart�nez', 'laura.martinez@gmail.com', '829-983-9085', 'DataTech Solutions', '2023-04-10'),
(5, 'Andr�s L�pez', 'andres.lopez@gmail.com', '829-984-9086', 'SmartAI Systems', '2023-05-05'),
(6, 'Sof�a Fern�ndez', 'sofia.fernandez@gmail.com', '829-985-9087', 'NextGen Innovations', '2023-06-15'),
(7, 'Alejandro Mendoza', 'alejandro.mendoza@gmail.com', '829-986-9088', 'TechGenius Solutions', '2023-07-03'),
(8, 'Valentina Torres', 'valentina.torres@gmail.com', '829-987-9089', 'AI Dynamics', '2023-08-20'),
(9, 'Daniel Silva', 'daniel.silva@gmail.com', '829-988-9090', 'Innovision Tech', '2023-09-12'),
(10, 'Andrea Vargas', 'andrea.vargas@gmail.com', '829-989-9091', 'FutureAI Innovations', '2023-10-18');


INSERT INTO Productos (id, nombre, descripcion, precio, categoria)
VALUES
(1, 'Soluci�n de IA Avanzada', 'Potente soluci�n de IA con capacidad de aprendizaje profundo.', 1999.99, 'IA'),
(2, 'Plataforma de An�lisis de Datos', 'Plataforma que permite analizar grandes vol�menes de datos de manera eficiente.', 1499.99, 'An�lisis de Datos'),
(3, 'Asistente Virtual Inteligente', 'Asistente virtual impulsado por IA para interacciones naturales con los usuarios.', 599.99, 'Asistentes Virtuales'),
(4, 'Sistema de Recomendaci�n Personalizada', 'Sistema de recomendaci�n que utiliza IA para ofrecer recomendaciones precisas.', 799.99, 'Recomendaciones'),
(5, 'Detector de Fraudes Avanzado', 'Herramienta de detecci�n de fraudes que utiliza IA para identificar patrones sospechosos.', 1299.99, 'Seguridad'),
(6, 'Plataforma de Procesamiento de Lenguaje Natural', 'Plataforma que permite analizar y comprender el lenguaje natural de manera eficiente.', 999.99, 'Procesamiento de Lenguaje Natural'),
(7, 'Sistema de Visi�n por Computadora', 'Sistema que utiliza algoritmos de IA para procesar y entender im�genes y videos.', 1599.99, 'Visi�n por Computadora'),
(8, 'Herramienta de Automatizaci�n de Procesos', 'Herramienta que automatiza tareas repetitivas mediante el uso de algoritmos de IA.', 899.99, 'Automatizaci�n'),
(9, 'Plataforma de Aprendizaje Autom�tico', 'Plataforma que permite el desarrollo y despliegue de modelos de aprendizaje autom�tico.', 1799.99, 'Aprendizaje Autom�tico'),
(10, 'Sistema de An�lisis de Sentimientos', 'Sistema que utiliza IA para analizar y entender las emociones en texto y comentarios.', 749.99, 'An�lisis de Sentimientos');

INSERT INTO Ventas (id, id_cliente, id_producto, fecha_venta, monto_total)
VALUES
(1, 3, 1, '2023-03-25', 1999.99),
(2, 5, 3, '2023-05-10', 599.99),
(3, 1, 2, '2023-06-02', 1499.99),
(4, 10, 4, '2023-07-18', 799.99),
(5, 4, 1, '2023-08-05', 1999.99),
(6, 8, 5, '2023-08-15', 1299.99),
(7, 6, 3, '2023-09-03', 599.99),
(8, 2, 4, '2023-10-01', 799.99),
(9, 7, 2, '2023-10-12', 1499.99),
(10, 9, 5, '2023-10-30', 1299.99);

INSERT INTO AnalisisIA (id, id_producto, fecha_analisis, resultado)
VALUES
(1, 1, '2023-03-30', 'El an�lisis de la soluci�n de IA mostr� una mejora del 15% en la precisi�n de las predicciones.'),
(2, 3, '2023-05-15', 'El asistente virtual logr� una tasa de interacci�n exitosa del 80% con los usuarios.'),
(3, 2, '2023-06-10', 'La plataforma de an�lisis demostr� una reducci�n del 25% en el tiempo necesario para generar informes.'),
(4, 4, '2023-07-25', 'El sistema de recomendaci�n alcanz� una tasa de acierto del 90% en las recomendaciones realizadas.'),
(5, 1, '2023-08-10', 'Se identific� un patr�n de comportamiento an�malo utilizando el detector de fraudes.'),
(6, 5, '2023-08-20', 'El detector de fraudes logr� prevenir una transacci�n fraudulenta y alert� al equipo de seguridad.'),
(7, 3, '2023-09-10', 'El asistente virtual recibi� elogios positivos de los usuarios por su capacidad de comprensi�n.'),
(8, 4, '2023-10-05', 'El sistema de recomendaci�n personalizada gener� un aumento del 20% en las ventas.'),
(9, 2, '2023-10-20', 'La plataforma de an�lisis de datos facilit� la identificaci�n de tendencias clave en los datos.'),
(10, 5, '2023-11-02', 'El detector de fraudes identific� y bloque� tres intentos de transacciones fraudulentas.');


INSERT INTO Empleados (id, nombre, puesto, fecha_contratacion, salario)
VALUES
(1, 'Ana Gonz�lez', 'Desarrollador de Software', '2022-01-15', 3500.00),
(2, 'Carlos Mart�nez', 'Ingeniero de Datos', '2021-11-20', 4200.00),
(3, 'Mar�a L�pez', 'Cient�fico de Datos', '2022-03-10', 4800.00),
(4, 'Juan Ram�rez', 'Especialista en IA', '2023-02-05', 5200.00),
(5, 'Laura P�rez', 'Analista de Negocios', '2021-08-18', 3800.00),
(6, 'Jos� Fern�ndez', 'Ingeniero de Software', '2022-07-22', 3900.00),
(7, 'Marta Rodr�guez', 'Arquitecto de Soluciones', '2023-05-30', 5500.00),
(8, 'David S�nchez', 'Analista de Datos', '2022-06-12', 4100.00),
(9, 'Sof�a Vargas', 'Desarrollador Full Stack', '2022-09-05', 4200.00),
(10, 'Luis Mendoza', 'Ingeniero de Machine Learning', '2021-10-28', 4800.00);

