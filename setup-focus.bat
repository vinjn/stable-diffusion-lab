git clone https://github.com/lllyasviel/Fooocus.git

pushd Fooocus
git pull

IF NOT EXIST venv (
    echo Creating venv...
    python -m venv venv
)

call venv\Scripts\activate.bat
pip install -r requirements_versions.txt
call deactivate.bat
popd