# Armário de EPI e Inventário

## Visão geral

Esses são dois sistemas simples que gerenciam que itens o usuário pode equipar ou estão equipados. Como o sistema aparece em todos os experimentos, é importante entender como instanciar seus elementos.

---

## Componentes

- **obj_locker_GUI** & **obj_locker_btn**
- **obj_inventory_GUI** & **obj_inventory_btn**
- **obj_generic_locker_item**

### obj_locker_GUI & obj_locker_btn 

**obj_locker_btn** representa o botão da UI que instancia **obj_locker_GUI**. Toda instância deste objeto recebe um *array de itens*, composto por objetos descendentes de **obj_generic_locker_item**. Estes serão os itens equipáveis para o jogador e checados em **check_EPI()**.

### **obj_inventory_GUI** & **obj_inventory_btn**

Muito semelhante aos objetos do *locker*, este representa os itens já equipados. Itens passam do *locker* para o *inventory* conforme equipados.

### obj_generic_locker_item

É o template para as EPIs equipáveis. Ao herdar, apenas muda o *Sprite* e o **name** para refletir o item sendo representado. 