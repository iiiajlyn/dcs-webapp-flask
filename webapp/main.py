from app import app, db
from blog.blueprint import posts
import view
import models

app.register_blueprint(posts, url_prefix='/blog')

def main():
    app.run(debug=True)


if __name__ == '__main__':
    main()
