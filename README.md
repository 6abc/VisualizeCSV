<br/>
<p align="center">
  <a href="https://github.com/6abc/ERROR_PROOF_DJANGO_GET_POST">
    <img src="https://avatars.githubusercontent.com/u/97246854?v=4" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">VisualizeCSV</h3>

  <p align="center">
    Run Web Application with CSV(You can use your CSV update main.py).
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
  * [Docker](#Docker)
  * [DemoCSVChange](#DemoCSVChange)
* [Features](#Features)
* [License](#license)
* [Authors](#authors)
* [Acknowledgements](#acknowledgements)
* [RenderDeployment](#RenderDeployment)


## About The Project

![Screen Shot](https://raw.githubusercontent.com/6abc/VisualizeCSV/main/img/steamlitgeo.png)

## Built With

Visualize CSV with Python Code using Pandas, Pygwalker and Streamlit.

## Getting Started

These instructions will help you set up and run the project on your local machine.

### Prerequisites

* Python 3.10
* Pandas 2.1.3
* Streamlit 1.28.2
* Pygwalker 0.3.16

### Installation

1. Clone the repo

```sh
git clone https://github.com/6abc/VisualizeCSV.git
cd VisualizeCSV

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

## Usage

1. 🔥Start the Application server:
```sh
streamlit run main.py
```
2. Open a web browser and navigate to http://127.0.0.1:8501/ to access the Web page.

3. 💧Stop the Application server by Pressing Ctrl+C.
![Screen Shot](https://raw.githubusercontent.com/6abc/VisualizeCSV/main/img/stop.png)

### Docker

1. Create folder name as data and add csv file named as source.csv and copy path of folder

```sh
mkdir data
```

2. Use data path here
```sh
docker run -d -p 8501:8501 -v /path/to/your/data:/app/data paulisgood/visualizecsv:latest
```

Example :
```sh
docker run -d -p 8501:8501 -v /home/ash/data:/app/data paulisgood/visualizecsv:latest
```

## DemoCSVChange
https://github.com/6abc/VisualizeCSV/assets/97246854/5d2dbdb8-b199-4f7d-a49d-0230541bb875

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
* [Inspired by Pygwalker](https://github.com/Kanaries/pygwalker/releases)
* [Inspired by Pandas](https://github.com/pandas-dev/pandas/releases)
* [Inspired by Streamlit](https://github.com/streamlit/streamlit/releases)
* [Inspired by ReadME-Generator](https://readme.shaankhan.dev/)

## RenderDeployment
![Screen Shot](https://raw.githubusercontent.com/6abc/VisualizeCSV/main/img/render_deploy.png)
