from setuptools import setup, find_packages

setup(
    name='your_project_name',
    version='0.1',
    packages=find_packages('src'),
    package_dir={'': 'src'},
    install_requires=[
        'Flask',
        'requests'
    ],
    entry_points={
        'console_scripts': [
            'your_command=your_module:main',
        ],
    },
)
