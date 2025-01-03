# SQLite-Forensic-Recovery

## Overview
This repository contains simulated datasets and experimental results for the research project on SQLite forensic and recovery tools. The study evaluates open-source tools such as SQLite-Parser, FQLite, Bring2Lite, and Undark under controlled conditions to assess their performance and limitations.

## Contents
The repository is organized as follows:
- **Case/**: Contains the simulated SQLite datasets used in the experiments.
- **Final_Results/**: Includes the outputs generated by the recovery tools.
- **README.txt**: Provides an overview of the repository and instructions for use.

## Dataset Details
The `Case/` directory contains the following SQLite database files and their associated SQL scripts. Each dataset simulates specific database deletion scenarios:

1. **S01.db** and **S01.sql**
   - **Scenario**: Full deletion of records from all tables in the database.
   - **Purpose**: Evaluate tools' ability to recover data when entire records are deleted.

2. **S02.db** and **S02.sql**
   - **Scenario**: Partial deletion of records from selected tables.
   - **Purpose**: Test recovery accuracy and completeness for partially deleted data.

3. **S03.db** and **S03.sql**
   - **Scenario**: Partial deletion across multiple tables.
   - **Purpose**: Assess tools' handling of more complex deletion patterns.

4. **S04.db** and **S04.sql**
   - **Scenario**: Dropped entire tables.
   - **Purpose**: Analyze tools' ability to recover complete table structures and their data.

### File Structure
Each dataset includes:
- **Database File (`.db`)**: The SQLite database reflecting the specific corruption or deletion scenario.
- **SQL Script (`.sql`)**: SQL commands used to create and manipulate the datasets, allowing reproduction of the corruption scenarios.

## Tools Used
The following tools were evaluated in this research:
- **SQLite-Parser**: [Link to GitHub](https://github.com/mdegrazia/SQLite-Deleted-Records-Parser)
- **FQLite**: [Link to GitHub](https://github.com/pawlaszczyk/fqlite)
- **Bring2Lite**: [Link to GitHub](https://github.com/bring2lite/bring2lite/tree/master)
- **Undark**: [Link to GitHub](https://github.com/alitrack/undark)
