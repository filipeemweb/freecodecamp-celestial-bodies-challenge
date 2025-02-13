# Celestial Bodies Database Project

This project is part of the FreeCodeCamp Database Certification. The challenge was to design and create a series of tables within a PostgreSQL database called **universe**. The database models various celestial entities, including galaxies, stars, planets, moons, and races.

## Project Overview

In this project, we used PostgreSQL to create and manage a relational database that captures detailed information about different celestial bodies. The database schema includes the following tables:

- **galaxy**: Stores data on various galaxies, including their type, age, size, and name.
- **star**: Records information about stars, such as their spectral type, associated galaxy, and whether they are alive.
- **planet**: Contains details on planets, including their composition, support for life, and the star they orbit.
- **moon**: Holds data on moons, their composition, whether they have a magnetic field, and the planet they orbit.
- **race**: Chronicles different races and their associated home planets.

## Table Details

1. **Galaxy Table**
   - Columns: galaxy_id, name, age, type, size_in_kpc
   - Constraints: Primary key on galaxy_id, unique constraint on name

2. **Star Table**
   - Columns: star_id, name, galaxy_id, is_alive, spectral_type
   - Constraints: Primary key on star_id, unique constraint on name, foreign key constraint on galaxy_id

3. **Planet Table**
   - Columns: planet_id, name, composition, support_life, star_id
   - Constraints: Primary key on planet_id, unique constraint on name, foreign key constraint on star_id

4. **Moon Table**
   - Columns: moon_id, name, planet_id, composition, has_magnetic_field
   - Constraints: Primary key on moon_id, unique constraint on name, foreign key constraint on planet_id

5. **Race Table**
   - Columns: race_id, name, planet_id, existence_time_in_centuries
   - Constraints: Primary key on race_id, unique constraint on name, foreign key constraint on planet_id

## Usage

The database was created and managed using the PostgreSQL Command-Line Interface (CLI). To set up the database and tables, use the provided SQL scripts.

## Future Enhancements

- Implement additional constraints and indices for improved performance.
- Populate the database with more sample data for further testing and development.
- Develop queries and views for better data analysis and reporting.

Feel free to clone this repository and experiment with the database schema and data.

## Usage

The database was created and managed using the PostgreSQL Command-Line Interface (CLI). To set up the database and tables, use the provided SQL scripts. You can find the complete SQL script to recreate the database in the `universe.sql` file.

### How to Use the `universe.sql` File

You can rebuild the database by entering `psql -U postgres < universe.sql` in a terminal where the `.sql` file is.
