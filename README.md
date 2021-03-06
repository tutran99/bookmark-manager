Bookmark Manager
-------------------
Web app that stores web bookmarks in a database.
-------------------

## Model Diagram

https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Untitled%20Diagram.xml#R7Vpbb5swGP01vFZgAyGPS3rZy6RKlbbu0QWHWHFwZshtv352sAnGREnIpUm1SpXwAWP7nPN9%2FnDrwOF09cLRbPyDJZg6wE05SRz46ADgiV8BJCvVdIGvkHWJ%2BBEoAdnnjfzFRr90ThKcG1DBGC3IzARjlmU4LgwMcc6W5mMjRs15zVCKLeAtRtRGf5GkGKs5e3CLf8ckHauRg0jd%2BEDxJOVsnqnhHABHm5%2Fy9hTpV7klkI9RwpY1CD45cMgZK8qr6WqIqWRW86r6OeB5xwPVzDnOigP7KCXyYq3XX%2BCV6DwYF1MqAE9c5gVnEzxklHGBZCwTTw5GhNIGhChJM9GMxfBY4IMF5gURzH5TN6YkSeQwg%2BWYFPhthmI55lLYSGAb6rCclita5bQWiM6xpjOkcl4f4iKVF0NK5DIVLFZY3bFpUMzI%2BeBVDVKcvGA2xQVfSwcp96QVJDsua0ZQlK7MprK2Jnxcc4glgrhQOrRrAi1N2viqCYTyWRkJI7KSDLax9%2FzB2GSK%2BCS%2FKD2RSQ8w6fGiFn6iY%2FkJzs%2FPQJFzTW78nklOeA5ueufnBnMRWe7gKvbxXJOjMGzEl9dCUtXpYJb695v1WCbmRakY6ZMzH%2BhdIPVpee9QGVUIffJ21L%2BEKN7divKT4OVnaxJeRJO7K9wSstDsp1jUbS7Hf%2BY4r1dwtUdaeu168Ho7tgdCs5wJwDmktOu9G5WS43zGshxfM3o83%2BS82nZO49y%2FF86RnPf16Ib9wKA7hOdgO7TYNle9p0a1SZnNLkqKBxq1DtxfqoP%2B0bREZYcCcZkRd1GFs%2BSbPNeQDqMoz0lssoNXpHiX1w%2BuD1X7tyT2wXV91X7FnIilSnduCBek8fW7esjTQNnL9wINNLuVEaGPRUB7ut%2BhC04a5y45m%2FNYQbCjUEGLEBrjmKKCLLBthVdG5MlB9fpyJgqt5x5d%2Bejco5dXO09pvqsU035X9dGh945e0GaXavEHOQjY5fKhbnENp4RRuMMptuQJysebyG0NzW76l7a%2FPQNAUzQQ%2Bp0N4LmNjSzon8EAdu2wzwBnjOGb0wsGZsBGUWe5%2FNCUPmoq30Ut%2F6wJ3wzhXlDP62IzcCMzr8vhD87rlwjy4CY94%2BttWCdm%2FxTTmO%2FqN1%2FVxTT2ceeNlqpOMNgeMgePO01ykbIVmCJC3%2FbM0XWr%2Ftyrx6t9wHp8wt1WX40IDb5YNm7snn733dN3zQq8Kp5PCq3jxTTy4lfeSsPA%2FBAEvV5n8WBgRqe9L3cRL%2FqfF%2FefB0eNENRfNKflxbv5%2B8lmPlflu%2FHFqI9TjuFbNLf%2FBlBGxvY%2FLeDTPw%3D%3D

## Setting up Database

Connect to 'psql' and create 'bookmark_manager' and 'bookmark_manager_test' databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASe bookmark_manager_test;
```

To set up the necessary tables, connect to each database using the pqsl command '\c bookmark_manager' and '\c bookmark_manager_test'

```
Run SQL scripts found in 'db/migrations'
```

Run the query saved in the file '01_create_bookmarks_table.sql'

## Running the Bookmark Manager app

```
rackup -p 3000
```

## View bookmarks
   
Navigate to:
```
localhost:3000/bookmarks
```
