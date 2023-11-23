<br/>
<p align="center">
  <a href="https://github.com/6abc/ERROR_PROOF_DJANGO_GET_POST">
    <img src="https://avatars.githubusercontent.com/u/97246854?v=4" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">ERROR_PROOF_DJANGO_GET_POST</h3>

  <p align="center">
    Run Application with CSV(You can use your CSV update main.py).
    <br/>
    <br/>
  </p>
</p>

![Downloads](https://img.shields.io/github/downloads/6abc/VisualizeCSV/total) ![Contributors](https://img.shields.io/github/contributors/6abc/VisualizeCSV?color=dark-green) ![Issues](https://img.shields.io/github/issues/6abc/VisualizeCSV) ![License](https://img.shields.io/github/license/6abc/VisualizeCSV) 

## Table Of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [License](#license)
* [Authors](#authors)
* [Acknowledgements](#acknowledgements)

![Screen Shot](https://raw.githubusercontent.com/6abc/VisualizeCSV/main/steamlit.png)

1. Clone the repo

```sh
git clone https://github.com/6abc/VisualizeCSV.git
cd ERROR_PROOF_DJANGO_GET_POST
```

2.1 Create a virtual environment [Unix](optional but recommended):

```sh
python -m venv venv
source venv/bin/activate
```

2.2 Create a virtual environment [Windows](optional but recommended):

```sh
python -m venv venv
.\venv\Scripts\activate
```

3. Install project dependencies:
```sh
pip install -r requirements.txt
```

4. Apply migrations:
```sh
python manage.py migrate
```

## Usage

1. 🔥Start the Application server:
```sh
streamlit run main.py
```
2. Open a web browser and navigate to http://127.0.0.1:8501/ to access the Web page.

3. 💧Stop the Application server by Pressing Ctrl+C.
![Screen Shot](https://raw.githubusercontent.com/6abc/VisualizeCSV/main/stop.png)

## Features
* Can Visualize CSV data without Excel and complex table function.
* Can work on complex data types as well.
* Pandas, Streamlit and Pygwalker which is usefull for Data Scientist.
* Simple UI, No code required.

## License

Distributed under the MIT License. See [LICENSE](https://github.com/6abc/VisualizeCSV/blob/main/LICENSE) for more information.

## Authors

* **Ashish Thakur** - *Senior Command Center Analyst* - [Ashish Thakur](https://github.com/6abc)

## Acknowledgements
* [Inspired by Pygwalker](https://github.com/Kanaries/pygwalker)
* [Inspired by Pandas](https://pandas.pydata.org/)
* [Inspired by Streamlit](https://streamlit.io/)
* [Inspired by ReadME-Generator](https://readme.shaankhan.dev/)
