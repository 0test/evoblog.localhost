<?php
/**
 * EVO Manager language file
 *
 * @version 3.1.x
 * @date 2023/11/28
 * @author The EVO Project Team
 *
 * @language English
 * @package modx
 * @subpackage manager
 *
 * Please commit your language changes on Transifex (https://www.transifex.com/projects/p/modx-evolution/) or on GitHub (https://github.com/modxcms/evolution).
 */
//$modx_textdir = 'rtl'; // uncomment this line for RTL languages
$modx_lang_attribute = 'it'; // Manager HTML/XML Language Attribute see http://en.wikipedia.org/wiki/ISO_639-1
$modx_manager_charset = 'UTF-8';

$_lang["about_msg"] = 'EVO è un <a href="https://evo-cms.com/" target="_blank">Framework PHP e Sistema di Gestione dei Contenuti (CMS)</a> distribuito con licenza <a href="https://www.gnu.org/licenses/gpl-3.0.html">GNU GPL</a>.';
$_lang["about_title"] = 'Cos\'è EVO';

// days
$_lang["monday"] = 'Lunedì';
$_lang["tuesday"] = 'Martedì';
$_lang["wednesday"] = 'Mercoledì';
$_lang["thursday"] = 'Giovedì';
$_lang["friday"] = 'Venerdì';
$_lang["saturday"] = 'Sabato';
$_lang["sunday"] = 'Domenica';

// templates
$_lang["template"] = 'Template';
$_lang["templates"] = 'Templates';
$_lang["template_assignedtv_tab"] = 'Variabili di Template Assegnate';
$_lang["template_code"] = 'Codice del Template (HTML)';
$_lang["template_desc"] = 'Descrizione';
$_lang["template_edit_tab"] = 'Modifica Template';
$_lang["template_inuse"] = 'Il Template è utilizzato. Impostare un altro template per questi documenti che lo utilizzano: ';
$_lang["template_management_msg"] = 'Qui potete scegliere il Template da modificare o creare un nuovo Template.';
$_lang["template_msg"] = 'Qui potete creare/modificare i Templates. I Template modificati o nuovi non saranno visibili nelle pagine in cache finchè la cache stessa non verrà svuotata. Ad ogni modo, potete usare la funzione di anteprima su una pagina per vedere il Template in azione.';
$_lang["template_name"] = 'Nome del Template';
$_lang["template_no_tv"] = 'A questo Template non sono ancora state assegnate delle Variabili di Template.';
$_lang["template_notassigned_tv"] = 'Queste variabili di template sono disponibili per l\'assegnazione.';
$_lang["template_reset_all"] = 'Impostate il nuovo Template di default su tutte le pagine';
$_lang["template_reset_specific"] = 'Impostate il nuovo Template di default solo sulle pagine con \'%s\'';
$_lang["template_assigned_blade_file"] = 'File blade corrispondente';
$_lang["template_create_blade_file"] = 'Crea file modello al salvataggio';
$_lang["template_selectable"] = 'Template selezionabile durante la creazione o la modifica di risorse.';
$_lang["template_title"] = 'Crea/Modifica Template';
$_lang["template_tv_edit"] = 'Modifica l\'ordine delle Variabili di Template';
$_lang["template_tv_edit_message"] = 'Trascinare per riordinare le Variabili di Template di questo Template.';
$_lang["template_tv_edit_title"] = 'Ordine delle Variabili di Template';
$_lang["template_tv_msg"] = 'Le variabili di template assegnate a questo Template sono elencate qui in basso.';

// tmplvars
$_lang["tv"] = 'TV';
$_lang["tmplvar"] = 'Variabile di Template';
$_lang["tmplvars"] = 'Variabili di Template';
$_lang["tmplvar_access_msg"] = 'Selezionate i Gruppi di Risorse autorizzati a modificare il contenuto o il valore di questa Variabile di Template';
$_lang["tmplvar_change_template_msg"] = 'Cambiando questo Template verranno ricaricate le Variabili di Template. Tutte le modifiche non salvate verranno perse.\n\n Siete sicuri di voler modificare il Template?';
$_lang["tmplvar_inuse"] = 'Le seguenti Risorse utilizzano questa Variabile di Template. Per confermare la cancellazione, cliccare su elimina. Altrimenti cliccare su cancella.';
$_lang["tmplvar_tmpl_access"] = 'Accesso Template';
$_lang["tmplvar_tmpl_access_msg"] = 'Selezionate quali Templates possono utilizzare questa Variabile di Template';
$_lang["tmplvars_binding_msg"] = 'Questo campo supporta connessioni a sorgenti dati che usano il comando @  ';
$_lang["tmplvars_caption"] = 'Didascalia';
$_lang["tmplvars_default"] = 'Valore di default';
$_lang["tmplvars_description"] = 'Descrizione';
$_lang["tmplvars_elements"] = 'Opzioni valori di input';
$_lang["tmplvars_inherited"] = 'Value inherited';
$_lang["tmplvars_management_msg"] = 'Qui potete gestire e creare le Variabili di Template per le vostre Risorse.';
$_lang["tmplvars_msg"] = 'Qui potete creare o modificare le Variabili di Template. Le Variabili di Template devono essere assegnate ad un Template per poter essere utilizzate da Snippets e Risorse.';
$_lang["tmplvars_name"] = 'Nome variabile';
$_lang["tmplvars_novars"] = 'Nessuna Variabile di Template trovata';
$_lang["tmplvars_rank"] = 'Ordinamento';
$_lang["tmplvars_rank_edit_message"] = 'Trascina per riordinare le variabili di template';
$_lang["tmplvars_reset_params"] = 'Resetta parametri';
$_lang["tmplvars_title"] = 'Crea/Modifica Variable di Template';
$_lang["tmplvars_type"] = 'Tipo di input';
$_lang["tmplvars_widget"] = 'Widget';
$_lang["tmplvars_widget_prop"] = 'Proprietà Widget';
$_lang["role_no_tv"] = 'A questo Ruolo non sono ancora state assegnate delle Variabili.';
$_lang["role_notassigned_tv"] = 'Queste Variabili sono disponibili per l\'assegnazione.';
$_lang["role_tv_msg"] = 'Le Variabili assegnate a questo Ruolo sono elencate di seguito.';
$_lang["tmplvar_roles_access_msg"] = 'Selezionate quali Ruoli possono utilizzare questa Variabile di Template';

// snippets
$_lang["snippet"] = 'Snippet';
$_lang["snippets"] = 'Snippets';
$_lang["snippet_code"] = 'Codice dello Snippet (PHP)';
$_lang["snippet_desc"] = 'Descrizione Snippet';
$_lang["snippet_execonsave"] = 'Esegui lo Snippet dopo il salvataggio.';
$_lang["snippet_management_msg"] = 'Qui potete scegliere gli Snippets da modificare o crearne di nuovi.';
$_lang["snippet_msg"] = 'Qui potete aggiungere/modificare gli Snippets. Ricordate che gli Snippets sono codice PHP \'raw\' (grezzo) e se prevedete che l\'output venga mostrato in un punto preciso del Template dovete avere una variabile nello snippet che abbia il nome dello snippet stesso - in pratica, l\'output dello Snippet dev\'essere salvato in una variabile che porta il nome dello Snippet stesso.';
$_lang["snippet_name"] = 'Nome Snippet';
$_lang["snippet_properties"] = 'Proprietà di default';
$_lang["snippet_title"] = 'Crea/modifica Snippet';

// chunks
$_lang["htmlsnippet"] = 'Chunk';
$_lang["htmlsnippets"] = 'Chunks';
$_lang["htmlsnippet_desc"] = 'Descrizione';
$_lang["htmlsnippet_management_msg"] = 'Qui potete scegliere i Chunks da modificare o crearne di nuovi.';
$_lang["htmlsnippet_msg"] = 'Qui potete aggiungere/modificare i Chunks. Ricordate, i Chunks sono codice HTML \'raw\' (grezzo), quindi qualsiasi codice PHP al loro interno non verrà processato.';
$_lang["htmlsnippet_name"] = 'Nome Chunk';
$_lang["htmlsnippet_title"] = 'Crea/Modifica Chunk';
$_lang["chunk"] = 'Chunk';
$_lang["chunk_code"] = 'Codice del Chunk (HTML)';
$_lang["chunk_multiple_id"] = 'Errore: Diversi Chunks hanno lo stesso ID.';
$_lang["chunk_no_exist"] = 'Il Chunk non esiste.';

// plugins
$_lang["plugin"] = 'Plugin';
$_lang["plugins"] = 'Plugins';
$_lang["plugin_code"] = 'Codice del Plugin (PHP)';
$_lang["plugin_config"] = 'Configura Plugin';
$_lang["plugin_desc"] = 'Descrizione';
$_lang["plugin_disabled"] = 'Plugin Disabilitato';
$_lang["plugin_event_msg"] = 'Selezionate gli Eventi di Sistema che intendete gestire con questo Plugin.';
$_lang["plugin_management_msg"] = 'Qui potete selezionare i Plugins da modificare o crearne di nuovi.';
$_lang["plugin_msg"] = 'Qui potete aggiungere/modificare i Plugins. I Plugins sono \'puro\' codice PHP che viene eseguito quando si verificano alcuni eventi di sistema.';
$_lang["plugin_name"] = 'Nome Plugin';
$_lang["plugin_priority"] = 'Modifica l\'ordine di esecuzione dei Plugins in base all\'evento';
$_lang["plugin_priority_instructions"] = 'Spostate e ordinate i Plugins per ogni Evento di Sistema. Per ogni lista i Plugins più in alto verranno eseguiti prima.';
$_lang["plugin_priority_title"] = 'Ordine di esecuzione del Plugin';
$_lang["purge_plugin"] = 'Elimina i plugin obsoleti';
$_lang["purge_plugin_confirm"] = 'Siete sicuri di voler cancellare i plugins obsoleti?';
$_lang["plugin_title"] = 'Crea/Modifica Plugin';

// categories
$_lang["category"] = 'Categoria';
$_lang["categories"] = 'Categorie';
$_lang["category_heading"] = 'Categoria';
$_lang["category_manager"] = 'Gestione Categorie';
$_lang["category_management"] = 'Gestione Categorie';
$_lang["category_msg"] = 'Qui potete vedere tutte le Risorse per categoria.';

// file
$_lang["file_delete_file"] = 'Elimina File';
$_lang["file_delete_folder"] = 'Elimina Cartella';
$_lang["file_deleted"] = 'Riuscita!';
$_lang["file_download_file"] = 'Scarica File';
$_lang["file_download_unzip"] = 'Decomprimi File zip';
$_lang["file_folder_chmod_error"] = 'Impossibile modificare i permessi: dovete effettuare la modifica dei permessi con un programma esterno a EVO.';
$_lang["file_folder_created"] = 'Cartella creata con successo!';
$_lang["file_folder_deleted"] = 'Cartella eliminata con successo!';
$_lang["file_folder_not_created"] = 'Impossibile trovare la cartella';
$_lang["file_folder_not_deleted"] = 'Impossibile eliminare la cartella. Verificare che sia vuota prima di eliminarla!';
$_lang["file_not_deleted"] = 'Fallita!';
$_lang["file_not_saved"] = 'Impossibile salvare il file, assicuratevi che la cartella di destinazione sia scrivibile!';
$_lang["file_saved"] = 'File aggiornato con successo!';
$_lang["file_unzip"] = 'Decompressione cartella effettuata con successo!';
$_lang["file_unzip_fail"] = 'Decompressione cartella fallita!';

// files
$_lang["files"] = 'Files';
$_lang["files_files"] = 'File';
$_lang["files_access_denied"] = 'Accesso negato!';
$_lang["files_data"] = 'Dati';
$_lang["files_dir_listing"] = 'Elenco cartelle per:';
$_lang["files_directories"] = 'Cartelle';
$_lang["files_directory_is_empty"] = 'La cartella è vuota';
$_lang["files_dirwritable"] = 'Cartella scrivibile?';
$_lang["files_editfile"] = 'Modifica file';
$_lang["files_file_type"] = 'Tipo file: ';
$_lang["files_filename"] = 'Nome file';
$_lang["files_fileoptions"] = 'Opzioni';
$_lang["files_filesize"] = 'Dimensione file';
$_lang["files_filetype_notok"] = 'Non è consentito il caricamento di questo tipo di file!';
$_lang["files_management"] = 'Gestisci documenti';
$_lang["files_management_no_permission"] = 'Non si dispone di autorizzazioni sufficienti per visualizzare o modificare tali file. Chiedere all\'amministratore l\'accesso a <b>%s</b>.';
$_lang["files_modified"] = 'Modificato';
$_lang["files_top_level"] = 'Al livello superiore';
$_lang["files_up_level"] = 'Su di un livello';
$_lang["files_upload_copyfailed"] = 'La copia del file nella cartella di destinazione non è riuscita - caricamento fallito!';
$_lang["files_upload_error"] = 'Errore';
$_lang["files_upload_error0"] = 'Si è verificato un problema durante il caricamento.';
$_lang["files_upload_error1"] = 'Il file che state provando a caricare è troppo grande.';
$_lang["files_upload_error2"] = 'Il file che state provando a caricare è troppo grande.';
$_lang["files_upload_error3"] = 'Il file che state provando a caricare è stato copiato solo in parte.';
$_lang["files_upload_error4"] = 'Dovete selezionare un file da caricare.';
$_lang["files_upload_error5"] = 'Si è verificato un problema durante il caricamento.';
$_lang["files_upload_inhibited_msg"] = '<b>Il caricamento file è inibito</b> - assicuratevi che il caricamento sia supportato e che la cartella sia scrivibile da PHP.<br />';
$_lang["files_upload_ok"] = 'File caricato con successo!';
$_lang["files_upload_permissions_error"] = 'Possibile errore nei permessi di scrittura - la directory deve poter essere scrivibile dal webserver.';
$_lang["files_uploadfile"] = 'Carica file';
$_lang["files_uploadfile_msg"] = 'Selezionate un file da caricare:';
$_lang["files_uploading"] = 'Sto caricando <b>%s</b> in <b>%s/</b><br />';
$_lang["files_viewfile"] = 'Visualizza file';

// modules
$_lang["module"] = 'Modulo';
$_lang["modules"] = 'Moduli';
$_lang["module_code"] = 'Codice del Modulo (PHP)';
$_lang["module_config"] = 'Configurazione del Modulo';
$_lang["module_desc"] = 'Descrizione';
$_lang["module_disabled"] = 'Modulo disabilitato';
$_lang["module_edit_click_title"] = 'Cliccate qui per modificare il Modulo';
$_lang["module_group_access_msg"] = 'Selezionate i gruppi autorizzati ad eseguire il Modulo.';
$_lang["module_management"] = 'Gestione Moduli';
$_lang["module_management_msg"] = 'Qui potete scegliere il Modulo che desiderate eseguire o modificare. Per eseguire un Modulo, fate clic sull\'icona del Modulo a sinistra sulla griglia. Per modificare un Modulo, fate clic sul suo nome.';
$_lang["module_msg"] = 'Qui potete creare o modificare i Moduli. Un Modulo è un insieme di Elementi che interagiscono fra loro (ad es. Plugins, Snippets, ecc.).';
$_lang["module_name"] = 'Nome del Modulo';
$_lang["module_resource_msg"] = 'Qui potete aggiungere o rimuovere Risorse dalle quali dipende questo Modulo. Cliccate sul pulsante Aggiungi per aggiungere una Risorsa.';
$_lang["module_resource_title"] = 'Dipendenze Moduli';
$_lang["module_title"] = 'Crea/modifica Moduli';
$_lang["module_viewdepend_msg"] = 'Qui potete vedere gli Elementi dai quali dipende il Modulo. Cliccate sul pulsante \'Configurazione Dipendenze\' per modificare le dipendenze';

// elements
$_lang["element"] = 'Elemento';
$_lang["elements"] = 'Elementi';
$_lang["element_categories"] = 'Vista Combinata';
$_lang["element_filter_msg"] = 'Scrivi qui per filtrare la lista';
$_lang["element_management"] = 'Gestione Elementi';
$_lang["element_name"] = 'Nome Elemento';
$_lang["element_selector_msg"] = 'Selezionate l\'Elemento e cliccate sul pulsante \'Aggiungi\'.';
$_lang["element_selector_title"] = 'Selettore Elementi';

