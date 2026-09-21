function pegar_lamina(){
	with global.selected{
	 if (lamina_pega) exit;
        lamina_pega = true;
        options = [];
    }
    with obj_microscope_slide{
        visible = true;
        options = [OPTIONS.IDENTIFICAR_LAMINA];
	}
}