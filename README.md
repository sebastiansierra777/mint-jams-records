# mint-jams-records
A normalized 5-table relational database for a jazz record store ("Mint Jams Records") built with SQLite &amp; Python

## KEY FINDINGS
To be filled...

## HOW TO RUN IT
1. Navigate to preferred directory: `cd <your-preferred-directory>`
2. Clone the repository: `git clone https://github.com/sebastiansierra777/mint-jams-records.git`
3. Navigate into the project folder: `cd mint-jams-records`
4. Recreate the environment from the yml file: `conda env create -f environment.yml`
5. Activate the environment: `conda activate mint_jams_records`
6. Build and populate the SQLite database: `python src/build_db.py`
7. Navigate to `notebooks/` and run the notebooks sequentially.

## PROJECT STRUCTURE
- `assets/`: Static visual assets.
- `data/`: Local storage for the generated SQLite database (`mint_jams.db`).
- `notebooks/`: Jupyter notebooks.
- `output/`: Local execution outputs.
- `sql/`: Raw `.sql` files containing DDL schema definitions and analytical queries.
- `src/`: Python scripts.

## DATA ARCHITECTURE & SOURCES

- **Database Engine**: SQLite
- **Schema Design**: Normalized 5-table relational schema (`artists`, `albums`, `customers`, `sales`, `sale_items`).
- **Data Source**: Custom-curated relational dataset defined in `sql/` and built via setup scripts in `src/`.
