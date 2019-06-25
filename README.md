PHP Addition Repository - Composer template
===========================================

Usage
-----

1. Create a new project

```bash
composer create-project par/composer-library name-of-library
```

2. Update `composer.json` contents

```json
{
    "name": "par/name-of-library",
    "autoload": {
        "psr-4": {
             "PAR\\NamespaceOfLibrary\\": "src/"
        }
    },
    "autoload-dev": {
        "psr-4": {
             "PARTest\\NamespaceOfLibrary\\": "test/"
        }
    }
}
```

3. Run `composer update`.
4. Happy coding.