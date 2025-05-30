# Airlines Delays Analysis 

<img src="https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/readme_img/hero_image.jpg" alt="hero image" width="800"/>

## Introduction

**Airlines Delays Analysis** is a full-stack data exploration and analysis project focused on flight delays in U.S. airports during 2019 and the first few months of 2023. It investigates various factors such as seasonality, weather conditions, and aircraft age. The project encompasses three main data-related fields:

1. **Data Engineering**:

   - Downloading data from API endpoints
   - Creating a database with a specially crafted schema and populating it with downloaded data
   - Developing dedicated layers (views) to separate data used for analysis, reporting and visualization

2. **Data Analysis**:

   - Conducting a comprehensive exploration of flight delays data

3. **BI Reporting and Visualization**:

   - Designing an analytical and reporting system to support future business decision-making
   - Implementing DASH visualization techniques


<img src="https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/readme_img/note_exe_1.png" alt="notebook example screen shot" width="400"/>
<img src="https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/readme_img/note_exe_2.png" alt="notebook example screen shot" width="400"/>
<img src="https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/readme_img/note_exe_3.png" alt="notebook example screen shot" width="400"/>
<img src="https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/readme_img/note_exe_4.png" alt="notebook example screen shot" width="400"/>
<img src="https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/readme_img/DASH_3.png" alt="notebook example screen shot" width="400"/>
<img src="https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/readme_img/DASH_1.png" alt="notebook example screen shot" width="400"/>



   
**Main Tech Stack**:

- Python (data analysis and engineering)
- PostgreSQL (database management)
- API integration for data retrieval
- Pandas, NumPy (data processing)
- Matplotlib, Seaborn (data visualization)
- DASH (data reporting)

