# **Example README File**

## **Airlines Delays Analysis**


## **Introduction**

Airlines Delays Analysis is a comprehensive analisys of the flights delays in the US airports, in year 2019 and 
fitst few months of 2023. It looks into aspects of season, wheather or plane age. However appart of just analysis,
the project streches along 3 main data-related fields:
1. **Data Engineering**:
- downloading data form tee API endpoints
- creating database and b y suing spoecially crafter database-schema, populating it with downloaded data 
- crating dedicated layers (views), separating reportaing data from data for visualtisation purposes
2. **Data Analysis**:
- comprehensice throught flights delays analysis, including 
3. **BI Reporting adn Visualisation**:
- crating system analityczno-raportowy, mający wspomagać przyszłe decyzje biznesowe
- introducing DASH visualtisation techniques

For more details, please see particular notebooks.

## **Installation**

To install Airlines Delays Analysis, follow these steps:

1. Crated dedivcated virtual enviroment (optional)
2. Clone the repository: **`git clone https://github.com/username/project-title.git`**
2. Navigate to the project directory: **`cd Airlines_Delays_Analysis`**
3. Use requirements.txt file to install/update libraries

**! ! ! IMPORTANT ! ! !**

If you clone the project and wish run in on your local machine, you are free to do so. However please remember, that first 
you will need to plase 'raw' data inside the `data/raw` directory (please see `N01_Data_Engineering_API.ipynb` for more details). 
The defaul GitHub's availabe specve is 25mb and raw data files widely exceed this number. That's why you currently wont find 
anythig inside `data/raw` directory after cloning the repository. 

There are 2 ways you can obtain the 'raw' data: 
1. use API points from the `N01_Data_Engineering_API.ipynb` notebook (official way)
- If you choose this method, you will need a dedicated token 
to extract above mentioned data from the API endpoint. To get this token, please concat me directly at [pbquandt@gmail.com](mailto:pbquandt@gmail.com)
- Additionaly plese be aware that downloed data, such as `aircraft`, `airport_list` and `airport_weather.csv` spreadsheets are 
relatively small and togheter thake only less than 2 min to download, the `flight` data takes more then 1Gb and takes 
approx. 4 hours to download.

2. donload the data from here (url to google drive) and put it all inside `data/raw` directry (easy way)
[picture]

3. you can refer to the `source data` [here](https://www.kaggle.com/datasets/threnjen/2019-airline-delays-and-cancellations) (not recomended)
- if you choose this option, it will be in your domain to find neccesary files, join them and rename them accordingly 

## **Usage**

To use Project Title, follow these steps:

1. Open the project in your favorite code editor.
2. Modify the source code to fit your needs.
3. Use the project as desired.

## **Contributing**

If you'd like to contribute to Project Title, here are some guidelines:

1. Fork the repository.
2. Create a new branch for your changes.
3. Make your changes.
4. Write tests to cover your changes.
5. Run the tests to ensure they pass.
6. Commit your changes.
7. Push your changes to your forked repository.
8. Submit a pull request.

## **License**

Project Title is released under the MIT License. See the **[LICENSE](https://www.blackbox.ai/share/LICENSE)** file for details.

## **Authors and Acknowledgment**

Project Title was created by **[Your Name](https://github.com/username)**.

Dataset:
[here](https://www.kaggle.com/datasets/threnjen/2019-airline-delays-and-cancellations)

Additional contributors include:

- **[Contributor Name](https://github.com/contributor-name)**
- **[Another Contributor](https://github.com/another-contributor)**

Thank you to all the contributors for their hard work and dedication to the project.

## **Code of Conduct**

Please note that this project is released with a Contributor Code of Conduct. By participating in this project, you agree to abide by its terms. See the **[CODE_OF_CONDUCT.md](https://www.blackbox.ai/share/CODE_OF_CONDUCT.md)** file for more information.

## **FAQ**

**Q:** What is Project Title?

**A:** Project Title is a project that does something useful.

**Q:** How do I install Project Title?

**A:** Follow the installation steps in the README file.

**Q:** How do I use Project Title?

**A:** Follow the usage steps in the README file.

**Q:** How do I contribute to Project Title?

**A:** Follow the contributing guidelines in the README file.

**Q:** What license is Project Title released under?

**A:** Project Title is released under the MIT License. See the **[LICENSE](https://www.blackbox.ai/share/LICENSE)** file for details.

## **Changelog**

- **0.1.0:** Initial release
- **0.1.1:** Fixed a bug in the build process
- **0.2.0:** Added a new feature
- **0.2.1:** Fixed a bug in the new feature

## **Contact**

If you have any questions or comments about Project Title, please contact **[Your Name](you@example.com)**.

## **Conclusion**

That's it! This is a basic template for a proper README file for a general project. You can customize it to fit your needs, but make sure to include all the necessary information. A good README file can help users understand and use your project, and it can also help attract contributors.