// resource
$_lang["resource"] = 'Risorsa';
$_lang["resource_alias"] = 'Alias Risorsa';
$_lang["resource_alias_help"] = 'Qui potete inserire un alias per la Risorsa. Questo renderà la Risorsa accessibile come http://vostrosito.it/alias. Funziona solo se state usando gli URL Semplici.';
$_lang["resource_content"] = 'Contenuto della Risorsa';
$_lang["resource_description"] = 'Descrizione';
$_lang["resource_description_help"] = 'Qui potete inserire una  descrizione opzionale della Risorsa.';
$_lang["resource_duplicate"] = 'Duplica Risorsa';
$_lang["resource_long_title_help"] = 'Qui potete inserire un titolo esteso per la Risorsa. Questo è utile per i motori di ricerca e potrebbe descrivere meglio la Risorsa.';
$_lang["resource_metatag_help"] = 'Selezionate i META tag e le parole chiave che volete assegnare alla Risorsa. Tenete premuto il tasto control per selezionare più tag o parole.';
$_lang["resource_opt_contentdispo"] = 'Pubblicazione del contenuto';
$_lang["resource_opt_contentdispo_help"] = 'Utilizzate il campo Pubblicazione del Contenuto per stabilire come questa Risorsa verrà inviata al browser. Per files da scaricare selezionare l\'opzione Allegato.';
$_lang["resource_opt_emptycache"] = 'Svuota la cache';
$_lang["resource_opt_emptycache_help"] = 'Lasciando questo campo selezionato permetterete a EVO di svuotare la cache dopo che avrete salvato la Risorsa. Così i visitatori non vedranno più la vecchia versione della Risorsa.';
$_lang["resource_opt_folder"] = 'Cartella';
$_lang["resource_opt_folder_help"] = 'Spuntate la casella se volete che la Risorsa faccia anche da cartella per altre Risorse. Non avete bisogno di preoccuparvi troppo di questo, EVO generalmente si occupa automaticamente delle impostazioni delle cartelle.';
$_lang["resource_opt_menu_index"] = 'Indice menu';
$_lang["resource_opt_menu_index_help"] = 'Indice menu è un campo che potete usare per ordinare le Risorse nei menu. Potete anche usare il campo per altri scopi nei vostri Snippet.';
$_lang["resource_opt_menu_title"] = 'Titolo nel menu';
$_lang["resource_opt_menu_title_help"] = 'Il titolo nel menu è un campo che potete usare per visualizzare un titolo abbreviato per la Risorsa all\'interno di menu o moduli.';
$_lang["resource_opt_published"] = 'Pubblicata';
$_lang["resource_opt_published_help"] = 'Spuntate questa casella per pubblicare immediatamente la Risorsa dopo averla salvata.';
$_lang["resource_opt_richtext"] = 'Rich text';
$_lang["resource_opt_richtext_help"] = 'Lasciate selezionata questa casella se volete usare l\'editor rich text per modificare le Risorse. Se le Risorse contengono JavaScript o forms HTML deselezionatela e modificateli in modalità HTML evitando così che l\'editor ne danneggi il contenuto.';
$_lang["resource_opt_show_menu"] = 'Mostra nel menu';
$_lang["resource_opt_show_menu_help"] = 'Selezionate questa opzione per mostrare la Risorsa nel menu. Attenzione, alcuni script per menu potrebbero ignorare questa opzione.';
$_lang["resource_opt_trackvisit_help"] = 'Registra ogni utente che visita questa pagina';
$_lang["resource_overview"] = 'Dettagli Risorsa';
$_lang["resource_parent"] = 'Risorsa genitore';
$_lang["resource_parent_help"] = 'Selezionate una Risorsa nella struttura ad albero per impostarla come genitore di questa Risorsa.';
$_lang["resource_permissions_error"] = 'Assegnate questa Risorsa ad almeno un Gruppo Risorse al quale avete accesso.';
$_lang["resource_setting"] = 'Impostazioni Risorsa';
$_lang["resource_summary"] = 'Sommario';
$_lang["resource_summary_help"] = 'Inserire un breve sommario della Risorsa';
$_lang["resource_title"] = 'Titolo';
$_lang["resource_title_help"] = 'Digitate qui il nome/titolo della Risorsa. Evitate l\'uso del backslash (\) !';
$_lang["resource_to_be_moved"] = 'Risorsa da spostare';
$_lang["resource_type"] = 'Tipo di Risorsa';
$_lang["resource_type_message"] = 'Un Link Web è un collegamento ad una Risorsa su Internet. Questa Risorsa può essere interna a EVO, una pagina su un altro sito, un\'immagine o un altro file su Internet. I Link Web dovrebbero avere Media Type text/html e Inline Content-Disposition.';
$_lang["resource_type_weblink"] = 'Link Web';
$_lang["resource_type_webpage"] = 'Pagina Web';
$_lang["resource_weblink_help"] = 'Digitate qui l\'indirizzo dell\'oggetto a cui volete collegare questo Link Web. In alternativa inserire dal Browser File o utilizzare l\'icona di selezione collegamento e selezionare una risorsa dalla struttura del sito.';
$_lang["resources_in_container"] = 'Risorse in questo contenitore';
$_lang["resources_in_container_no"] = 'Questo contenitore non contiene alcuna Risorsa.';

// role
$_lang["role"] = 'Ruolo';
$_lang["role_about"] = 'Visualizza la pagina About';
$_lang["role_actionok"] = 'Visualizza la schermata di azione completata';
$_lang["role_assets_images"] = 'Accesso a assets/images';
$_lang["role_assets_files"] = 'Accesso a assets/files';
$_lang["role_bk_manager"] = 'Usa il sistema di gestione delle copie di sicurezza';
$_lang["role_cache_refresh"] = 'Svuota la cache del sito';
$_lang["role_category_manager"] = 'Usa in Gestore Categorie';
$_lang["role_change_password"] = 'Cambia password';
$_lang["role_change_resourcetype"] = 'Cambia tipo di risorsa';
$_lang["role_chunk_management"] = 'Gestione Chunk';
$_lang["role_config_management"] = 'Gestione configurazione';
$_lang["role_content_management"] = 'Gestione contenuto';
$_lang["role_create_chunk"] = 'Crea un nuovo Chunk';
$_lang["role_create_doc"] = 'Crea nuove Risorse';
$_lang["role_create_plugin"] = 'Crea un nuovo Plugin';
$_lang["role_create_snippet"] = 'Crea nuovi Snippets';
$_lang["role_create_template"] = 'Crea nuovi Templates del sito';
$_lang["role_credits"] = 'Visualizza i crediti';
$_lang["role_delete_chunk"] = 'Cancella Chunk';
$_lang["role_delete_doc"] = 'Elimina Risorse';
$_lang["role_delete_eventlog"] = 'Cancella Log degli Eventi';
$_lang["role_delete_module"] = 'Cancella Modulo';
$_lang["role_delete_plugin"] = 'Cancella Plugin';
$_lang["role_delete_role"] = 'Elimina ruoli';
$_lang["role_delete_snippet"] = 'Elimina Snippet';
$_lang["role_delete_template"] = 'Elimina Template';
$_lang["role_delete_user"] = 'Elimina utenti';
$_lang["role_delete_web_user"] = 'Cancella utente web';
$_lang["role_edit_chunk"] = 'Modifica Chunk';
$_lang["role_edit_doc"] = 'Modifica una Risorsa';
$_lang["role_edit_doc_metatags"] = 'Modifica META tag e parole chiave della Risorsa';
$_lang["role_edit_module"] = 'Modifica Modulo';
$_lang["role_edit_plugin"] = 'Modifica Plugin';
$_lang["role_edit_role"] = 'Modifica ruoli';
$_lang["role_edit_settings"] = 'Cambia le impostazioni del sito';
$_lang["role_edit_snippet"] = 'Modifica Snippet';
$_lang["role_edit_template"] = 'Modifica Template del sito';
$_lang["role_edit_user"] = 'Modifica utenti';
$_lang["role_edit_web_user"] = 'Modifica utente web';
$_lang["role_empty_trash"] = 'Elimina in modo permanente le Risorse cancellate';
$_lang["role_errors"] = 'Visualizza i messaggi di errore';
$_lang["role_eventlog_management"] = 'Gestione Log degli Eventi';
$_lang["role_export_static"] = 'Esporta in HTML statico';
$_lang["role_file_management"] = 'Gestione File';
$_lang["role_file_manager"] = 'Usa il file manager (accesso root completo)';
$_lang["role_frames"] = 'Visualizza i frames del Manager EVO';
$_lang["role_help"] = 'Visualizza le pagine di aiuto';
$_lang["role_home"] = 'Visualizza la pagina introduttiva del Manager EVO';
$_lang["role_import_static"] = 'Importa HTML';
$_lang["role_logout"] = 'Esci dal Manager EVO';
$_lang["role_list_module"] = 'Elenca Modulo';
$_lang["role_manage_metatags"] = 'Gestione META tag e parole chiave';
$_lang["role_management_msg"] = 'Qui potete scegliere il Ruolo da modificare o creare un nuovo Ruolo.';
$_lang["role_management_title"] = 'Gestione Ruoli';
$_lang["role_messages"] = 'Visualizza ed invia messaggi';
$_lang["role_module_management"] = 'Gestione Moduli';
$_lang["role_name"] = 'Nome Ruolo';
$_lang["role_new_module"] = 'Crea nuovo Modulo';
$_lang["role_new_role"] = 'Crea nuovi ruoli';
$_lang["role_new_user"] = 'Crea nuovi utenti';
$_lang["role_new_web_user"] = 'Crea nuovo utete web';
$_lang["role_plugin_management"] = 'Gestione Plugin';
$_lang["role_publish_doc"] = 'Pubblica Risorse';
$_lang["role_remove_locks"] = 'Togli i blocchi';
$_lang["role_role_management"] = 'Gestione Ruolo';
$_lang["role_run_module"] = 'Esegui Modulo';
$_lang["role_save_chunk"] = 'Salva Chunk';
$_lang["role_save_doc"] = 'Salva Risorse';
$_lang["role_save_module"] = 'Salva Modulo';
$_lang["role_save_password"] = 'Salva password';
$_lang["role_save_plugin"] = 'Salva Plugin';
$_lang["role_save_role"] = 'Salva ruoli';
$_lang["role_save_snippet"] = 'Salva Snippet';
$_lang["role_save_template"] = 'Salva Template';
$_lang["role_save_user"] = 'Salva utenti';
$_lang["role_save_web_user"] = 'Salva utente web';
$_lang["role_snippet_management"] = 'Gestione Snippet';
$_lang["role_template_management"] = 'Gestione Template';
$_lang["role_title"] = 'Crea/Modifica Ruolo';
$_lang["role_udperms"] = 'Gestione permessi';
$_lang["role_user_management"] = 'Gestione utente';
$_lang["role_view_docdata"] = 'Visualizza i dati di una Risorsa';
$_lang["role_view_eventlog"] = 'Vedi Log degli Eventi';
$_lang["role_view_logs"] = 'Visualizza i log di sistema';
$_lang["role_view_unpublished"] = 'Vedi le Risorse non pubblicate';
$_lang["role_web_access_persmissions"] = 'Permessi di accesso Web';
$_lang["role_web_user_management"] = 'Gestione utente web';

// user
$_lang["user"] = 'Utente';
$_lang["users"] = 'Utenti';
$_lang["user_block"] = 'Bloccato';
$_lang["user_blockedafter"] = 'Bloccato dopo';
$_lang["user_blockeduntil"] = 'Bloccato fino';
$_lang["user_changeddata"] = 'I vostri dati sono stati modificati. Vi preghiamo di effettuare nuovamente l\'accesso.';
$_lang["user_country"] = 'Nazione';
$_lang["user_dob"] = 'Data di nascita';
$_lang["user_doesnt_exist"] = 'L\'utente non esiste';
$_lang["user_edit_self_msg"] = 'Se cambiate lo vostre informazioni utente dopo il salvataggio potreste aver bisogno di scollegarvi e di ricollegarvi nuovamente.</b><br>Se avete scelto di generare automaticamente una nuova password vi verrà inviata per e-mail, verificate l\'indirizzo e-mail che avete inserito.';
$_lang["user_email"] = 'Indirizzo e-mail';
$_lang["user_failedlogincount"] = 'Login falliti';
$_lang["user_fax"] = 'Numero di fax';
$_lang["user_female"] = 'Femmina';
$_lang["user_full_name"] = 'Nome completo';
$_lang["user_first_name"] = 'Nome';
$_lang["user_last_name"] = 'Cognome';
$_lang["user_middle_name"] = 'Secondo nome';
$_lang["user_gender"] = 'Sesso';
$_lang["user_is_blocked"] = 'L\'utente è bloccato!';
$_lang["user_logincount"] = 'Contatore login';
$_lang["user_male"] = 'Maschio';
$_lang["user_management_msg"] = 'Qui potete scegliere l\'utente da modificare o creare un nuovo utente. Questi utenti sono quelli che possono accedere al sistema di gestione dei contenuti.';
$_lang["user_management_title"] = 'Gestione Utenti';
$_lang["user_mobile"] = 'Numero di cellulare';
$_lang["user_phone"] = 'Numero di telefono';
$_lang["user_photo"] = 'Foto dell\'Utente';
$_lang["user_photo_message"] = 'Inserite l\'url dell\'immagine o caricate l\'immagine sul server.';
$_lang["user_prevlogin"] = 'Ultima autenticazione';
$_lang["user_role"] = 'Ruolo dell\'utente';
$_lang["no_user_role"] = 'Nessun ruolo utente';
$_lang["user_state"] = 'Regione';
$_lang["user_title"] = 'Crea/modifica utente';
$_lang["user_upload_message"] = 'Se volete impedire che questo utente possa caricare files di questo tipo, assicuratevi che la casella \'Use Main Configuration Setting\' non sia selezionata e lasciate vuoto il campo.';
$_lang["user_use_config"] = 'Usare le Impostazioni di Sistema';
$_lang["user_verification"] = 'Utente verificato';
$_lang["user_zip"] = 'CAP';
$_lang["username"] = 'Nome utente';
$_lang["username_unique"] = 'Il nome utente è già in uso';
$_lang["user_street"] = 'Strada';
$_lang["user_city"] = 'Città';
$_lang["user_other"] = 'Altro';

// add
$_lang["add"] = 'Aggiungi';
$_lang["add_chunk"] = 'Aggiungi Chunk';
$_lang["add_doc"] = 'Aggiungi Risorsa';
$_lang["add_folder"] = 'Nuova cartella';
$_lang["add_plugin"] = 'Aggiungi Plugin';
$_lang["add_resource"] = 'Nuova Risorsa';
$_lang["add_snippet"] = 'Aggiungi Snippet';
$_lang["add_tag"] = 'Aggiungi tag';
$_lang["add_template"] = 'Aggiungi Template';
$_lang["add_tv"] = 'Aggiungi Variabile di Template';
$_lang["add_weblink"] = 'Nuovo Link Web';

// new
$_lang["new_category"] = 'Nuova Categoria';
$_lang["new_file_permissions_message"] = 'Durante il caricamento di un nuovo file nel sistema di gestione file, il sistema cercherà di cambiare i permessi del file secondo questa impostazione. Questo però potrebbe non funzionare in alcune configurazioni, come ad esempio IIS, nel qual caso dovrete procedere ad una modifica manuale dei permessi.';
$_lang["new_file_permissions_title"] = 'Permessi dei nuovi files:';
$_lang["new_folder_permissions_message"] = 'Durante la creazione di una nuova cartella nel sistema di gestione file, il sistema cercherà di cambiare i permessi della cartella secondo questa impostazione. Questo però potrebbe non funzionare in alcune configurazioni, come ad esempio IIS, nel qual caso dovrete procedere ad una modifica manuale dei permessi.';
$_lang["new_folder_permissions_title"] = 'Permessi nuova cartella:';
$_lang["new_permission"] = 'Nuovo Permesso';
$_lang["new_htmlsnippet"] = 'Nuovo Chunk';
$_lang["new_keyword"] = 'Aggiungi nuova parola chiave:';
$_lang["new_module"] = 'Nuovo Modulo';
$_lang["new_parent"] = 'Nuova Risorsa genitore';
$_lang["new_plugin"] = 'Nuovo Plugin';
$_lang["new_role"] = 'Nuovo Ruolo';
$_lang["new_snippet"] = 'Nuovo Snippet';
$_lang["new_template"] = 'Nuovo Template';
$_lang["new_tmplvars"] = 'Nuova Variabile di Template';
$_lang["new_user"] = 'Nuovo utente';
$_lang["new_web_user"] = 'Nuovo utente Web';
$_lang["new_resource"] = 'Nuova Risorsa';

// manage
$_lang["manage_categories"] = 'Gestione Categorie';
$_lang["manage_depends"] = 'Configurazione Dipendenze';
$_lang["manage_files"] = 'Gestione File';
$_lang["manage_htmlsnippets"] = 'Gestisci Chunks';
$_lang["manage_metatags"] = 'Gestione META tag e parole chiave';
$_lang["manage_modules"] = 'Gestione moduli';
$_lang["manage_plugins"] = 'Gestisci Plugins';
$_lang["manage_snippets"] = 'Gestisci Snippets';
$_lang["manage_templates"] = 'Gestisci Templates';
$_lang["manage_documents"] = 'Gestisci Documenti';
$_lang["manage_permission"] = 'Gestisci Permessi';

// move
$_lang["move"] = 'Sposta';
$_lang["move_resource"] = 'Sposta Risorsa';
$_lang["move_resource_message"] = 'Potete spostare una Risorsa e tutti i suoi sottodocumenti selezionando un nuovo genitore nella struttura ad albero. Se selezionate una Risorsa che non è una cartella, essa sarà trasformata in cartella. Fate clic sulla nuova Risorsa genitore nella struttura ad albero delle Risorse.';
$_lang["move_resource_new_parent"] = 'Vi preghiamo di selezionare una nuova Risorsa genitore nella struttura ad albero delle Risorse.';
$_lang["move_resource_title"] = 'Sposta Risorsa';

