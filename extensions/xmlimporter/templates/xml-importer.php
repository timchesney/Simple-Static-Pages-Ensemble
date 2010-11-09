<?php
	
	require_once(EXTENSIONS . '/xmlimporter/lib/class.xmlimporter.php');
	
	class XMLImporter%s extends XMLImporter {
		public function __construct(&$parent) {
			parent::__construct($parent);
		}
		
		public function about() {
			return array(
				'name'			=> %s,
				'author'		=> array(
					'name'			=> %s,
					'website'		=> %s,
					'email'			=> %s
				),
				'description'	=> %s,
				'file'			=> __FILE__,
				'created'		=> %s,
				'updated'		=> %s
			);	
		}
		
		public function options() {
			return array(
				'can-update'		=> %s,
				'fields'			=> %s,
				'included-elements'	=> %s,
				'namespaces'		=> %s,
				'source'			=> %s,
				'section'			=> %s,
				'unique-field'		=> %s
			);
		}
		
		public function allowEditorToParse() {
			return true;
		}
	}
	
?>
