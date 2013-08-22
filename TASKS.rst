TODO
====

@startuml
User -> Flask App: GET /servers
Flask App -> Storage: get_servers()
Storage -> {...}
Flask App -> User: 200 OK {...}
User -> Flask App: GET /calc
Flask App -> Storage: get_server_by_weight(range)
Storage -> Flask App: {...}
Flask App -> Calculator: calculate(servers)
Calculator -> Flask App: {...}
@enduml

- Implement calculator logic with weights
- Implement MongoDB back-end for calculator
- Implement API to add servers to DB