$_lang["access_permissions"] = 'Permessi di accesso';
$_lang["access_permission_denied"] = 'Non avete i permessi per accedere alla Risorsa.';
$_lang["access_permission_parent_denied"] = 'Non avete il permesso di creare o spostare qui una Risorsa! Scegliete un\'altra destinazione.';
$_lang["access_permissions_add_resource_group"] = 'Crea un nuovo Gruppo di Risorse';
$_lang["access_permissions_add_user_group"] = 'Crea un nuovo Gruppo di Utenti';
$_lang["access_permissions_docs_message"] = 'Qui potete selezionare a quali gruppi appartiene la Risorsa';
$_lang["access_permissions_group_link"] = 'Crea un nuovo gruppo';
$_lang["access_permissions_introtext"] = 'Qui potete gestire i Gruppi di Utenti e i Gruppi di Risorse. Per aggiungere un utente a un gruppo, modificate l\'utente e selezionate il gruppo di cui deve fare parte. Per assegnare una Risorsa ad un Gruppo di Utenti, modificate la Risorsa e selezionate i gruppi a cui deve appartenere.';
$_lang["access_permissions_link_to_group"] = 'al Gruppo Risorse';
$_lang["access_permissions_context"] = 'nel contesto';
$_lang["access_permissions_link_user_group"] = 'Link a Gruppo Utenti';
$_lang["access_permissions_links"] = 'Collegamenti Gruppi di Utenti/Risorse';
$_lang["access_permissions_links_tab"] = 'Qui potete specificare a quali Gruppi di Utenti è permesso l\'accesso ai Gruppi di Risorse (ad es.: possono modificare o creare Risorse). Per collegare un Gruppo di Risorse a un Gruppo di Utenti, selezionatelo dalla lista a tendina, e fate clic su \'Aggiungi gruppo\'. Per rimuovere il collegamento ad un certo gruppo premete \'Rimuovi ->\'. Il collegamento sarà immediatamente eliminato.';
$_lang["access_permissions_no_resources_in_group"] = 'Nessuno.';
$_lang["access_permissions_no_users_in_group"] = 'Nessuno.';
$_lang["access_permissions_off"] = '<span class=\'warning\'>I permessi di accesso non sono stati attivati.</span> Questo significa che qualsiasi modifica qui eseguita non avrà alcun effetto finchè i permessi di accesso non saranno attivati.';
$_lang["access_permissions_resource_groups"] = 'Gruppi di Risorse';
$_lang["access_permissions_resources_in_group"] = '<b>Risorse nel gruppo:</b> ';
$_lang["access_permissions_resources_tab"] = 'Qui potete vedere i Gruppi di Risorse che sono stati impostati. Potete anche crearne di nuovi, rinominarli, eliminarli e vedere quali Risorse sono presenti nei differenti gruppi (posizionate il mouse sull\'ID della Risorsa per vederne il nome). Per aggiungere una Risorsa ad un gruppo o per rimuoverla da un gruppo, modificate direttamente la Risorsa.';
$_lang["access_permissions_user_toggle"] = 'Cambia i permessi di accesso';
$_lang["access_permissions_user_groups"] = 'Gruppi di Utenti';
$_lang["access_permissions_user_message"] = 'Qui potete selezionare a quali Gruppi di Utenti appartiene l\'utente:';
$_lang["access_permissions_users_in_group"] = '<b>Utenti del gruppo:</b> ';
$_lang["access_permissions_users_tab"] = 'Qui potete vedere i Gruppi di Utenti che sono stati impostati. Potete anche crearne di nuovi, rinominarli, eliminarli e vedere quali utenti fanno parte dei differenti gruppi. Per aggiungere un nuovo utente a un gruppo o per rimuoverlo da un gruppo, modificate direttamente l\'utente. Gli amministratori (utenti a cui è assegnato il Ruolo con ID 1) hanno sempre accesso a tutte le Risorse, quindi non hanno necessità di essere aggiunti ad alcun gruppo.';

$_lang["users_list"] = 'Lista degli utenti';
$_lang["documents_list"] = 'Elenco delle risorse';

$_lang["account_email"] = 'Indirizzo email';
$_lang["actioncomplete"] = '<b>Azione completata con successo!</b><br />Vi preghiamo di attendere che EVO ripulisca.';
$_lang["activity_message"] = 'Questa lista mostra le ultime Risorse che avete creato o modificato:';
$_lang["activity_title"] = 'Risorse modificate o create di recente';

$_lang["administrator_role_message"] = 'Questo Ruolo non può essere modificato o eliminato.';
$_lang["administrators"] = 'Amministratori';
$_lang["after_saving"] = 'Dopo il salvataggio';
$_lang["alert_delete_self"] = 'Non potete eliminare voi stessi!';
$_lang["alias"] = 'Alias';
$_lang["all_doc_groups"] = 'Tutti i Gruppi di Risorse (Pubblico)';
$_lang["all_events"] = 'Tutti gli eventi';
$_lang["all_usr_groups"] = 'Tutti i Gruppi di Utenti (Pubblico)';
$_lang["allow_mgr_access"] = 'Accesso all\'interfaccia di amministrazione';
$_lang["allow_mgr_access_message"] = 'Selezionate questa opzione per abilitare o disabilitare l\'accesso dell\'utente al Manager. <b>NOTA: Se selezionate \'No\' l\'utente verrà ridiretto alla Pagina di accesso del Manager o alla Home Page del sito.</b>';
$_lang["already_deleted"] = 'è già stato eliminato.';
$_lang["attachment"] = 'Allegato';
$_lang["author_infos"] = 'Info sull\'autore';
$_lang["automatic_alias_message"] = 'Selezionate \'Si\' affinchè il sistema, al momento del salvataggio, generi automaticamente un alias basato sul titolo della Risorsa.';
$_lang["automatic_alias_title"] = 'Genera automaticamente l\'alias:';
$_lang["backup"] = 'Backup';
$_lang["bk_manager"] = 'Backup';
$_lang["block_message"] = 'L\'utente sarà bloccato dopo aver salvato i suoi dati!';
$_lang["blocked_minutes_message"] = 'Qui potete inserire per quanti minuti un utente sarà bloccato dopo aver superato il numero consentito di login errati. Inserite solo numeri, senza punti o virgole.';
$_lang["blocked_minutes_title"] = 'Minuti di blocco:';
$_lang["cache_files_deleted"] = 'Sono stati eliminati i seguenti files:';
$_lang["cancel"] = 'Annulla';
$_lang["captcha_code"] = 'Codice di sicurezza';
$_lang["captcha_message"] = 'Abilitatelo per aumentare la sicurezza richiedendo agli utenti di inserire un codice illeggibile dalle macchine (e dagli script degli hackers).';
$_lang["captcha_title"] = 'Usa codici CAPTCHA:';
$_lang["captcha_words_default"] = 'EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote';
$_lang["captcha_words_message"] = 'Qui potete inserire una lista di parole CAPTCHA da usare quando CAPTCHA è abilitato. Separate le parole con virgole. Questo campo è limitato a 255 caratteri.';
$_lang["captcha_words_title"] = 'Parole CAPTCHA:';

$_lang["cfg_base_path"] = 'MODX_BASE_PATH';
$_lang["cfg_base_url"] = 'MODX_BASE_URL';
$_lang["cfg_manager_path"] = 'MODX_MANAGER_PATH';
$_lang["cfg_manager_url"] = 'MODX_MANAGER_URL';
$_lang["cfg_site_url"] = 'MODX_SITE_URL';

$_lang["change_name"] = 'Cambia nome';
$_lang["change_password"] = 'Cambia password';
$_lang["change_password_confirm"] = 'Conferma password';
$_lang["change_password_message"] = 'Inserite la nuova password e successivamente riscrivetela per conferma. La password deve essere lunga da 6 a 15 caratteri.';
$_lang["change_password_new"] = 'Nuova password';
$_lang["charset_message"] = 'Selezionate la codifica caratteri per la variabile di sistema [(modx_charset)]. Questa impostazione non ha impatto sul Manager.';
$_lang["charset_title"] = 'Codifica caratteri:';

$_lang["cleaningup"] = 'Sto ripulendo';
$_lang["clean_uploaded_filename"] = 'Normalizzare automaticamente i nomi dei files caricati';
$_lang["clean_uploaded_filename_message"] = 'Usa la configurazione di default o quella di transalias per eliminare dal nome dei files caricati i caratteri speciali, mantenendo i punti (.)';
$_lang["clear_log"] = 'Pulisci log';
$_lang["click_to_context"] = 'Cliccate per accedere al menu contestuale';
$_lang["click_to_edit_title"] = 'Cliccate qui per modificare questo record';
$_lang["click_to_view_details"] = 'Cliccate qui per vedere i dettagli';
$_lang["close"] = 'Chiudi';
$_lang["code"] = 'Codice';
$_lang["collapse_tree"] = 'Comprimi struttura ad albero';
$_lang["comment"] = 'Commenti';

$_lang["configcheck_admin"] = 'Vi preghiamo di contattare l\'amministratore di sistema e avvisarlo di questo messaggio!';
$_lang["configcheck_cache"] = 'impossibile scrivere nella directory della cache';
$_lang["configcheck_cache_msg"] = 'EVO non può scrivere nella cartella cache. EVO continuerà a funzionare come previsto, ma non sarà possibile fare caching. Per risolvere, rendete la cartella /_cache/ scrivibile.';
$_lang["configcheck_configinc"] = 'Il file di configurazione (/[+MGR_DIR+]/includes/config.inc.php) è ancora scrivibile';
$_lang["configcheck_configinc_msg"] = 'Qualche malintenzionato potrebbe combinare guai sul vostro sito e tutto ciò che è collegato ad esso. <strong>Sul serio.</strong> Impostate il file di configurazione (/[+MGR_DIR+]/includes/config.inc.php) in sola lettura!';
$_lang["configcheck_default_msg"] = 'E\' stato trovato un avviso non specificato. Questo è strano.';
$_lang["configcheck_errorpage_unavailable"] = 'La pagina di Errore del vostro sito non è disponibile.';
$_lang["configcheck_errorpage_unavailable_msg"] = 'Ciò significa che la pagina di Errore non esiste o non è accessibile da parte dei normali visitatori web. Questo può generare un loop ricorsivo e scrivere numerosi errori nel log del vostro sito. Verificate che non ci siano Gruppi di Utenti Web assegnati a questa pagina.';
$_lang["configcheck_errorpage_unpublished"] = 'La pagina di Errore del vostro sito non esiste o non è stata pubblicata.';
$_lang["configcheck_errorpage_unpublished_msg"] = 'Ciò significa che la pagina di Errore non è accessibile da parte del pubblico. Pubblicate la pagina o selezionate una Risorsa esistente nella struttura ad albero del vostro sito dal menu Strumenti -> Configurazione.';
$_lang["configcheck_filemanager_path"] = 'L\'impostazione <a href="/[+MGR_DIR+]/?a=17&amp;tab=4">File Manager path</a> sembra errata.';
$_lang["configcheck_filemanager_path_msg"] = 'Questo può accadere, per esempio, quando si sposta l\'installazione di EVO in una differente cartella o server. Per favore, controlla e aggiorna la configurazione di sistema di EVO.';
$_lang["configcheck_hide_warning"] = '<a href="javascript:hideConfigCheckWarning(\'%s\');"><em>Non mostrare più questo messaggio.</em></a>';
$_lang["configcheck_images"] = 'Impossibile scrivere nella directory delle immagini';
$_lang["configcheck_images_msg"] = 'La cartella immagini non è scrivibile o non esiste. Questo significa che il sistema di gestione immagini dell\'editor non funzionerà!';
$_lang["configcheck_installer"] = 'L\'Installer è ancora presente';
$_lang["configcheck_installer_msg"] = 'La directory /install contiene il programma di installazione di EVO. Immaginate cosa potrebbe succedere se un malintenzionato trovasse questa directory ed eseguisse l\'installazione. Forse non riuscirebbe a fare molto visto che gli servirebbe anche la password per la connessione al database, ma è decisamente meglio cancellare questa directory dal server.';
$_lang["configcheck_lang_difference"] = 'Numero errato di voci nel file di lingua';
$_lang["configcheck_lang_difference_msg"] = 'La lingua correntemente selezionata ha un differente numero di voci rispetto alla lingua di default. Pur non essendo necessariamente un problema, questo significa che il file di lingua richiede un aggiornamento.';
$_lang["configcheck_notok"] = 'Verificare alcuni dettagli della configurazione: ';
$_lang["configcheck_ok"] = 'Controllo OK - Nessun avviso da segnalare.';
$_lang["configcheck_php_gdzip"] = 'Le estensioni PHP GD e/o Zip non sono state trovate';
$_lang["configcheck_php_gdzip_msg"] = 'EVO richiede le estensioni PHP GD e Zip. EVO funziona anche senza, ma non potrete utilizzare File Manager, Image Editor e Captcha.';
$_lang["configcheck_rb_base_dir"] = 'L\'impostazione <a href="/[+MGR_DIR+]/?a=17&amp;tab=5">File base path</a> sembra errata.';
$_lang["configcheck_rb_base_dir_msg"] = 'Questo può accadere, per esempio, quando si sposta l\'installazione di EVO in una differente cartella o server. Per favore, controlla e aggiorna la configurazione di sistema di EVO.';
$_lang["configcheck_register_globals"] = 'Nel vostro file di configurazione php.ini, il valore register_globals è impostato su ON';
$_lang["configcheck_register_globals_msg"] = 'Questa configurazione rende il vostro sito molto più suscettibile agli attacchi di Cross Site Scripting (XSS). Contattate il vostro fornitore di hosting per capire cosa si può fare per disabilitare questa impostazione.';
$_lang["configcheck_title"] = 'Controllo della configurazione';
$_lang["configcheck_templateswitcher_present"] = 'Rilevato il Plugin TemplateSwitcher';
$_lang["configcheck_templateswitcher_present_delete"] = '<a href="javascript:deleteTemplateSwitcher();">Elimina TemplateSwitcher</a>';
$_lang["configcheck_templateswitcher_present_disable"] = '<a href="javascript:disableTemplateSwitcher();">Disabilita TemplateSwitcher</a>';
$_lang["configcheck_templateswitcher_present_msg"] = 'Il Plugin TemplateSwitcher puo\' creare problemi di prestazioni e caching, vi consigliamo di utilizzarlo solo se necessario.';
$_lang["configcheck_unauthorizedpage_unavailable"] = 'La pagina Non Autorizzato del vostro sito non esiste o non è stata pubblicata.';
$_lang["configcheck_unauthorizedpage_unavailable_msg"] = 'Ciò significa che la pagina di Non Autorizzato non esiste o non è accessibile da parte dei normali visitatori web. Questo fatto generare un loop ricorsivo e scrivere numerosi errori nel log del vostro sito. Verificate che non ci siano Gruppi di Utenti Web assegnati a questa pagina.';
$_lang["configcheck_unauthorizedpage_unpublished"] = 'La pagina Non Autorizzato del vostro sito non è stata pubblicata.';
$_lang["configcheck_unauthorizedpage_unpublished_msg"] = 'Ciò significa che la pagina di Non Autorizzato non è accessibile ai visitatori. Pubblicate la pagina o selezionate una Risorsa esistente nella struttura ad albero del vostro sito dal menu Strumenti -> Configurazione.';
$_lang["configcheck_validate_referer"] = 'Avviso di Sicurezza: Validazione headers HTTP';
$_lang["configcheck_validate_referer_msg"] = 'L\'opzione di <strong>Validazione degli headers HTTP_REFERER?</strong> non è attivata. Raccomandiamo di attivarla. <a href="index.php?a=17">Vai alle Opzioni di Configurazione</a>';
$_lang["configcheck_warning"] = 'Avviso di configurazione:';
$_lang["configcheck_what"] = 'Che cosa significa?';

$_lang["safe_mode_warning"] = 'La modalità sicura è attiva. Il Manager ha funzionalità limitate.';

$_lang["confirm_block"] = 'Siete sicuri di voler bloccare l\'utente?';
$_lang["confirm_delete_category"] = 'Sei sicuro di voler cancellare questa categoria?';
$_lang["confirm_delete_eventlog"] = 'Siete sicuri di voler cancellare questo log?';
$_lang["confirm_delete_file"] = 'Siete sicuri di voler eliminare il file?\n\nQuesto potrebbe impedire al sito di funzionare regolarmente! Eliminatelo solo se avete la certezza che quello che state facendo non pregiudica nulla.';
$_lang["confirm_delete_group"] = 'Sei sicuro di voler eliminare questo gruppo?';
$_lang["confirm_delete_htmlsnippet"] = 'Siete sicuri di voler eliminare il Chunk?';
$_lang["confirm_delete_keywords"] = 'Siete sicuri di voler eliminare le parole chiave?';
$_lang["confirm_delete_module"] = 'Siete sicuri di voler cancellare questo Modulo?';
$_lang["confirm_delete_plugin"] = 'Siete sicuri di voler eliminare questo Plugin?';
$_lang["confirm_delete_record"] = 'Siete sicuri di voler eliminare i records selezionati?';
$_lang["confirm_delete_resource"] = 'Siete sicuri di voler eliminare questa Risorsa?\nSaranno eliminate anche tutte le Risorse in essa contenute.';
$_lang["confirm_delete_role"] = 'Siete sicuri di voler eliminare questo Ruolo?';
$_lang["confirm_delete_snippet"] = 'Siete sicuri di voler eliminare lo Snippet?';
$_lang["confirm_delete_tags"] = 'Siete sicuri di voler cancellare questo META tag?';
$_lang["confirm_delete_template"] = 'Siete sicuri di voler eliminare il Template?';
$_lang["confirm_delete_tmplvars"] = 'Siete sicuri di voler rimuovere la Variabile di Template e tutti i suoi valori memorizzati?';
$_lang["confirm_delete_user"] = 'Siete sicuri di voler eliminare l\'utente?';

$_lang["delete_yourself"] = 'Non potete eliminare voi stessi!';
$_lang["delete_last_admin"] = 'Impossibile eliminare l\'ultimo utente admin';

$_lang["confirm_delete_permission"] = 'Siete sicuri di voler eliminare questo Permesso?';
$_lang["confirm_duplicate_record"] = 'Siete sicuri di voler duplicare questo record?';
$_lang["confirm_empty_trash"] = 'Volete rimuovere permanentemente tutte le Risorse eliminate?\n\nProcedere?';
$_lang["confirm_load_depends"] = 'Siete sicuri di voler caricare la finestra di Impostazione Dipendenze senza salvare le modifiche?';
$_lang["confirm_name_change"] = 'Cambiare nome utente può avere effetto su altre applicazioni collegate al Sistema di Gestione dei Contenuti. \n\n Siete sicuri di voler cambiare il nome utente?';
$_lang["confirm_publish"] = '\n\nPubblicando ora la Risorsa rimuoverete ogni data di pubblicazione o ritiro che potreste aver impostato. Se invece volete cambiare o mantenere le date di pubblicazione/ritiro, allora scegliete la \'modifica\' della Risorsa.\n\nProcedere?';
$_lang["confirm_remove_locks"] = 'Gli utenti a volte chiudono il browser mentre stanno modificando Risorse, Templates o Snippets lasciando con ogni probabilità questi oggetti in stato di blocco.\nPremendo OK rimuoverete TUTTI i blocchi attualmente presenti.\n\nProcedere?';
$_lang["confirm_reset_sort_order"] = 'Sei sicuro di voler azzerare l\'\"ordinamento / indice\" di tutti gli elementi elencati a 0?';
$_lang["confirm_resource_duplicate"] = 'Siete sicuri di voler duplicare questa Risorsa/Cartella? Saranno anche duplicate tutte le Risorse/Catelle che contiene.';
$_lang["confirm_setting_language_change"] = 'Avete modificato il valore di default e si perderanno le modifiche. Procedere?';
$_lang["confirm_unblock"] = 'Siete sicuri di voler sbloccare l\'utente?';
$_lang["confirm_undelete"] = '\n\nTutte le Risorse eliminate insieme alla Risorsa genitore potranno essere recuperate, ma non quelle eliminate in precedenza.';
$_lang["confirm_unpublish"] = '\n\nRitirando ora la Risorsa rimuoverete ogni data di pubblicazione o ritiro che potreste aver impostato. Se invece volete cambiare o mantenere le date di pubblicazione e ritiro scegliete la \'modifica\' della Risorsa.\n\nProcedere?';
$_lang["confirm_unzip_file"] = 'Siete sicuri di voler decomprimere il file?\n\nI file esistenti potrebbero essere sovrascritti.';