![image](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![image](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![image](https://img.shields.io/badge/Jupyter-F37626.svg?&style=for-the-badge&logo=Jupyter&logoColor=white)
![image](https://img.shields.io/badge/Pandas-2C2D72?style=for-the-badge&logo=pandas&logoColor=white)
![image](https://img.shields.io/badge/Plotly-239120?style=for-the-badge&logo=plotly&logoColor=white)
![image](https://img.shields.io/badge/Numpy-777BB4?style=for-the-badge&logo=numpy&logoColor=white)



## Table of Contents

1. [N01 Data Engineering: Connecting to API endpoints and downloading raw data](https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/N01_Data_Engineering_API.ipynb)
2. [N02 Data Engineering: Initializing a PostgreSQL database and creating schemas for data exploration](https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/N02_Data_Engineering_Initiating_Database.ipynb)
3. [N03 Data Engineering: Populating the database with data](https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/N03_Data_Engineering_Populating_Database.ipynb)
4. [N04 Data Analysis: Initial data exploration](https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/N04_Data_Analysis_p1.ipynb)
5. [N05 Data Analysis: Enriching the dataset with additional `aircraft` data](https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/N05_Data_Analysis_p2.ipynb)
6. [N06 Data Analysis: Further enrichment with `airport` and `weather` data](https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/N06_Data_Analysis_p3.ipynb)
7. [N07 BI Development: Creating new database schemas for reporting and visualization](https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/N07_BI_Development_Building_Reporting_Schema.ipynb)
8. [N08 BI Development: Data reporting and visualization with DASH](https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/N08_BI_Development_Data_Reporting_And_Visualisation.ipynb)


## Installation

To run **Airlines Delays Analysis** project locally, follow these steps:

1. Create a dedicated virtual environment (optional)
2. Clone the repository:
   ```bash
   git clone https://github.com/pbquandt/Airlines_Delays_Analysis.git
   ```
3. Navigate to the project directory:
   ```bash
   cd Airlines_Delays_Analysis
   ```
4. Use the `requirements.txt` file to install the required libraries:
   ```bash
   pip install -r requirements.txt
   ```
5. Install [PostgreSQL](https://www.postgresql.org/)  
   There are several options available for installing PostgreSQL on your local machine, depending on whether you're using a Mac or a PC.  
   If you don't have PostgreSQL installed yet, I recommend searching for a suitable tutorial on Google or YouTube. You can also ask ChatGPT for step-by-step instructions,  
   specifying the type of computer you're using and your operating system (Windows, macOS, Linux, etc.).
    ####
   **Key information:**  

   - Make sure your PostgreSQL version is 14 (`postgresql@14`).  
   - When setting up PostgreSQL for the first time, remember to replace credentials in attached `db_auth.py` file, with our local Postgres BD credentials:  
     - **Username**: `USER`  
     - **Password**: `PASSWORD`  
     - **Port**: `5432` (default)  
     - **Host**: `localhost` (default)
    ####
   **Some useful links:**  
   - Windows: [https://www.w3schools.com/postgresql/postgresql_install.php](https://www.w3schools.com/postgresql/postgresql_install.php)  
   - Mac: [https://www.youtube.com/watch?v=Z-iM7hUdBSg](https://www.youtube.com/watch?v=Z-iM7hUdBSg)  
   - Mac (via Homebrew): [https://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/](https://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/)


### ! ! ! Important ! ! !

To run the project locally, ensure that the data/raw directory contains the required raw data files. Since these files exceed GitHub's size limits, the directory will be empty after cloning. 
Obtain the raw data using one of these methods:

1. **Use API endpoints**: (recommended)

   - Refer to and run the `N01_Data_Engineering_API.ipynb` notebook - downloading the data will start automatically through the API endpoints.
However, you will need a dedicated token to download the data. Please contact me directly at [pbquandt@gmail.com](mailto:pbquandt@gmail.com) to obtain the token.
   - While small datasets like `aircraft`, `airport_list`, and `airport_weather` take less than 2 minutes to download, the `flight` dataset, which is over 1 GB in size, takes approximately 4 hours to download.

2. **Download pre-prepared data** (easy method):

   - Use this [Google Drive link](https://drive.google.com/uc?export=download&id=1xrIhLSrLy0WvxOdU6XRZOrbHyDkMu352) to download the data, and place it inside the `data/raw` directory (see below screenshot).

3. **Source data directly from Kaggle** (not recommended):

   - You can access the dataset [here](https://www.kaggle.com/datasets/threnjen/2019-airline-delays-and-cancellations). However, you will need to locate, join, and rename the files manually.

<img src="https://github.com/pbquandt/Airlines_Delays_Analysis/blob/master/readme_img/raw_dir.png" alt="files structure in 'data/raw' directory" width="300"/>



## Potential Issues 

Since the project was done on a Mac, I haven't had the chance to test it on a PC.
Although I took appropriate steps, such as dynamically determining the working folder path in the `project_dir.py` file and using `{os.path.sep}` for path separators, potential conflicts between Mac and PC environments can still occur.
If you encounter any issues on your PC, please let me know or, ideally, follow the steps outlined in the 'Contributing' section below.



## Contributing

If you'd like to contribute to **Airlines Delays Analysis**, follow these steps:

1. Fork the repository
2. Create a new branch for your changes
3. Implement your changes
4. Write tests to cover your changes
5. Run the tests to ensure they pass
6. Commit your changes
7. Push your changes to your forked repository
8. Submit a pull request



## Authors and Acknowledgments

**Airlines Delays Analysis** was created by [**Piotr B. Quandt**](https://github.com/pbquandt)

### Dataset:

- Dataset used in this project is available [here](https://www.kaggle.com/datasets/threnjen/2019-airline-delays-and-cancellations)

### API Endpoints:

- Special thanks to [CodersLab](https://github.com/CodersLab) for creating API endpoints access

### Images:

- Cover image of this document - [Marcelo Renda](https://www.pexels.com/@marcelo-renda-2643550/)



## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details



## Contact

For questions or comments, please contact [**Piotr B. Quandt**](https://github.com/pbquandt) at [pbquandt@gmail.com](mailto:pbquandt@gmail.com)

