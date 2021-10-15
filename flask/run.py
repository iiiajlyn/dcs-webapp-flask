from webapp import create_app

def main(*args, **kwargs):
    app = create_app(*args, **kwargs)
    return app


if __name__ == '__main__':
    main()