$_lang["could_not_find_user"] = 'Utente non trovato';

$_lang["create_folder_here"] = 'Crea una cartella';
$_lang["create_resource_here"] = 'Crea una Risorsa';
$_lang["create_resource_title"] = 'Crea Risorsa';
$_lang["create_weblink_here"] = 'Crea un Link Web';
$_lang["createdon"] = 'Data di creazione';
$_lang["create_new"] = 'Crea nuovo';

$_lang["credits"] = 'Crediti';
$_lang["credits_shouts_msg"] = '<p>EVO è gestito e mantenuto da <a href="http://evo.im/" target="_blank">evo.im</a>.</p>';
$_lang["custom_contenttype_message"] = 'Qui potete impostare il \'content type\' delle Risorse pubblicate. Per aggiungere un nuovo \'content type\' inseritelo nel campo e fate clic sul pulsante \'Aggiungi\'.';
$_lang["custom_contenttype_title"] = 'Tipo di Contenuto personalizzato:';

$_lang["database_charset"] = 'Set di Caratteri del Database';
$_lang["database_collation"] = 'Collation del Database';
$_lang["database_name"] = 'Nome del Database';
$_lang["database_overhead"] = '<b style=\'color:#990033\'>Nota:</b> L\'Overhead è lo spazio inutilizzato riservato da MySQL. Per liberare questo spazio, cliccate sulla cifra overhead della tabella.';
$_lang["database_server"] = 'Server del Database';
$_lang["database_table_clickbackup"] = 'Effettua il backup e scarica le tabelle selezionate';
$_lang["database_table_clickhere"] = 'Cliccate qui';
$_lang["database_table_datasize"] = 'Dimensione dei dati';
$_lang["database_table_droptablestatements"] = 'Genera dichiarazioni DROP TABLE.';
$_lang["database_table_effectivesize"] = 'Dimensioni effettive';
$_lang["database_table_indexsize"] = 'Dimensioni dell\'indice';
$_lang["database_table_overhead"] = 'Overhead';
$_lang["database_table_records"] = 'Numero di records';
$_lang["database_table_tablename"] = 'Nome della tabella';
$_lang["database_table_totals"] = 'Totali:';
$_lang["database_table_totalsize"] = 'Dimensione totale';
$_lang["database_tables"] = 'Tabelle del Database';
$_lang["database_version"] = 'Versione Database:';

$_lang["date"] = 'Data';
$_lang["datechanged"] = 'Data ultima modifica';
$_lang["datepicker_offset"] = 'Offset del Datepicker: ';
$_lang["datepicker_offset_message"] = 'Il numero di anni nel passato da mostrare nel datepicker.';
$_lang["datetime_format"] = 'Formato Data:';
$_lang["datetime_format_message"] = 'Il formato delle date nel Manager.';

$_lang["default"] = 'Default:';
$_lang["defaultcache_message"] = 'Selezionate \'Si\' se volete che di default tutte le nuove Risorse possano essere salvate nella cache.';
$_lang["defaultcache_title"] = 'Inserisci in cache di default:';
$_lang["defaultmenuindex_message"] = 'Selezionate \'Si\' per attivare di default l\'incremento automatico dell\'indice dei menu.';
$_lang["defaultmenuindex_title"] = 'Incremento automatico indice dei Menu:';
$_lang["defaultpublish_message"] = 'Selezionate \'Si\' se volete che tutte le nuove Risorse siano pubblicate di default.';
$_lang["defaultpublish_title"] = 'Pubblicato di default:';
$_lang["defaultsearch_message"] = 'Selezionate \'Si\' se volete che di default tutte le nuove Risorse siano ricercabili.';
$_lang["defaultsearch_title"] = 'Ricercabile di default:';
$_lang["defaulttemplate_message"] = 'Selezionate il Template di default che desiderate usare per le nuove Risorse. Potete sempre selezionarne di volta in volta uno diverso nell\'editor di Risorse, questa impostazione semplicemente ne preseleziona uno.';
$_lang["defaulttemplate_title"] = 'Template di default:';
$_lang["defaulttemplate_logic_title"] = 'Assegnazione Automatica del Template:';
$_lang["defaulttemplate_logic_general_message"] = 'Le nuove Risorse avranno i seguenti Templates, verranno utilizzati i livelli piu\' alti se non trovati:';
$_lang["defaulttemplate_logic_system_message"] = '<strong>System</strong>: il Template di default del Sistema.';
$_lang["defaulttemplate_logic_parent_message"] = '<strong>Parent</strong>: lo stesso Template della cartella.';
$_lang["defaulttemplate_logic_sibling_message"] = '<strong>Sibling</strong>: lo stesso Template delle Risorse nella stessa cartella.';

$_lang["delete"] = 'Elimina';
$_lang["delete_resource"] = 'Elimina Risorsa';
$_lang["delete_tags"] = 'Cancella tag';
$_lang["deleting_file"] = 'Eliminazione file `%s`: ';
$_lang["description"] = 'Descrizione';
$_lang["deselect_keywords"] = 'Cancella parole chiave';
$_lang["deselect_metatags"] = 'Cancella META tag';
$_lang["disabled"] = 'Disabilitati';
$_lang["doc_data_title"] = 'Visualizza dati della Risorsa';
$_lang["documentation"] = 'Documentazione';

$_lang["duplicate"] = 'Duplica';
$_lang["duplicate_alias_found"] = 'La Risorsa \'%s\' utilizza già l\'alias \'%s\'. Inserire un altro alias.';
$_lang["duplicate_template_alias_found"] = 'Il Template \'%s\' utilizza già l\'alias \'%s\'. Inserire un altro alias.';
$_lang["duplicate_alias_message"] = 'Qui potete selezionare \'Si\' per permettere gli alias duplicati. <b>NOTA: Questa opzione deve essere usata con l\'opzione \'Percorso URL Semplici\' attiva per evitare problemi di riferimenti alle Risorse.</b>';
$_lang["duplicate_alias_title"] = 'Permetti alias duplicati:';
$_lang["duplicate_name_found_general"] = 'E\' già presente un %s chiamato \'%s\'. Inserite un nome univoco.';
$_lang["duplicate_name_found_module"] = 'E\' già presente un Modulo chiamato \'%s\'. Inserite un nome univoco.';
$_lang["duplicated_el_suffix"] = 'Duplica';

$_lang["edit"] = 'Modifica';
$_lang["edit_resource"] = 'Modifica Risorsa';
$_lang["edit_resource_title"] = 'Crea/modifica Risorsa';
$_lang["edit_settings"] = 'Configurazione';
$_lang["editedon"] = 'Data modifica';
$_lang["editing_file"] = 'Modifica file: ';
$_lang["editor_css_path_message"] = 'Inserite il percorso del file CSS che volete usare con l\'editor. Vi consigliamo di inserire il percorso dalla root del vostro server, ad esempio: /assets/site/style.css. Se non volete caricare lo stile nell\'editor, lasciate vuoto questo campo.';
$_lang["editor_css_path_title"] = 'Percorso del file CSS:';

$_lang["email"] = 'Email';
$_lang["email_sent"] = 'Email inviata';
$_lang["email_unique"] = 'Email già in uso!';
$_lang["emailsender_message"] = 'L\'indirizzo e-mail dell\'amministratore del sito. Ad esempio, questo indirizzo e-mail verrà utilizzato come destinazione di notifica del sistema di e-mail, ecc';
$_lang["emailsender_title"] = 'Indirizzo e-mail:';
$_lang["emailsubject_default"] = 'Le vostre credenziali per il login';
$_lang["emailsubject_message"] = 'Qui potete specificare l\'oggetto della e-mail di iscrizione.';
$_lang["emailsubject_title"] = 'Oggetto e-mail:';

$_lang["empty_folder"] = 'Questa cartella è vuota';
$_lang["empty_recycle_bin"] = 'Rimuovi le Risorse eliminate';
$_lang["empty_recycle_bin_empty"] = 'Non sono presenti Risorse eliminate da cancellare.';
$_lang["enable_resource"] = 'Abilita Risorsa.';
$_lang["enable_sharedparams"] = 'Abilita condivisione parametri';
$_lang["enable_sharedparams_msg"] = '<b>NOTA:</b> L\'id unico globale (GUID) sarà usato per identificare in maniera univoca questo Modulo e i suoi parametri condivisi. Il GUID è anche utilizzato per creare un collegamento tra il Modulo ed i Plugins o Snippets che accedono ai suoi parametri condivisi. ';
$_lang["enabled"] = 'Abilitati';
$_lang["error"] = 'Errore';
$_lang["error_sending_email"] = 'Errore invio mail';
$_lang["errorpage_message"] = 'Inserite l\'ID della Risorsa da mostrare agli utenti che hanno richiesto una Risorsa che non esiste. <b>NOTA: assicuratevi che l\'ID inserito appartenga a una Risorsa esistente e che sia stata pubblicata!</b>';
$_lang["errorpage_title"] = 'Pagina di errore:';
$_lang["event_id"] = 'ID Evento';
$_lang["eventlog"] = 'Log degli Eventi';
$_lang["eventlog_msg"] = 'Il Log degli Eventi mostra gli avvisi ed i messaggi di errore generati dal sistema di gestione dei contenuti. La colonna \'Sorgente\' mostra la sezione del sistema di gestione dei contenuti in cui il messaggio è stato mostrato.';
$_lang["eventlog_viewer"] = 'Log degli Eventi';
$_lang["everybody"] = 'Tutti';
$_lang["existing_category"] = 'Categoria attuale';
$_lang["expand_tree"] = 'Espandi struttura ad albero';
$_lang["failed_login_message"] = 'Qui potete inserire il numero delle volte che è consentito sbagliare l\'autenticazione prima che l\'account venga bloccato.';
$_lang["failed_login_title"] = 'Autenticazioni errate consentite:';
$_lang["fe_editor_lang_message"] = 'Selezionare il linguaggio dell\'editor quando usato nel front-end.';
$_lang["fe_editor_lang_title"] = 'Lingua dell\'editor del Front-end:';

$_lang["filemanager_path_message"] = 'IIS spesso non riesce a determinare correttamente la cartella principale usata dal File Manager per determinare ciò che potete vedere. Se avete problemi nell\'uso del File Manager, assicuratevi che il percorso punti alla root dell\'installazione di EVO.';
$_lang["filemanager_path_title"] = 'Percorso del File Manager:';

$_lang["folder"] = 'Cartella';
$_lang["forgot_password_email_fine_print"] = '* L\'indirizzo precedente non sarà più valido una volta che avrete cambiato la password o da domani.';
$_lang["forgot_password_email_instructions"] = 'Da lì potrete cambiare la vostra password dal menu Il Mio Account.';
$_lang["forgot_password_email_intro"] = 'E\' stata fatta una richiesta per cambiare la password del vostro account.';
$_lang["forgot_password_email_link"] = 'Fate clic qui per completare il processo.';
$_lang["forgot_your_password"] = 'Hai dimenticato la Password?';
$_lang["friendly_alias_message"] = 'Se state usando gli URL Semplici, e la Risorsa ha un alias, quest\'ultimo avrà sempre precedenza sull\'URL Semplice. Impostando questa opzione su \'Si\', il prefisso e il suffisso dell\'URL Semplice saranno anche applicati all\'alias. Per esempio, se la Risorsa con l\'ID 1 ha per alias `introduction` e voi avete impostato un prefisso come `` e un suffisso come `.html`, settando questa opzione su `Si` sarà generato `introduction.html`. Se non ci sono alias, EVO  genererà `1.html` come link.';
$_lang["friendly_alias_title"] = 'Usa URL Semplici:';
$_lang["friendlyurls_message"] = 'L\'opzione permette di usare gli URL Semplici per i motori di ricerca con EVO. Notate che l\'opzione ha effetto solo per le installazioni di EVO su Apache e che avrete anche bisogno di scrivere un file .htaccess perchè possa funzionare. Per maggiori informazioni, guardate il file .htaccess incluso nella distribuzione.';
$_lang["friendlyurls_title"] = 'Usa URL Semplici:';
$_lang["friendlyurlsprefix_message"] = 'Qui potete specificare il prefisso da usare con gli URL semplici. Ad esempio, un prefisso impostato su \'pagina\' trasformerà l\'URL /index.php?id=2 nell\'URL semplice /pagina2.html (assumendo che il suffisso sia impostato su .html). In questo modo potete specificare cosa gli utenti (e i motori di ricerca) vedranno per i links nel sito.';
$_lang["friendlyurlsprefix_title"] = 'Prefisso per gli URL Semplici:';
$_lang["friendlyurlsuffix_message"] = 'Qui potete specificare il suffisso degli URL semplici. Specificando \'.html\' sarà aggiunto .html a tutti gli URL semplici.';
$_lang["friendlyurlsuffix_title"] = 'Suffisso per gli URL Semplici:';
$_lang["functionnotimpl"] = 'Spiacente!';
$_lang["functionnotimpl_message"] = 'Questa funzione non è ancora stata implementata.';
$_lang["further_info"] = 'Ulteriori informazioni';
$_lang["global_tabs"] = 'Global Tabs';
$_lang["go"] = 'Vai';
$_lang["group_access_permissions"] = 'Gruppi di accesso';
$_lang['group_tvs'] = 'Raggruppa TV';
$_lang["guid"] = 'GUID';
$_lang["help"] = 'Aiuto';
$_lang["help_msg"] = '<p>Se avete bisogno di aiuto nell\'utilizzo di EVO, vi consigliamo di visitare i <a href="http://forums.modx.com/" target="_blank">Forum EVO</a>. Inoltre, il sito EVO contiene tutta la <a href="http://rtfm.modx.com/evolution/1.0" target="_blank">documentazione</a> riguardo l\'uso di EVO o su come configurarlo, la risposta che state cercando potrebbe essere qui.</p><p>Prevediamo anche di offrire servizi di supporto di tipo commerciale per EVO. Se siete interessati, <a href="mailto:hello@modx.com?subject=MODX Commercial Support Inquiry">inviateci un messaggio email</a>.';
$_lang["help_title"] = 'Aiuto';
$_lang["hide_tree"] = 'Nascondi struttura ad albero';
$_lang["home"] = 'Dashboard';

$_lang["icon"] = 'Icona';
$_lang["icon_description"] = 'classe CSS. i.e. fa&nbsp;fa-star';
$_lang["id"] = 'ID';
$_lang["illegal_parent_child"] = 'Assegnazione parentela:\n\nLa Risorsa è un sottodocumento della Risorsa selezionata.';
$_lang["illegal_parent_self"] = 'Assegnazione parentela:\n\nLa Risorsa selezionata non può essere assegnata a se stessa.';
$_lang["images_management"] = 'Gestisci immagini';
$_lang["import_files_found"] = '<b>Trovate %s Risorse da importare...</b>';
$_lang["import_params"] = 'Importa i parametri condivisi del Modulo';
$_lang["import_params_msg"] = 'Potete importare i parametri e le impostazioni di un Modulo selezionando il nome del Modulo dalla lista sottostante. <b>NOTA:</b> Affinchè un Modulo appaia nel menu questo Plugin/Snippet deve essere incluso nell\'elenco di dipendenza del Modulo ed il Modulo deve avere la attiva la condivisione dei parametri. ';
$_lang["import_parent_resource"] = 'Risorsa genitore:';
$_lang["update_tree"] = 'Ricostruisci l\'albero';
$_lang["update_tree_description"] = '<ul>
                   <li> - Closure table database design che rende più veloce e conveniente lavorare con l\'abero dei documenti</li>
                     <li> - Se i dati nell\'albero non sono aggiornati attraverso dei modelli c\'è la possibilità di collegamenti errati dei documenti nel database </li>
                     <li> - Questa operazione corregge i problemi quando site_content non è aggiornato attaverso il modello (save, create) e i collegamenti (Closure table) non vengono aggiornati</li>
                     <li> - Si può anche compiere questa operazione da riga di comando con \'php artisan closuretable: rebuild \' </li>
                     </ul>';
