configurar_maquina
=========

Role para configuração de maquina com KVM e Vagrant

Requisitos
------------

N/A

Variáveis da Role
--------------

Estas variáveis devem ser definidas antes da execução da role:

* {{ dir_kvm }} - Diretório em que serão armazenados os discos virtuais do KVM.
* {{ disco_dados }} - Device que sera utilizado como disco de dados.
* {{ dominio }} - Dominio usado na maquina principal.
* {{ mount_point_dados }} - Mount point para o disco de dados.
* {{ novo_home }} - Diretório no disco de dados que sera usado para o novo home do usuário de acesso.

Dependências
------------

N/A

Playbook de exemplo
----------------

```yaml
  - name: Configurar maquina
    hosts: novas_instancias
    connection: ssh
    become: True
    become_method: sudo

    roles:
      - configurar_maquina
```

Licença
-------

BSD

Autor
------------------

[Lucas Pimentel Lellis](mailto:lucaslellis@gmail.com)
