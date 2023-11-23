# Run Application with CSV(You can use your CSV update main.py)

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
2. 💧Stop the Application server by Pressing Ctrl+C.