$_lang["update_tree_danger"] = 'Se si hanno più di 1000 Risorse è preferibile eseguire l\'operazione da riga comando con \'php artisan closuretable: rebuild command\'';
$_lang["update_tree_time"] = 'Ricostruzione dell\'albero terminata. Documenti elaborati: <b>%s</b><br>L\'importaziona ha richiesto <b>%s</b> secondi.';
$_lang["info"] = 'Info';
$_lang["information"] = 'Informazioni';
$_lang["inline"] = 'In linea';
$_lang["insert"] = 'Inserisci';
$_lang["maxImageWidth"] = 'Larghezza massima immagine:';
$_lang["maxImageHeight"] = 'Altezza massima immagine:';
$_lang["clientResize"] = 'Ridimensiona le immagini dal browser';
$_lang["clientResize_message"] = 'Se abilitato le immagini verranno ridimensionate dal browser prima di essere caricate';
$_lang["noThumbnailsRecreation"] = 'Crea le anteprime solo al caricamento';
$_lang["noThumbnailsRecreation_message"] = 'Il File Browser genererà le anteprime solo al caricamento; se non c\'è l\'anteprima per qualche immagine, non verrà creata';
$_lang["thumbWidth"] = 'Larghezza massima della miniatura:';
$_lang["thumbHeight"] = 'Altezza massima della miniatura:';
$_lang["thumbsDir"] = 'Percorso della cartella delle miniature:';
$_lang["jpegQuality"] = 'Compressione JPEG:';
$_lang["denyZipDownload"] = 'Disabilita il download degli archivi zip:';
$_lang["denyExtensionRename"] = 'Disabilita la modifica delle estensioni dei file:';
$_lang["maxImageWidth_message"] = 'Se la risoluzione dell\'immagine caricata supera questa impostazione verrà automaticamente ridimensionata. Impostare 0 per disabilitare.';
$_lang["maxImageHeight_message"] = 'Se la risoluzione dell\'immagine caricata supera questa impostazione verrà automaticamente ridimensionata. Impostare 0 per disabilitare.';
$_lang["thumbWidth_message"] = 'Larghezza massima della miniatura.';
$_lang["thumbHeight_message"] = 'Altezza massima della miniatura.';
$_lang["thumbsDir_message"] = 'Il nome della directory delle miniature';
$_lang["jpegQuality_message"] = 'Qualità della compressione JPEG delle miniature ridimensionate.';
$_lang["showHiddenFiles"] = 'Mostra i file nascosti nel File Browser:';
$_lang["keyword"] = 'Parola chiave';
$_lang["keywords"] = 'Parole chiave';
$_lang["keywords_intro"] = 'Per modificare una parola chiave, digitate semplicemente la nuova parola nel campo di testo a fianco di quella che volete cambiare. Per eliminare una parola chiave, spuntate il box \'Elimina\' per quella parola. Se impostate l\'eliminazione di una parola chiave e allo stesso tempo ne modificate il nome, essa verrà eliminata vanificando l\'operazione di rinomina!';
$_lang["language_message"] = 'Selezionate la lingua da usare nel Manager EVO.';
$_lang["language_title"] = 'Lingua del Manager';
$_lang["last_update"] = 'Ultimo aggiornamento';
$_lang["launch_site"] = 'Mostra sito';
$_lang["license"] = 'Licenza';
$_lang["link_attributes"] = 'Attributi del link';
$_lang["link_attributes_help"] = 'Qui potete inserire gli attributi per i link a questa pagina, come target= o rel=.';
$_lang["list_mode"] = 'Abilita/disabilita modalità lista - elencare tutti i record nella griglia.';
$_lang["loading_doc_tree"] = 'Sto caricando la struttura ad albero delle Risorse...';
$_lang["loading_menu"] = 'Sto caricando il menu...';
$_lang["loading_page"] = 'Vi preghiamo di attendere che EVO carichi la pagina...';
$_lang["localtime"] = 'Orario locale';

$_lang["lock_htmlsnippet"] = 'Impedisci la modifica del Chunk';
$_lang["lock_htmlsnippet_msg"] = 'Solo gli amministratori (Ruolo ID 1) possono modificare il Chunk.';
$_lang["lock_module"] = 'Impedisci la modifica del Modulo';
$_lang["lock_module_msg"] = 'Solo gli amministratori (Ruolo ID 1) possono modificare questo Modulo.';
$_lang["lock_msg"] = '%s sta attualmente modificando %s. Attendete che l\'altro utente finisca e poi riprova.';
$_lang["lock_plugin"] = 'Impedisci la modifica del Plugin';
$_lang["lock_plugin_msg"] = 'Solo gli amministratori (Ruolo ID 1) possono modificare questo Plugin.';
$_lang["lock_settings_msg"] = '%s sta attualmente modificando queste impostazioni. Attendete che l\'altro utente finisca e poi riprovate.';
$_lang["lock_snippet"] = 'Impedisci la modifica dello Snippet';
$_lang["lock_snippet_msg"] = 'Solo gli amministratori (Ruolo ID 1) possono modificare lo Snippet.';
$_lang["lock_template"] = 'Impedisci la modifica del Template';
$_lang["lock_template_msg"] = 'Solo gli amministratori (Ruolo ID 1) possono modificare il Template.';
$_lang["lock_tmplvars"] = 'Impedisci la modifica della Variabile di Template';
$_lang["lock_tmplvars_msg"] = 'Solo gli amministratori (Ruolo ID 1) possono modificare questa variabile';
$_lang["locked"] = 'Bloccato';

$_lang["login_allowed_days"] = 'Giorni consentiti';
$_lang["login_allowed_days_message"] = 'Selezionate i giorni della settimana nei quali questo utente sarà autorizzato a collegarsi.';
$_lang["login_allowed_ip"] = 'Indirizzo IP autorizzato';
$_lang["login_allowed_ip_message"] = 'Inserite l\'indirizzo IP dal quale questo utente si può collegare. <b>NOTA: Se volete inserire più indirizzi IP separateli con una virgola (,)</b>';
$_lang["login_button"] = 'Accedi';
$_lang["login_cancelled_install_in_progress"] = '<span style="font-weight: bold; color: red;">Installazione o aggiornamento di questo sito in corso. <br />Riprova tra qualche minuto</span><br />';
$_lang["login_cancelled_site_was_updated"] = '<span style="font-weight: bold; color: red;">Installazione o aggiornamento  completata su questo sito, effettuare nuovamente il login!</span><br />';
$_lang["login_captcha_message"] = 'Inserite il codice di sicurezza mostrato all\'interno dell\'immagine grafica. Se avete difficoltà nel leggere il codice, cliccateci sopra per generarne un altro a caso, oppure contattate l\'amministratore del sito.';
$_lang["login_homepage"] = 'Autenticazione Pagina d\'inizio';
$_lang["login_homepage_message"] = 'Inserite l\'ID della Risorsa da mostrare all\'utente dopo che ha eseguito l\'autenticazione. <b>NOTA: assicuratevi che la Risorsa indicata esista, sia pubblicata e accessibile all\'utente!</b>';
$_lang["login_message"] = 'Inserisci le tue credenziali per effettuare l\'accesso.<br /> Il sistema fa distinzione fra le maiuscole/minuscole del nome utente e della password.';
$_lang["logo_slogan"] = 'Sistema di gestione dei contenuti EVO - \nCreate e fate di più con meno';
$_lang["logout"] = 'Uscita';
$_lang["long_title"] = 'Titolo esteso';

$_lang["manager"] = 'Manager';
$_lang["manager_lockout_message"] = '<p>Siete entrati nel Manager EVO. Se desiderate uscire dalla sessione, fate clic sul pulsante "Uscita".</p>Per andare alla pagina inziale fate clic sul pulsante "Home".';
$_lang["manager_permissions"] = 'Gestione Permessi';
$_lang["manager_theme"] = 'Tema del Manager EVO:';
$_lang["manager_theme_message"] = 'Selezionate un tema per il Manager EVO.';
$_lang["manager_theme_mode"] = 'Schema colori:';
$_lang["manager_theme_mode1"] = 'è tutto chiaro';
$_lang["manager_theme_mode2"] = 'l\'header è scuro';
$_lang["manager_theme_mode3"] = 'l\'header e la sidebar sono scuri';
$_lang["manager_theme_mode4"] = 'è tutto scuro';
$_lang['manager_theme_mode_message'] = 'Questa impostazione viene utilizzata come "predefinita" e può essere sovrascritta dall\'utente con il pulsante "Modalità Colore del Tema", nell\'albero delle risorse: <i class="fa fa-lg fa-adjust"></i>';
$_lang['manager_theme_mode_title'] = 'Modalità colore del Tema';

$_lang["meta_keywords"] = 'META e parole chiave';
$_lang["metatag_intro"] = 'In questa pagina potete eliminare, creare o modificare i META tag e le parole chiave. Per collegare le parole chiave alle Risorse, modificate la Risorsa in questione e selezionate le parole chiave desiderate dalla lista. Per aggiungere una parola chiave digitate la nuova parola e poi cliccate \'Aggiungi tag\'.';
$_lang["metatag_notice"] = 'Per ulteriori informazioni, consultate la Guida di Riferimento HTML. Questa non è una lista completa di tutti i possibili META tag.';
$_lang["metatags"] = 'META tag';
$_lang["mgr_access_permissions"] = 'Gestione permessi di accesso';
$_lang["mgr_login_start"] = 'Pagina di accesso del Manager';
$_lang["mgr_login_start_message"] = 'Inserite l\'ID della Risorsa che volete mostrare agli utenti dopo l\'accesso al Manager. <b>NOTA: assicuratevi che l\'ID appartenga ad una Risorsa esistente e che sia stata pubblicata!</b>';

$_lang["mgrlog_action"] = 'Azione';
$_lang["mgrlog_actionid"] = 'ID Azione';
$_lang["mgrlog_anyall"] = 'Qualunque/Tutti';
$_lang["mgrlog_datecheckfalse"] = 'checkdate() ha restituito false.';
$_lang["mgrlog_datefr"] = 'Data iniziale';
$_lang["mgrlog_dateinvalid"] = 'Formato data errato.';
$_lang["mgrlog_dateto"] = 'Data finale';
$_lang["mgrlog_emptysrch"] = 'La vostra ricerca non ha prodotto risultati.';
$_lang["mgrlog_field"] = 'Campo';
$_lang["mgrlog_itemid"] = 'ID oggetto';
$_lang["mgrlog_itemname"] = 'Nome oggetto';
$_lang["mgrlog_msg"] = 'Messaggio';
$_lang["mgrlog_noquery"] = 'Non è ancora stata effettuata una ricerca.';
$_lang["mgrlog_qresults"] = 'Risultati della ricerca';
$_lang["mgrlog_query"] = 'Selezione dei log di sistema';
$_lang["mgrlog_query_msg"] = 'Selezionate quali informazioni volete vedere. Potete selezionare un intervallo di date, ma ricordate che le date che immettete non sono entrambe incluse. Ad esempio per selezionare tutti i dati di log del giorno 1 gennaio 2014, impostate \'Data iniziale\' su 01-01-2014 e \'Data finale\' su 02-01-2014.<br /><br />Messaggio ed azione sono in genere coincidenti. Se state cercando un messaggio specifico, è meglio impostare l\'azione su \'Qualunque/Tutti\'.';
$_lang["mgrlog_results"] = 'Numero di risultati';
$_lang["mgrlog_searchlogs"] = 'Ricerca log';
$_lang["mgrlog_sortinst"] = 'Potete ordinare la tabella facendo clic sulle intestazioni delle colonne. Se i logs dovessero diventare troppo grandi, potete <a href="index.php?a=55">cancellare tutti i logs</a>. Con la cancellazione vengono rimossi tutti i dati dei logs raccolti fino ad oggi e questa azione una volta avviata non può essere annullata!';
$_lang["mgrlog_time"] = 'Ora';
$_lang["mgrlog_user"] = 'Utente';
$_lang["mgrlog_username"] = 'Nome utente';
$_lang["mgrlog_value"] = 'Valore';
$_lang["mgrlog_view"] = 'Mostra i logs del Manager';

$_lang["modx_news"] = 'Ultime Notizie EVO';
$_lang["modx_news_tab"] = 'Novità EVO';
$_lang["modx_news_title"] = 'Novità EVO';
$_lang["modx_security_notices"] = 'Avvisi di Protezione EVO';
$_lang["modx_version"] = 'Versione EVO';

$_lang["name"] = 'Nome';

$_lang["no"] = 'No';
$_lang["no_active_users_found"] = 'Non sono stati trovati utenti attivi.';
$_lang["no_activity_message"] = 'Non avete ancora creato o modificato alcuna Risorsa.';
$_lang["no_category"] = 'senza Categoria';
$_lang["no_docs_pending_publishing"] = 'Nessuna Risorsa in attesa di pubblicazione.';
$_lang["no_docs_pending_pubunpub"] = 'Nessun evento programmato trovato';
$_lang["no_docs_pending_unpublishing"] = 'Nessuna Risorsa in attesa del ritiro dalla pubblicazione.';
$_lang["no_edits_creates"] = 'No edits or creates found.';
$_lang["no_groups_found"] = 'Nessun gruppo trovato.';
$_lang["no_keywords_found"] = 'Non ci sono parole chiave';
$_lang["no_records_found"] = 'Nessun record.';
$_lang["no_results"] = 'Nessun risultato trovato';
$_lang["nologentries_message"] = 'Inserite il numero di righe da visualizzare per pagina quando visualizzate i logs.';
$_lang["nologentries_title"] = 'Numero di voci di log:';
$_lang["none"] = 'Nessuno';
$_lang["noresults_message"] = 'Inserite il numero di risultati da mostrare negli elenchi ed i risultati di ricerca .';
$_lang["noresults_title"] = 'Numero di risultati:';
$_lang["not_deleted"] = 'non è stato eliminato.';
$_lang["not_set"] = 'Non impostato';

$_lang["offline"] = 'Offline';

$_lang["online"] = 'Online';
$_lang["onlineusers_action"] = 'Azione';
$_lang["onlineusers_actionid"] = 'ID dell\'azione';
$_lang["onlineusers_ipaddress"] = 'Indirizzo IP dell\'utente';
$_lang["onlineusers_lasthit"] = 'Ultimo contatto';
$_lang["onlineusers_message"] = 'Utenti attivi negli ultimi 20 minuti (adesso sono le ';
$_lang["onlineusers_title"] = 'Utenti online';
$_lang["onlineusers_user"] = 'Utente';
$_lang["onlineusers_userid"] = 'ID dell\'utente';

$_lang["optimize_table"] = 'Cliccate qui per ottimizzare questa tabella';

$_lang["page_data_alias"] = 'Alias';
$_lang["page_data_cacheable"] = 'Situabile in cache';
$_lang["page_data_cacheable_help"] = 'Selezionando questo campo permetterete alla Risorsa di essere salvata nella cache. Se la Risorsa contiene Snippets, assicuratevi che il campo non sia selezionato.';
$_lang["page_data_cached"] = '<b>Sorgente recuperata dalla cache:</b>';
$_lang["page_data_changes"] = 'Modifiche';
$_lang["page_data_contentType"] = 'Tipo contenuto';
$_lang["page_data_contentType_help"] = 'Selezionate il tipo di contenuto della Risorsa. Se non avete idea del tipo di contenuto che la Risorsa deve avere, lasciatelo semplicemente come text/html.';
$_lang["page_data_created"] = 'Creato';
$_lang["page_data_edited"] = 'Modificato';
$_lang["page_data_editor"] = 'Modifica con l\'editor rich text';
$_lang["page_data_folder"] = 'La Risorsa è una cartella';
$_lang["page_data_general"] = 'Generale';
$_lang["page_data_markup"] = 'Markup/ struttura';
$_lang["page_data_mgr_access"] = 'Accesso al Manager EVO';
$_lang["page_data_notcached"] = 'Questa Risorsa non è stata (ancora) inserita nella cache.';
$_lang["page_data_publishdate"] = 'Data di pubblicazione';
$_lang["page_data_publishdate_help"] = 'Se impostate una data di pubblicazione, la Risorsa sarà pubblicata automaticamente alla data prescelta. Cliccate sull\'icona del calendario per selezionare una data di pubblicazione o sull\'icona a fianco per rimuoverla. Se non è inserita una data di pubblicazione la Risorsa non sarà pubblicata automaticamente e occorrerà pubblicarla manualmente.';
$_lang["page_data_published"] = 'Pubblicata';
$_lang["page_data_searchable"] = 'Ricercabile';
$_lang["page_data_searchable_help"] = 'Spuntando questa casella permettete alla Risorsa di essere ricercabile. Potete anche usare la casella per altri scopi nei vostri Snippets.';
$_lang["page_data_source"] = 'Sorgente';
$_lang["page_data_status"] = 'Stato';
$_lang["page_data_template"] = 'Template';
$_lang["page_data_template_help"] = 'Qui potete selezionare il Template da usare per la Risorsa.';
$_lang["page_data_title"] = 'Dati pagina';
$_lang["page_data_unpublishdate"] = 'Data di ritiro';
$_lang["page_data_unpublishdate_help"] = 'Se impostate una data di ritiro, la Risorsa sarà ritirata alla data prescelta. Cliccate sull\'icona del calendario per selezionare una data di ritiro o sull\'icona a fianco per rimuoverla. Se non è prevista una data di ritiro la Risorsa non verrà mai ritirata automaticamente.';
$_lang["page_data_unpublished"] = 'Ritirato';
$_lang["page_data_web_access"] = 'Accesso dal web';

$_lang["pagetitle"] = 'Titolo della Risorsa';
$_lang["pagination_table_first"] = 'Primo';
$_lang["pagination_table_gotopage"] = 'Vai alla pagina';
$_lang["pagination_table_last"] = 'Ultimo';
$_lang["paging_first"] = 'primo';
$_lang["paging_last"] = 'ultimo';
$_lang["paging_next"] = 'successivo';
$_lang["paging_prev"] = 'precedente';
$_lang["paging_showing"] = 'Mostra';
$_lang["paging_to"] = 'a';
$_lang["paging_total"] = 'totale';
$_lang["parameter"] = 'Parametro';
$_lang["parse_docblock"] = 'Analizza DocBlock';
$_lang["parse_docblock_msg"] = 'Attenzione (!): <b> Ripristina </ b> Il nome, la configurazione, la descrizione e la categoria di default analizzando il codice sorgente.';

