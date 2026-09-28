import sqlite3
from pathlib import Path

PROJECT_ROOT = Path(__file__).parent.parent
DB_PATH = PROJECT_ROOT / "data" / "mint_jams.db"
SCHEMA_PATH = PROJECT_ROOT / "sql" / "schema.sql"
SEED_PATH = PROJECT_ROOT / "sql" / "seed.sql"  # Add the path to your seed data

def build_database():
    """Reads schema.sql and creates the SQLite database tables, then seeds them."""
    DB_PATH.parent.mkdir(parents=True, exist_ok=True)

    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()

    # 1. Build the schema
    with open(SCHEMA_PATH, "r", encoding="utf-8") as f:
        schema_script = f.read()
    
    cursor.executescript(schema_script)
    
    # 2. Insert the seed data
    with open(SEED_PATH, "r", encoding="utf-8") as f:
        seed_script = f.read()
        
    cursor.executescript(seed_script)

    conn.commit()
    conn.close()

    print(f"Database successfully created and seeded at: {DB_PATH}")

if __name__ == "__main__":
    build_database()