$_lang["password"] = 'Password';
$_lang["password_change_request"] = 'Richiesta di cambio password';
$_lang["password_confirmed"] = 'Mancata corrispondenza della password';
$_lang["password_gen_gen"] = 'Lascia che EVO generi una password.';
$_lang["password_gen_length"] = 'La password dev\'essere lunga almeno 6 caratteri.';
$_lang["password_gen_method"] = 'Come volete creare la password dell\'utente?';
$_lang["password_gen_specify"] = 'Lasciami specificare la password:';
$_lang["password_method"] = 'Come volete notificare la nuova password all\'utente?';
$_lang["password_method_email"] = 'Invia la nuova password per e-mail.';
$_lang["password_method_screen"] = 'Mostra la nuova password sullo schermo.';
$_lang["password_msg"] = 'La nuova password per <b>:username</b> è <b>:password</b>.';

$_lang["php_version_check"] = 'EVO è compatibile con PHP versione 7.4 o superiore. Il vostro server usa la versione %s%. Si prega di aggiornare l\'installazione di PHP!';

$_lang["preview"] = 'Anteprima';
$_lang["preview_msg"] = 'Questa è solo l\'anteprima delle modifiche. Clicca su <a href="#" onclick="saveRefreshPreview();">Salva e Aggiorna</a> per salvare le modifiche';
$_lang["preview_resource"] = 'Anteprima Risorsa';

$_lang["private"] = 'Privato';
$_lang["public"] = 'Pubblico';
$_lang["publish_date"] = 'Data di pubblicazione';
$_lang["publish_events"] = 'Eventi di pubblicazione';
$_lang["publish_resource"] = 'Pubblica Risorsa';

$_lang["rb_base_dir_message"] = 'Inserite il percorso fisico alla directory del File Browser. Questa impostazione di solito è generata automaticamente. Se state usando IIS, tuttavia, EVO potrebbe non riuscire ad impostare il percorso corretto e il File Browser mostrerà un errore. In questo caso potete correggere il percorso alla cartella delle immagini (il percorso come lo vedreste in Windows Explorer). <b>NOTA:</b> La directory del File Browser, per funzionare correttamente, deve contenere le sottocartelle images, files, flash e media.';
$_lang["rb_base_dir_title"] = 'Percorso delle Risorse:';
$_lang["rb_base_url_message"] = 'Inserite il percorso virtuale alla directory del File Browser. Questo percorso in genere è generato automaticamente. Se state usando IIS, tuttavia, EVO potrebbe non riuscire ad impostare il percorso corretto e il File Browser potrebbe mostrare un errore. In questo caso potete inserire qui il percorso corretto alla cartella delle immagini  (l\'URL che inserireste in Internet Explorer).';
$_lang["rb_base_url_title"] = 'URL del File Browser:';
$_lang["rb_message"] = 'Selezionate Si se volete abilitare il File Browser. Questo permetterà agli utenti di cercare e caricare sul server immagini, file flash e media.';
$_lang["rb_title"] = 'Abilita File Browser:';
$_lang["rb_webuser_message"] = 'Volete consentire ad un Utente Web di usare il File Browser? <b>ATTENZIONE:</b> Consentire agli Utenti Web di usare il File Browser rende visibili i files di gestione degli utenti.  Usare questa opzione solo per utenti affidabili.';
$_lang["rb_webuser_title"] = 'Gli Utenti Web usano il File Browser:';
$_lang["recent_docs"] = 'Risorse recenti';
$_lang["recommend_setting_change_title"] = 'Modifiche consigliate';
$_lang["recommend_setting_change_description"] = 'Il vostro sito non è configurato per validare gli headers HTTP_REFERER per l\'accesso al Manager. Vi raccomandiamo di abilitare questa impostazione per ridurre i rischi di un attacco CSRF (Cross Site Request Forgery).';
$_lang["references"] = 'Riferimenti';
$_lang["refresh_cache"] = 'Cache: Sono stati trovati <b>%s</b> file nella cartella cache e sono stati eliminati <b>%d</b> file di cache.<p>I nuovi file di cache saranno creati non appena le pagine saranno richieste.';
$_lang["refresh_published"] = '<b>%s</b> Risorse sono state pubblicate.';
$_lang["refresh_site"] = 'Svuota Cache';
$_lang["refresh_title"] = 'Aggiorna sito';
$_lang["refresh_tree"] = 'Aggiorna struttura ad albero';
$_lang["refresh_unpublished"] = '<b>%s</b> Risorse sono state ritirate.';
$_lang["release_date"] = 'Data di rilascio';
$_lang["remember_last_tab"] = 'Ricorda i tabs:';
$_lang["remember_last_tab_message"] = 'Le pagine del Manager con tabs mostreranno l\'ultimo tab utilizzato anzichè il primo tab';
$_lang["remember_username"] = 'Ricordami';
$_lang["remove"] = 'Rimuovi ->';
$_lang["remove_date"] = 'Rimuovi data';
$_lang["remove_locks"] = 'Rimuovi Blocchi';
$_lang["rename"] = 'Rinomina';
$_lang["reports"] = 'Resoconti';
$_lang["report_issues"] = 'Segnala un problema';
$_lang["required_field"] = 'Il campo :field è necessario';
$_lang["require_tagname"] = 'E\' necessario immettere un nome per il tag';
$_lang["require_tagvalue"] = 'E\' necessario immettere un valore per il tag';
$_lang["reserved_name_warning"] = 'Avete utilizzato un nome riservato.';
$_lang["reset"] = 'Resetta';
$_lang["reset_failedlogins"] = 'reset';
$_lang["reset_sort_order"] = 'Resetta ordine';

$_lang["manager_access_permissions"] = 'Gestione permessi di accesso';
$_lang["manage_groups"] = 'Gestione documento e gruppi di utenti';
$_lang["manage_document_permissions"] = 'Gestione permessi di accesso al documento';
$_lang["manage_module_permissions"] = 'Gestione permessi di accesso al modulo';
$_lang["manage_tv_permissions"] = 'Gestione Permessi Variabile di Template';

$_lang["rss_url_news_default"] = 'https://github.com/evocms-community/evolution/releases.atom';
$_lang["rss_url_news_message"] = '<b>Inserire l\'URL per il Feed RSS Novità EVO.</b>';
$_lang["rss_url_news_title"] = 'Feed RSS Novità EVO:';
$_lang["rss_url_security_default"] = 'https://github.com/extras-evolution/security-fix/releases.atom';
$_lang["rss_url_security_message"] = 'Inserire l\'URL per il Feed RSS Avvisi di Protezione EVO.';
$_lang["rss_url_security_title"] = 'Feed RSS Avvisi di Protezione EVO:';

$_lang["run_module"] = 'Esegui Modulo';
$_lang["save"] = 'Salva';
$_lang["save_all_changes"] = 'Salva tutte le modifiche';
$_lang["save_tag"] = 'Salva tag';
$_lang["saving"] = 'Salvataggio in corso, vi preghiamo di attendere...';

$_lang["search"] = 'Ricerca';
$_lang["search_criteria"] = 'Criteri di ricerca';
$_lang["search_criteria_content"] = 'Cerca per contenuto';
$_lang["search_criteria_content_msg"] = 'Trova tutte le Risorse che hanno questo testo nel loro contenuto.';
$_lang["search_criteria_id"] = 'Cerca per ID';
$_lang["search_criteria_id_msg"] = 'Inserite l\'ID di una Risorsa per individuarla rapidamente.';
$_lang["search_criteria_top"] = 'Cerca nei campi principali';
$_lang["search_criteria_top_msg"] = 'Pagetitle, Longtitle, Alias, ID';
$_lang["search_criteria_template_id"] = 'Cerca per ID del template';
$_lang["search_criteria_template_id_msg"] = 'Trova tutte le Risorse che utilizzano il template specificato';
$_lang["search_criteria_url_msg"] = 'Cerca una risorsa per URL.';
$_lang["search_criteria_longtitle"] = 'Cerca per titolo esteso';
$_lang["search_criteria_longtitle_msg"] = 'Trova tutte le Risorse che nel titolo esteso contengono questo testo.';
$_lang["search_criteria_title"] = 'Cerca per titolo';
$_lang["search_criteria_title_msg"] = 'Trova tutte le Risorse che nel titolo contengono questo testo.';
$_lang["search_empty"] = 'La ricerca non ha prodotto risultati. Estendete i criteri di ricerca e provate nuovamente.';
$_lang["search_item_deleted"] = 'Questo elemento è stato eliminato';
$_lang["search_results"] = 'Risultati della ricerca';
$_lang["search_results_returned_desc"] = 'Descrizione';
$_lang["search_results_returned_id"] = 'ID';
$_lang["search_results_returned_msg"] = 'I criteri di ricerca hanno restituito <b>%s</b> Risorse. Se i risultati sono troppi, provate con una ricerca più specifica.';
$_lang["search_results_returned_title"] = 'Titolo';
$_lang["search_view_docdata"] = 'Visualizza questo elemento';

$_lang["security"] = 'Utenti';
$_lang["security_notices_tab"] = 'Avvisi di Protezione';
$_lang["security_notices_title"] = 'Avvisi di Protezione';

$_lang["select_date"] = 'Seleziona data';
$_lang["send"] = 'Invia';
$_lang["server_protocol_http"] = 'http';
$_lang["server_protocol_https"] = 'https';
$_lang["server_protocol_message"] = 'Specificate qui se il sito è su una connessione https.';
$_lang["server_protocol_title"] = 'Tipo server:';
$_lang["serveroffset"] = 'Scostamento orario del server';
$_lang["serveroffset_message"] = 'Selezionate il numero di ore di differenza tra il vostro fuso orario e quello del server. L\'ora attuale sul server è <b>[%s]</b>, mentre con lo scostamento che avete impostato l\'ora è <b>[%s]</b>.';
$_lang["serveroffset_title"] = 'Scostamento orario del server:';
$_lang["servertime"] = 'Orario del Server';
$_lang["set_automatic"] = 'Impostazione automatica';
$_lang["set_default"] = 'Imposta default';
$_lang["set_default_all"] = 'Imposta defaults';

$_lang["settings_after_install"] = 'Dato che questa è una nuova installazione, vi preghiamo di controllare queste impostazioni e di cambiare quelle che desiderate. Dopo aver controllato le impostazioni, premete \'Salva\' per aggiornare la configurazione di sistema.<br /><br />';
$_lang["settings_config"] = 'Configurazione';
$_lang["settings_dependencies"] = 'Dipendenze';
$_lang["settings_events"] = 'Eventi di Sistema';
$_lang["settings_furls"] = 'Impostazioni URL Semplici';
$_lang["settings_general"] = 'Informazioni Generali';
$_lang["settings_group_tv_message"] = 'Scegli se le Template Variabili devono essere raggruppate in sezioni o schede (nominate dalla categoria TV) quando si modifica una risorsa';
$_lang["settings_group_tv_options"] = 'No, Sezioni in General tab, Tabs in General tab, Sezioni in nuove tab, Tabs in nuove tab, Nuove tabs';
$_lang["settings_misc"] = 'Impostazioni varie';
$_lang["settings_security"] = 'Sicurezza';
$_lang["settings_KC"] = 'File Browser';
$_lang["settings_page_settings"] = 'Impostazioni Pagina';
$_lang["settings_photo"] = 'Foto';
$_lang["settings_properties"] = 'Proprietà';
$_lang["settings_site"] = 'Impostazioni sito';
$_lang["settings_strip_image_paths_message"] = 'Se questo valore è impostato su \'No\', EVO imposterà come assoluti gli URL di quello che caricate col File Browser (immagini, file, flash, ecc.). Impostando su \'Si\' si avranno degli URL relativi, utili se dovete spostare l\'installazione di EVO, ad esempio da un sito di test ad uno di produzione. Se non avete idea di cosa significa, lasciate impostato su \'Si\'.';
$_lang["settings_strip_image_paths_title"] = 'Riscrivere gli URL del Browser:';
$_lang["settings_templvars"] = 'Variabili di Template';
$_lang["settings_title"] = 'Impostazioni EVO';
$_lang["settings_ui"] = 'Impostazioni editor e interfaccia';
$_lang["settings_users"] = 'Impostazioni utente';
$_lang["settings_email_templates"] = 'Email & Templates';

$_lang["show_fullscreen_btn_message"] = 'Mostra nel menu il bottone Attiva / disattiva schermo intero';
$_lang["show_newresource_btn_message"] = 'Mostra il menu Nuova Risorsa';
$_lang["settings_show_picker_message"] = 'Personalizza il tema del manager e salva in localstorage';
$_lang["show_fullscreen_btn"] = 'Attiva / disattiva schermo intero';
$_lang["show_newresource_btn"] = 'Menu Nuova Risorsa';

$_lang["show_meta"] = 'Mostra le META Keywords:';
$_lang["show_meta_message"] = 'Mostra META Keywords (deprecato) quando si modificano le Risorse nel Manager.';
$_lang["show_tree"] = 'Mostra struttura ad albero';
$_lang["show_picker"] = 'Mostra Color Switcher';
$_lang["showing"] = 'Visualizzo';
$_lang["signupemail_message"] = 'Qui potete impostare il messaggio con il quale inviare la userid e la password agli utenti a cui create un account.<br />
<b>Nota:</b> I seguenti Placeholders sono valorizzati da EVO all\'invio del messaggio:<br /><br />
[+sname+] - Nome del vostro sito web<br />
[+surl+] - URL del vostro sito web<br />
[+saddr+] - Email del vostro sito web<br />
[+uid+] - Userid dell\'utente<br />
[+pwd+] - Password dell\'utente<br />
[+ufn+] - Nome completo dell\'utente<br /><br />
<b>Vi consigliamo di lasciare i due Placeholders [+uid+] e [+pwd+] nel corpo della e-mail altrimenti il nome utente e password non saranno inviati e l\'utente non potrà collegarsi!</b>';
$_lang["signupemail_title"] = 'E-mail per l\'iscrizione:';
$_lang["site"] = 'Sito';
$_lang["site_schedule"] = 'Pianificazione Sito';
$_lang["sitename_message"] = 'Inserite qui il nome del vostro sito web.';
$_lang["sitename_title"] = 'Nome del sito:';
$_lang["sitestart_message"] = 'Inserite l\'ID della Risorsa che volete usare come Home Page. <b>NOTA: assicuratevi che l\'ID inserito appartenga a una Risorsa esistente e che sia stata pubblicata!</b>';
$_lang["sitestart_title"] = 'Il sito inizia da:';
$_lang["sitestatus_message"] = 'Selezionate \'Online\' per pubblicare il sito sul web. Se selezionate \'Offline\', i visitatori vedranno il \'Messaggio Sito non disponibile\' e non potranno consultarlo.';
$_lang["sitestatus_title"] = 'Stato del sito:';
$_lang["siteunavailable_message"] = 'Messaggio da visualizzare quando il sito è offline o si è verificato un errore.';
$_lang["siteunavailable_message_default"] = 'Questo sito non è al momento disponibile.';
$_lang["siteunavailable_page_message"] = 'Inserite l\'ID che volete mostrare quando il sito è offline. <b>NOTA: assicuratevi che l\'ID appartenga ad una Risorsa esistente e che sia stata pubblicata!</b>';
$_lang["siteunavailable_page_title"] = 'Pagina sito non disponibile:';
$_lang["siteunavailable_title"] = 'Messaggio sito non disponibile:';
$_lang["controller_namespace"] = 'Namespace del Controller';
$_lang["controller_namespace_message"] = 'Specificare il Namespace completo dal quale prendere i controllers, ad esempio: <b>EvolutionCMS\\Main\\Controllers\\</b>';
$_lang["update_repository"] = 'Percorso del repository Github';
$_lang["update_repository_message"] = 'Inserire il percorso del repository GitHub, as esempio: <b>evocms-community/evolution</b>';

$_lang["sort_alphabetically"] = 'Ordine alfabetico';
$_lang["sort_asc"] = 'Ascendente';
$_lang["sort_desc"] = 'Discendente';
$_lang["sort_menuindex"] = 'Ordina per indice menu';
$_lang["sort_tree"] = 'Ordina la struttura ad albero';
$_lang['sort_updating'] = 'Aggiornamento ...';
$_lang['sort_updated'] = 'Aggiornato';
$_lang['sort_nochildren'] = 'La cartella superiore non contiene documenti';
$_lang["sort_elements_msg"] = 'Trascinare per riordinare gli elementi della lista.';

$_lang["source"] = 'Sorgente';
$_lang["stay"] = 'Continua la modifica dopo il salvataggio';
$_lang["stay_new"] = 'Aggiungi un altro';
$_lang["submit"] = 'Invia';
$_lang["sys_alert"] = 'Avviso di sistema';
$_lang["sysinfo_activity_message"] = 'Risorse modificate di recente dagli utenti.';
$_lang["sysinfo_userid"] = 'Utente';
$_lang["system"] = 'Sistema';
$_lang["system_email_signup"] = 'Salve [+uid+]

qui ci sono le credenziali di autenticazione per il sistema di gestione dei contenuti di [+sname+] :

Username: [+uid+]
Password: [+pwd+]

Quando ti sarai autenticato nel sistema di gestione ([+surl+]), potrai cambiare la tua password.

Cordiali Saluti,
l\'amministratore del Sito';
$_lang["system_email_webreminder"] = 'Salve [+uid+]

Per attivare la tua password clicca sul link sottostante:

[+surl+]

In seguito potrai usare la seguente password per accedere:

Password:[+pwd+]

e non hai richiesto questa mail, ignorala.

Cordiali Saluti,
l\'amministratore del Sito';
$_lang["system_email_websignup"] = 'Salve [+uid+]

qui ci sono le credenziali di autenticazione per  [+sname+]:

Nome utente: [+uid+]
Password: [+pwd+]

Quando ti sarai autenticato in [+sname+] ([+surl+]), potrai cambiare la tua password.

Cordiali Saluti,
 l\'amministratore del Sito';
$_lang["table_hoverinfo"] = 'Portate il cursore sopra il nome di una tabella per vedere una breve descrizione della funzione della tabella (non tutte le tabelle hanno dei <i>commenti</i> impostati o tradotti).';
$_lang["table_prefix"] = 'Prefisso Tabella';
$_lang["tag"] = 'Tag';

$_lang["to"] = 'a';
$_lang["toggle_fullscreen"] = 'Attiva/Disattiva schermo intero';
$_lang["tools"] = 'Strumenti';
$_lang["top_howmany_message"] = 'Nel visualizzare i resoconti, quanto deve essere grande la lista \'I primi ...\'?';
$_lang["top_howmany_title"] = 'Quanti \'I primi\':';
$_lang["total"] = 'totale';
$_lang["track_visitors_message"] = 'Seleziona per mostrare le risorse secondarie nell\'albero del documento';
$_lang["track_visitors_title"] = 'Mostra le risorse secondarie';
$_lang["tree_page_click"] = 'Azione del click su una pagina:';
$_lang["tree_page_click_message"] = 'Cosa succede facendo click su una pagina nell\'albero del sito.';
$_lang["use_breadcrumbs"] = 'Mostra navigazione';
$_lang["use_breadcrumbs_message"] = 'Mostra la navigazione quando crei o modifichi una risorsa';
$_lang["tree_show_protected"] = 'Mostra pagine protette:';
$_lang["tree_show_protected_message"] = 'Se è selezionato \'No\' le pagine protette (e tutte le pagine figlie) non appariranno nell\'albero delle Risorse. \'No\' è l\'impostazione di default di EVO.';
$_lang["truncate_table"] = 'Cliccate qui per troncare questa tabella';
$_lang["type"] = 'Tipo';
$_lang["udperms_allowroot_message"] = 'Volete permettere agli utenti di creare nuove Risorse e cartelle nella root del sito? ';
$_lang["udperms_allowroot_title"] = 'Permetti creazione nella root:';
$_lang["udperms_message"] = 'I permessi di accesso vi consentono di specificare quali pagine possono essere modificate dagli utenti. Avete bisogno di assegnare gli utenti ai Gruppi di Utenti, le Risorse ai Gruppi di Risorse, ed infine dovrete specificare quali Gruppi di Utenti hanno accesso a quali Gruppi di Risorse. Appena saranno attivati i permessi, solo gli amministratori potranno modificare qualsiasi Risorsa.';
$_lang["udperms_title"] = 'Usa i permessi di accesso:';
$_lang["unable_set_link"] = 'Impossibile impostare il collegamento!';
$_lang["unable_set_parent"] = 'Impossibile impostare una nuova Risorsa genitore!';
$_lang["unauthorizedpage_message"] = 'Digitate l\'ID della Risorsa che volete mostrare agli utenti che hanno richiesto una Risorsa protetta o non autorizzata. <b>NOTA: assicuratevi che la Risorsa indicata esista, sia pubblicata e accessibile all\'utente!</b>';
$_lang["unauthorizedpage_title"] = 'Pagina non autorizzata:';
$_lang["unblock_message"] = 'L\'utente non sarà più bloccato dopo aver salvato i suoi dati.';
$_lang["undelete_resource"] = 'Ripristina Risorsa';
$_lang["unpublish_date"] = 'Data di ritiro dalla pubblicazione';
$_lang["unpublish_events"] = 'Eventi di ritiro dalla pubblicazione';
$_lang["unpublish_resource"] = 'Ritira Risorsa';
$_lang["untitled_resource"] = 'Risorsa senza titolo';
$_lang["untitled_weblink"] = 'Link Web senza titolo';
$_lang["update_params"] = 'Aggiorna parametri di visualizzazione';
$_lang["update_settings_from_language"] = 'Sostituire con:';

$_lang["upload_maxsize_message"] = 'Qui potete inserire le dimensioni massime dei file che si possono caricare tramite il sistema di gestione file. Le dimensioni  devo essere impostate in bytes. <b>NOTA: File troppo grandi impiegano molto tempo a caricare!</b>';
$_lang["upload_maxsize_title"] = 'Massima dimensione caricamento:';
$_lang["uploadable_files_message"] = 'Qui potete inserire la lista dei tipi di file che si possono caricare nella cartella assets/files con il File Browser. Inserite le estensioni per i vari tipi di file separate da virgole.';
$_lang["uploadable_files_title"] = 'Tipi di file caricabili:';
$_lang["uploadable_flash_message"] = 'Qui potete inserire la lista dei tipi di file che si possono caricare con il File Browser nella cartella \'assets/flash/\'. Inserite le estensioni per i tipi di file Flash separate da virgole.';
$_lang["uploadable_flash_title"] = 'Tipi di Flash caricabili:';
$_lang["uploadable_images_message"] = 'Qui potete inserire la lista dei tipi di file che si possono caricare con il File browser nella cartella \'assets/images/\'. Inserite le estensioni per i tipi di immagine separate da virgole.';
$_lang["uploadable_images_title"] = 'Tipi di immagini caricabili:';
$_lang["uploadable_media_message"] = 'Qui potete inserire una lista dei tipi di file che si possono caricare con il File Manager nella cartella \'assets/media/\'. Inserite le estensioni per i tipi di media separate da virgole.';
$_lang["uploadable_media_title"] = 'Tipi di media caricabili:';
$_lang["use_alias_path_message"] = 'Abilitando questa opzione verrà generato un percorso virtuale per la Risorsa. Ad esempio, se la Risorsa "figlio.html" sta dentro la Risorsa Cartella "genitore" il percorso completo sarà "/genitore/figlio.html".';
$_lang["use_alias_path_title"] = 'Usa percorso completo per l\'alias:';
$_lang["use_editor_message"] = 'Volete abilitare l\'editor rich text? Se ritenete più comodo scrivere direttamente in HTML, con questa impostazione potete disabilitarlo. Da notare che le impostazioni si applicano a tutte le Risorse e a tutti gli utenti!';
$_lang["use_editor_title"] = 'Abilita editor rich text:';
$_lang["use_global_tabs"] = 'Usa Global Tabs';

$_lang["valid_hostnames_message"] = 'Inserendo una lista di nomi di host consentiti per questa installazione di EVO è possibile prevenire che con un attacco XSS si possa falsificare l\'impostazione di sistema site_url. Può essere importante farlo per alcuni tipi di server condivisi o altri server direttamente accessibili da un indirizzo IP. Il primo nome di host della lista verà usato quando HTTP_HOST non corrisponde ad alcun nome di host valido.';
$_lang["valid_hostnames_title"] = 'Nomi di host consentiti:';
$_lang["validate_referer_message"] = 'Validare gli headers HTTP_REFERER per ridurre il rischio di essere vittime di un attacco CSRF (Cross Site Request Forgery). Alcune configurazioni possono non essere in grado di gestire questa opzione se il server non invia gli headers HTTP_REFERER.';
$_lang["validate_referer_title"] = 'Validazione degli headers HTTP_REFERER:';
$_lang["value"] = 'Valore';
$_lang["version"] = 'Versione';
$_lang["view"] = 'Mostra';
$_lang["view_child_resources_in_container"] = 'Vedi le Risorse contenute';
$_lang["view_log"] = 'Vedi log';
$_lang["view_logging"] = 'Log del Manager';
$_lang["view_sysinfo"] = 'Informazioni di Sistema';
$_lang["warning"] = 'Attenzione!';
$_lang["warning_not_saved"] = 'Le modifiche che avete effettuato non sono state ancora salvate. Potete scegliere di rimanere sulla pagina corrente per salvarle (\'Annulla\'), oppure potete abbandonarla perdendo ogni modifica che avete fatto (\'OK\').';
$_lang["warning_visibility"] = 'Avvisi di configurazione visibili a:';
$_lang["warning_visibility_message"] = 'Controlla la visualizzazione degli avvisi mostrati nella pagina iniziale del Manager';
$_lang["web_access_permissions"] = 'Permessi di accesso Web';
$_lang["web_access_permissions_user_groups"] = 'Gruppi di Utenti Web';
$_lang["web_permissions"] = 'Permessi Web';
$_lang["web_user_management_msg"] = 'Qui potete selezionare l\'utente web da modificare. Gli utenti web sono gli utenti autorizzati ad accedere al sito.';
$_lang["web_user_management_title"] = 'Gestione Utenti Web';
$_lang["web_user_management_select_role"] = 'Tutti i ruoli';
$_lang["web_user_title"] = 'Crea/modifica Utenti Web';
$_lang["web_users"] = 'Utenti web';
$_lang["weblink"] = 'Link Web';
$_lang["webpwdreminder_message"] = 'Inserite il messaggio da inviare in mail, quando gli utenti chiedono una nuova password via email. IL sistema di gestione dei contenuti invierà loro una e-mail contenente la nuova password e le informazioni di attivazione. <br /><b>Nota:</b> I seguenti segnaposto saranno sostituiti dal sistema di gestione del contenuto quando invierà il messaggio: <br /><br />[+sname+] - Nome del sito, <br />[+saddr+] - Indirizzo email del sito, <br />[+surl+] - Url del sito, <br />[+uid+] - Login o id dell\'utente, <br />[+pwd+] - Password utente, <br />[+ufn+] - Nome completo dell\'utente. <br /><br /><b>Lasciate [+uid+] e [+pwd+] nella e-mail, altrimenti il nome utente e la password non verranno inviati!</b>';
$_lang["webpwdreminder_title"] = 'Email recupero dati autenticazione:';
$_lang["websignupemail_message"] = 'Qui potete impostare il messaggio e-mail contenente nome utente e password inviato agli utenti quando gli create un nuovo account.<br />Nota:</b> I seguenti Placeholders saranno sostituiti dal sistema di gestione dei contenuti quando invierà il messaggio: <br /><br />[+sname+] - Nome del sito, <br />[+saddr+] - Indirizzo email del sito, <br />[+surl+] - Url del sito, <br />[+uid+] - Login o id dell\'utente, <br />[+pwd+] - Password utente, <br />[+ufn+] - Nome completo dell\'utente. <br /><br /><b>Lasciate [+uid+] e [+pwd+] nella e-mail, altrimenti il nome utente e la password non verranno inviati!</b>';
$_lang["websignupemail_title"] = 'Indirizzo E-mail di registrazione:';
$_lang["allow_multiple_emails_title"] = 'Indirizzo email duplicato per l\'Utente Web';
$_lang["allow_multiple_emails_message"] = 'Consente agli Utenti Web di condividere lo stesso indirizzo email, ad esempio quando un utente non ha un suo indirizzo email o tutti usano un solo indirizzo familiare.<br/>Nota: se si imposta questa opzione occorre tenerne conto nella registrazione o recupero della password.';
$_lang["welcome_title"] = 'Benvenuto nel sistema di gestione dei contenuti EVO';
$_lang["which_editor_message"] = 'Qui potete selezionare quale editor rich text preferite usare. Potete scaricare ed installare altri editor dalla sezione downloads del sito EVO ';
$_lang["which_editor_title"] = 'Editor da usare:';
$_lang["working"] = 'Sto elaborando...';
$_lang["wrap_lines"] = 'Manda le linee a capo automaticamente';
$_lang["xhtml_urls_message"] = 'Sostituisce la e commerciale (ampersand (&amp;)) negli indirizzi generati da  EVO con l\' entità HTML &<!-- -->amp;';
$_lang["xhtml_urls_title"] = 'URL XHTML:';
$_lang["yes"] = 'Si';
$_lang["you_got_mail"] = 'Avete una mail';

$_lang["yourinfo_message"] = 'Questa sezione mostra alcune vostre informazioni:';
$_lang["yourinfo_previous_login"] = 'La vostra ultima connessione al sistema:';
$_lang["yourinfo_role"] = 'Il vostro Ruolo è:';
$_lang["yourinfo_title"] = 'Le vostre informazioni';
$_lang["yourinfo_total_logins"] = 'Numero totale di connessioni:';
$_lang["yourinfo_username"] = 'Siete autenticati come:';

$_lang["a17_error_reporting_title"] = 'Livello di dettaglio degli errori PHP:';
$_lang["a17_error_reporting_msg"] = 'Imposta il livello di rilevamento degli errori PHP.';
$_lang["a17_error_reporting_opt0"] = 'Ignora tutti gli errori';
$_lang["a17_error_reporting_opt1"] = 'Ignora gli errori di basso livello (<a href="https://www.google.com/search?q=E_DEPRECATED+E_STRICT" target="_blank">E_ALL & ~E_NOTICE & ~E_DEPRECATED & ~E_STRICT</a>)';
$_lang["a17_error_reporting_opt2"] = 'Rileva tutti gli errori eccetto E_NOTICE and E_USER_DEPRECATED';
$_lang["a17_error_reporting_opt99"] = 'Rileva tutti gli errori eccetto E_USER_DEPRECATED';
$_lang["a17_error_reporting_opt199"] = 'Rileva tutti gli errori';

$_lang["pwd_hash_algo_title"] = 'Algoritmo di hash:';
$_lang["pwd_hash_algo_message"] = 'Password algoritmo di hash.';

$_lang["enable_bindings_title"] = 'Abilita comandi @Bindings:';
$_lang["enable_bindings_message"] = 'Impedisce l\'esecuzione di funzioni PHP attraverso Variabili di Template di tipo @Bindings. Utile se avete utenti del manager che non devono poter creare codice PHP, ma che possono creare o modificare le Variabili di Template. L\'output di qualsiasi Variabile di Template @Bindings risulta "@Bindings disabled".';
$_lang["enable_filter_title"] = 'Abilita filtri';
$_lang["enable_filter_message"] = 'I filtri consentono di manipolare il modo in cui viene mostrato un tag. Inoltre, consentono di modificare i valori dall\'interno template. Funzionalità analoghe a PHx.  <a href="https://github.com/modxcms/evolution/issues/623" target="ext_help">Maggiori info</a>'; // todo: change link to documentation
$_lang["enable_filter_phx_warning"] = 'Quando PHx è abilitato, i filtri sono disabilitati.';

$_lang["enable_at_syntax_title"] = 'Abilita &lt;@SYNTAX&gt;';
$_lang["enable_at_syntax_message"] = '&lt;@SYNTAX&gt;(atmark syntax) è una sintassi di template semplice e leggera. Questo è progettato per considerare la coesistenza con tag HTML e stringhe di contenuto.';

$_lang["bkmgr_alert_mkdir"] = 'Non è possibile creare un file nella cartella. Controlla i permessi di scrittura di [+snapshot_path+]';
$_lang["bkmgr_restore_msg"] = '<p>Tabelle del database che potrebbero essere recuperate dall\'SQL:</p>';
$_lang["bkmgr_restore_title"] = 'Ripristina';
$_lang["bkmgr_import_ok"] = 'Riristino SQL eseguito correttamente.';
$_lang["bkmgr_snapshot_ok"] = 'Lo snapshot è stato salvato con successo.';
$_lang["bkmgr_run_sql_file_label"] = 'Eseguire da file SQL';
$_lang["bkmgr_run_sql_direct_label"] = 'Eseguire direttamente le stringhe SQL';
$_lang["bkmgr_run_sql_submit"] = 'Eseguire ripristino';
$_lang["bkmgr_run_sql_result"] = 'Risultati';
$_lang["bkmgr_snapshot_title"] = 'Salvataggio e recupero snapshots';
$_lang["bkmgr_snapshot_msg"] = '<p>I contenuti del database vengono salvati e ripristinati da una directory del server.<br />Percorso del salvataggio : [+snapshot_path+] ($modx->config[\'snapshot_path\'])</p>';
$_lang["bkmgr_snapshot_submit"] = 'Aggiungi uno snapshot';
$_lang["bkmgr_snapshot_list_title"] = 'Lista degli snapshots';
$_lang["bkmgr_restore_submit"] = 'Ripristina questi dati';
$_lang["bkmgr_restore_confirm"] = 'Sei sicuro di voler ripristinare il backup\n[+filename+] ? ';
$_lang["bkmgr_snapshot_nothing"] = 'Nessuno snapshot disponibile';

$_lang["files.dynamic.php1"] = 'Nuovo file di testo';
$_lang["files.dynamic.php2"] = 'Questa cartella non può essere mostrata.';
$_lang["files.dynamic.php3"] = 'C\'è un problema con il nome del file';
$_lang["files.dynamic.php4"] = 'File di testo creato.';
$_lang["files.dynamic.php5"] = 'Il file non può essere duplicato.';
$_lang["files.dynamic.php6"] = 'il file o la directory non possono essere rinominati.';
$_lang["files_dynamic_new_folder_name"] = 'Inserire il nome della nuova directory:';
$_lang["files_dynamic_new_file_name"] = 'Inserire il nome del nuovo file:';
$_lang["not_readable_dir"] = 'Non posso accedere a questa cartella.';
$_lang["confirm_delete_dir"] = 'Sei sicuro di voler cancellare questa cartella?';
$_lang["confirm_delete_dir_recursive"] = 'Siete sicuri di voler cancellare questa directory?\n\nAnche tutti i file che contiene saranno cancellati.';

$_lang["make_folders_title"] = 'Terminare l\'URL del Container con slash (/)';
$_lang["make_folders_message"] = 'Aggiunge uno slash (/) all\'URL delle Risorse che sono impostate come cartelle quando si usano gli URL Semplici.';

$_lang["check_files_onlogin_title"] = 'Controllo dei files di sistema:';
$_lang["check_files_onlogin_message"] = 'Attivando questa opzione, i files di sistema più importanti saranno controllati e sarete avvisati nel caso siano stati modificati (ad es. in caso attacchi via script al sito web). Pur non essendo una garanzia infallibile, può essere utile per capire quando è stato compromesso un file di sistema EVO e/o tutto il sito web.';

$_lang["configcheck_sysfiles_mod"] = 'Sono stati modificati alcuni importanti file di sistema.';
$_lang["configcheck_sysfiles_mod_msg"] = 'È stato configurato EVO per controllare i file più importanti del  sistema da possibili attacchi al sito web. Questo avviso non significa necessariamente che il tuo sito è stato compromesso, tuttavia, è necessario esaminare i file controllati nell\'installazione (impostazione in Impostazioni di sistema -> Utente -> Controlla i file del sistema al login). Se i file sono inalterati o modificati dagli amministratori del sito. Ri-salvare le impostazioni per eliminare questo messaggio. Sono state trovate modifiche nei seguenti file ';

$_lang['email_method_title'] = 'Metodo di invio mail:';
$_lang['email_method_mail'] = 'Funzione mail() di PHP';
$_lang['email_method_smtp'] = 'Server SMTP';
$_lang['smtp_auth_title'] = 'SMTP-AUTH:';
$_lang['smtp_autotls_title'] = 'SMTPAutoTLS';
$_lang['smtp_host_title'] = 'Host SMTP:';
$_lang['smtp_secure_title'] = 'SMTP criptato';
$_lang['smtp_username_title'] = 'Utente SMTP:';
$_lang['smtp_password_title'] = 'Password SMTP:';
$_lang['smtp_port_title'] = 'Porta SMTP:';

$_lang["setting_resource_tree_node_name"] = 'Nome utilizzato nell\'albero delle Risorse:';
$_lang["setting_resource_tree_node_name_desc"] = 'Selezionare quale proprietà della Risorsa sarà mostrata nell\'albero come nome della Risorsa. Di default è pagetitle.';
$_lang["setting_resource_tree_node_name_desc_add"] = 'Nota: Dalla versione EVO 1.1 è possibile modificare il nome mostrato nell\'albero delle risorse. Questa impostazione viene utilizzata quando il nome visualizzato nell\'albero delle risorse è impostato a &quot;Default&quot;.';

$_lang["resource_opt_alvisibled"] = 'Usa l\'alias attuale nel percorso';
$_lang["resource_opt_alvisibled_help"] = 'L\'alias di questa risora è inserito nel percorso degli Url Semplici';
$_lang['resource_opt_is_published'] = 'Published';

$_lang["enable_cache_title"] = 'Cache delle risorse';
$_lang["disable_chunk_cache_title"] = 'Disabilita il caching dei Chunk';
$_lang["disable_snippet_cache_title"] = 'Disabilita il caching degli Snippet';
$_lang["disable_plugins_cache_title"] = 'Disabilita il caching dei Plugins';
$_lang["disabled_at_login"] = 'Disabilitato all\'accesso';

$_lang["cache_type_title"] = 'Tipologia della cache dei documenti:';
$_lang["cache_type_1"] = 'La cache si basa solo sull\'ID della Risorsa (standard)';
$_lang["cache_type_2"] = 'La cache si basa sull\'ID della risorsa e sui parametri $_GET';
$_lang["seostrict_title"] = 'Usa URL univoci:';
$_lang["seostrict_message"] = 'Forza l\'uso di URL SEO univoche per prevenire contenuti duplicati (se necessario)';

$_lang["alias_listing_title"] = 'Usa la cache AliasListing';
$_lang["alias_listing_message"] = 'La cache degli alias delle pagine deve essere disabilitata nei siti che hanno un elevato numero di risorse. Disabilitarla riduce l\'utilizzo di memoria nei siti con molte risorse.';
$_lang["alias_listing_disabled"] = 'Disabilitato';
$_lang["alias_listing_folders"] = 'Unicamente per le cartelle';
$_lang["alias_listing_enabled"] = 'Abilitato';

$_lang["settings_friendlyurls_alert"] = 'E\' necessario rinominare il file ht.access presente nella root dell\'installazione di EVO in .htaccess per poter utilizzare gli URL Semplici.';
$_lang["settings_friendlyurls_alert2"] = 'Dasto che EVO è installato in una sottodirectory è necessario modificare di conseguenza il file .htaccess.';

$_lang["mutate_settings.dynamic.php6"] = 'Invia una mail per gli errori EVO:';
$_lang["mutate_settings.dynamic.php7"] = 'Non notificare';
$_lang["mutate_settings.dynamic.php8"] = 'Verrà inviata una mail con la descrizione dell\'errore EVO a [(emailsender)] ([+emailsender+]). Si potranno vedere i dettagli dell\'errore dal Log Eventi.';

$_lang["error_no_privileges"] = "Non avete i diritti necessari per effettuare questa operazione!";
$_lang["error_no_optimise_tablename"] = "Impossibile trovare la tabella da ottimizzare!";
$_lang["error_no_truncate_tablename"] = "Impossibile trovare la tabella da troncare!";
$_lang["error_double_action"] = "E' stata inviata una doppia azione (GET e POST)!";
$_lang["error_no_id"] = "Nella richiesta manca l'ID del documento!";
$_lang["error_id_nan"] = "L'ID passato nella richiesta è NaN!";
$_lang["error_parent_deleted"] = "Errore in quanto la risorsa genitore è stata cancellata!";
$_lang["error_no_parent"] = "Impossibile trovare il nome del documento genitore!";
$_lang["error_many_results"] = "Sono stati trovati troppi risultati nel database!";
$_lang["error_no_results"] = "Sono stati trovati pochi risultati (o nessuno) nel database!";
$_lang["error_no_user_selected"] = "Non è stato selezionato l'utente a cui inviare questo messaggio!";
$_lang["error_no_group_selected"] = "Non è stato selezionato il gruppo a cui inviare questo messaggio!";
$_lang["error_movedocument1"] = "Il documento non può essere genitore di se stesso!";
$_lang["error_movedocument2"] = "Nella richiesta manca l'ID del documento!";
$_lang["error_movedocument3"] = "Nella richiesta non è stato indicato il nuovo genitore!";
$_lang["error_internet_connection"] = "Il server non è disponibile. Controlla la tua connessione Internet!";

$_lang["login_processor_unknown_user"] = "Username o password errati!";
$_lang["login_processor_wrong_password"] = "Username o password errati!";
$_lang["login_processor_many_failed_logins"] = "Accesso bloccato a causa di troppi tentativi falliti!";
$_lang["login_processor_verified"] = "E' richiesta l'autenticazione dell'utente!";
$_lang["login_processor_blocked1"] = "Impossibile accedere, l'accesso è stato bloccato!";
$_lang["login_processor_blocked2"] = "L'accesso è stato bloccato! Riprovare più tardi.";
$_lang["login_processor_blocked3"] = "Dopo una certa data sarai bloccato e non potrai più accedere!";
$_lang["login_processor_bad_code"] = "Codice di sicurezza errato! Riprovare!";
$_lang["login_processor_remotehost_ip"] = "In nome del tuo host non corrisponde al tuo indirizzo IP!";
$_lang["login_processor_remote_ip"] = "Non ti puoi collegare da questa località!";
$_lang["login_processor_date"] = "Non puoi accedere adesso. Prova in un altro momento.";
$_lang["login_processor_captcha_config"] = "Captcha non è configurato correttamente.";

$_lang["dp_dayNames"] = "['Domenica', 'Lunedì', 'Martedì', 'Mercoledì', 'Giovedì', 'Venerdì', 'Sabato'] ";
$_lang["dp_monthNames"] = "['Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno', 'Luglio', 'Agosto', 'Settembre', 'Ottobre', 'Novembre', 'Dicembre']";
$_lang["dp_startDay"] = "1";

$_lang["check_all"] = "Seleziona tutto";
$_lang["check_none"] = "Annulla selezione";
$_lang["check_toggle"] = "Inverti selezione";

$_lang["version_notices"] = "Novità in questa versione";

$_lang["em_button_shift"] = "(Shift-click del mouse per aprire più finestre)";

$_lang["reset_sysfiles_checksum_button"] = "Resetta Controllo";
$_lang["reset_sysfiles_checksum_alert"] = "Sei sicuro di voler resettare il controllo dei file di sistema?";

$_lang["file_browser_disabled_msg"] = "Il File Browser non è abilitato";
$_lang["which_browser_default_title"] = "Default File Browser";
$_lang["which_browser_default_msg"] = "Scegli il browser di file come default. Nelle Impostazioni utente è possibile scegliere un browser personalizzato per ogni utente, o lasciarlo impostato al &quot;default&quot;.";
$_lang["which_browser_title"] = "File Browser";
$_lang["which_browser_msg"] = "È possibile scegliere un browser di file personalizzato per ogni utente. Per utilizzare l'impostazione predefinita, lasciarlo su &quot;Default&quot;.";
$_lang["option_default"] = "Default";
$_lang["position"] = "Posizione";
$_lang["are_you_sure"] = "Sei sicuro?";

$_lang['evo_downloads_title'] = "Siti Web di EVO";
$_lang['help_translating_title'] = "Contribuisci alla traduzione di EVO";
$_lang['download'] = "Download";
$_lang['downloads'] = "Downloads";
$_lang["previous_releases"] = "Precedente Release ";
$_lang["extras"] = "Extras";

$_lang["display_locks"] = "Mostra Blocchi";
$_lang["role_display_locks"] = "Mostra Blocchi";
$_lang["session_timeout"] = "Timeout Sessione";
$_lang["session_timeout_msg"] = "EVO effettua il ping al server una volta ogni minuto per aggiornare il controllo di posta. Se l'ultimo ping supera questa impostazione, la sessione associata sarà considerata non valida e tutti i blocchi relativi saranno rimossi automaticamente. Inserisci il valore in minuti (> 2 minuti, di default 15 minuti).";
$_lang["unlock_element_id_warning"] = "Sei sicuro di voler sbloccare questo [+element_type+] (ID [+id+])?";
$_lang["lock_element_type_1"] = "Template";
$_lang["lock_element_type_2"] = "Template-Variable";
$_lang["lock_element_type_3"] = "Chunk";
$_lang["lock_element_type_4"] = "Snippet";
$_lang["lock_element_type_5"] = "Plugin";
$_lang["lock_element_type_6"] = "Modulo";
$_lang["lock_element_type_7"] = "Risorsa";
$_lang["lock_element_type_8"] = "Ruolo";
$_lang["lock_element_editing"] = "Stai modificando questo  [+element_type+] da\n[+lasthit_df+]";
$_lang["lock_element_locked_by"] = "Questo [+element_type+] è bloccato dall'\n[+username+] da  [+lasthit_df+]";

$_lang["minifyphp_incache_title"] = 'Minimizza il codice php nella cache';
$_lang["minifyphp_incache_message"] = 'Minimizza il codice php (snippets e plugins) e salvalo nel file di cache, ref:<a href="https://github.com/modxcms/evolution/issues/938" target="_blank">#938</a>';

$_lang["logout_reminder_msg"] = "Promemoria: Sembra che il [+date+] ti sei dimenticato di effettuare il  logout. Si prega di prestare attenzione in futuro nel fare logout quando si ha finito di lavorare.";

$_lang["allow_eval_title"] = "Utilizza Eval per eseguire il codice PHP nelle chiamate snippet";
$_lang["allow_eval_msg"] = "Per gli sviluppatori : Si prega di utilizzare \$modx-&gt;safeEval().";
$_lang["allow_eval_with_scan"] = "Esegui solo funzioni consentite";
$_lang["allow_eval_with_scan_at_post"] = "Esegui tutto, eccetto in caso di POST, dove esegui solo funzioni consentite";
$_lang["allow_eval_everytime_eval"] = "Illimitato (utilizzare solo per il debug)";
$_lang["allow_eval_dont_eval"] = "Non consentire tutte le funzioni";

$_lang["safe_functions_at_eval_title"] = "Funzioni in cui consentire eval";
$_lang["safe_functions_at_eval_msg"] = "Elenco separato da virgole";

$_lang["multiple_sessions_msg"] = "Informazione: Rilevate contemporaneamente sessioni multiple attive (totale [+total+]) per l'utente <b>[+username+]</b>.";
$_lang["iconv_not_available"] = "È importante installare / abilitare l'estensione iconv..  Contatta il tuo fornitore di l'host, se non sai come abilitarlo.";

$_lang["cm_create_new_category"] = "Crea una nuova categoria";
$_lang["cm_category_name"] = "Nome categoria";
$_lang["cm_category_position"] = "Posizione categoria";
$_lang["cm_no_x_assigned"] = "No %s assegnati";
$_lang["cm_save_categorization"] = "Salva categorizzazione";
$_lang["cm_update_categories"] = "Aggiorna categorie";
$_lang["cm_assigned_elements"] = "Assegna elementi";
$_lang["cm_edit_name"] = "Modifica nome";
$_lang["cm_mark_for_deletion"] = "Segna per l'eliminazione";
$_lang["cm_delete_now"] = "Elimina immediatamente";
$_lang["cm_delete_element_x_now"] = "Elimina &quot;%s&quot; immediatamente";
$_lang["cm_select_element_group"] = "Seleziona un gruppo di elementi";
$_lang["cm_global_messages"] = "Messaggi globali";
$_lang["cm_add_new_category"] = "Aggiungi categoria";
$_lang["cm_edit_categories"] = "Modifica categoria";
$_lang["cm_sort_categories"] = "Ordina categorie";
$_lang["cm_categorize_elements"] = "Categorizza elementi";
$_lang["cm_translation"] = "Traduzione";
$_lang["cm_translations"] = "Traduzioni";
$_lang["cm_categorize_x"] = "Categorizza <span class=\"highlight\">%s</span>";
$_lang["cm_unknown_error"] = "Qualcosa è andato storto.";
$_lang["cm_x_assigned_to_category_y"] = "<span class=\"highlight\">%s(%s)</span> è stato assegnato alla categoria <span class=\"highlight\">%s(%s)</span>";
$_lang["cm_no_categorization"] = "Nessuna categorizzazione effettuata";
$_lang["cm_no_changes"] = "Nessuna modifica effettuata.";
$_lang["cm_x_changes_made"] = "<span class=\"highlight\">%s</span> modifiche effettuate";
$_lang["cm_enter_name_for_category"] = "Inserisci un nome per la categoria";
$_lang["cm_category_x_exists"] = "La categoria <span class=\"highlight\">%s</span> già esiste .";
$_lang["cm_category_x_saved_at_position_y"] = "La nuova categoria  <span class=\"highlight\">%s</span> è stata salvata nella posizione <span class=\"highlight\">%s</span>.";
$_lang["cm_category_x_moved_to_position_y"] = "Categoria <span class=\"highlight\">%s</span> spostata alla posizione <span class=\"highlight\">%s</span>";
$_lang["cm_category_x_deleted"] = "La categoria <span class=\"highlight\">%s</span> è stata cancellata";
$_lang["cm_category_x_renamed_to_y"] = "La categoria  <span class=\"highlight\">%s</span>è stata rinominata <span class=\"highlight\">%s</span>";
$_lang["cm_translation_for_x_empty"] = "La traduzione per <span class=\"highlight\">%s</span> è assente";
$_lang["cm_translation_for_x_to_y_success"] = "La traduzione di <span class=\"highlight\">%s</span> a<span class=\"highlight\">%s</span> è stata salvata";
$_lang["cm_save_new_sorting"] = "Salva nuovo ordine";
$_lang["cm_translate_phrases"] = "Traduci frase";
$_lang["cm_translate_module_phrases"] = "Traduci frasi del modulo";
$_lang["cm_native_phrase"] = "Frase nativa";

$_lang["btn_view_options"] = 'Opzioni di visualizzazione';
$_lang["view_options_msg"] = 'La visualizzazione e l\'elenco degli elementi possono essere personalizzati tramite il pulsante &quot;Opzioni di visualizzazione&quot;. Le impostazioni vengono salvate e ripristinate per ogni browser usando il localStorage di HTML5.';
$_lang["viewopts_title"] = 'Opzioni di visualizzazione';
$_lang["viewopts_cb_buttons"] = 'Bottoni';
$_lang["viewopts_cb_descriptions"] = 'Descrizioni';
$_lang["viewopts_cb_icons"] = 'Icone';
$_lang["viewopts_radio_list"] = 'Lista';
$_lang["viewopts_radio_inline"] = 'Inline';
$_lang["viewopts_radio_flex"] = 'Flex';
$_lang["viewopts_fontsize"] = 'Dimensione font';
$_lang["viewopts_cb_alltabs"] = 'Tutti i Tab';

$_lang['email_sender_method'] = 'Il mittente del messaggio';
$_lang['auto'] = 'Riconoscimento automatico';
$_lang['use_emailsender'] = 'Usa il valore [(emailsender)]';
$_lang['email_sender_method_message'] = 'Il mittente del messaggio. In genere verrà trasformato in un header Return-Path dal destinatario ed è l\'indirizzo al quale verranno notificati gli indirizzi errati. Attivare Il riconoscimento automatico andrà bene nella maggior parte dei casi.';

$_lang['login_form_position_title'] = 'Posizione del form di login';
$_lang['login_form_position_left'] = 'sinistra';
$_lang['login_form_position_center'] = 'centro';
$_lang['login_form_position_right'] = 'destra';
$_lang["login_form_style"] = 'Stile del form di login:';
$_lang["login_form_style_dark"] = 'scuro';
$_lang["login_form_style_light"] = 'chiaro';
$_lang['login_logo_title'] = 'Immagine del logo per la pagina di login';
$_lang['login_logo_message'] = 'Formato consigliato del logo: dimensione 360 px, tipo .png';
$_lang['login_bg_title'] = 'Immagine di sfondo per la pagina di login';
$_lang['login_bg_message'] = 'Ampiezza consigliata per l\'immagine di sfondo della pagina di login: 1920px';

$_lang['manager_menu_position_title'] = 'Posizione del menu principale';
$_lang['manager_menu_position_top'] = 'alto';
$_lang['manager_menu_position_left'] = 'sinistra';

$_lang['invalid_event_response'] = 'L\'evento %s ha un output errato';

$_lang['chunk_processor'] = 'Classe di elaborazione dei chunk';

$_lang["permission_title"] = 'Crea/Modifica permesso';
$_lang["groups_permission_title"] = 'Crea/Modifica categoria';
$_lang["lang_key_desc"] = 'ID della lingua dall\'array $_lang';
$_lang["key_desc"] = 'ID del permesso controllato';

$_lang["setting_from_file"] = '<strong class="text-danger">Il valore del parametro è definito in core/custom/config/cms/settings</strong>';
$_lang['disable'] = 'Disabilita';
$_lang['enable'] = 'Abilita';

return $_lang;
