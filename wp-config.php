<?php
define( 'WP_CACHE', true );
/**
 * Baskonfiguration för WordPress.
 *
 * Denna fil används av wp-config.php-genereringsskript under installationen.
 * Du behöver inte använda webbplatsens installationsrutin, utan kan kopiera
 * denna fil direkt till "wp-config.php" och fylla i alla värden.
 *
 * Denna fil innehåller följande konfigurationer:
 *
 * * Inställningar för databas
 * * Säkerhetsnycklar
 * * Tabellprefix för databas
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Databasinställningar - åtkomstuppgifter för databasen får du från ditt webbhotell ** //
/** Namnet på databasen du vill använda för WordPress */
define( 'DB_NAME', 'webshop_grupp1' );

/** Databasens användarnamn */
define( 'DB_USER', 'admin-webshop' );

/** Databasens lösenord */
define( 'DB_PASSWORD', '12345' );

/** Databasserver */
define( 'DB_HOST', 'localhost' );

/** Teckenkodning för tabellerna i databasen. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Kollationeringstyp för databasen. Ändra inte om du är osäker. */
define('DB_COLLATE', '');

/**#@+
 * Unika autentiseringsnycklar och salter.
 *
 * Ändra dessa till unika fraser!
 * Du kan generera nycklar med {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Du kan när som helst ändra dessa nycklar för att göra aktiva cookies obrukbara, vilket tvingar alla användare att logga in på nytt.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Zbf@cFs&ib_vb_0tq6QW25cggL9u<dNg?u~7s$BA4NvB6gfI1fU+S7LRsu:R6ACC' );
define( 'SECURE_AUTH_KEY',  '!%32.?@8JYY5b$+UOg=4a*J7gc+h~@mwPCf1&8)7-:4.L{^#lHFD^>VJ@Kr>>9B*' );
define( 'LOGGED_IN_KEY',    'VDSB#~zv]$jRdh[,$=59xl<v;.4K0fwXIi]<FL/Tyt|_@9B(:?_~WI/{t&?l[yf$' );
define( 'NONCE_KEY',        'k1UJ3$nEjn:NedhNR(fenlgHW~DPBbmVHSXucnH3aT*Z,b.!N:JjuOr!=NQljf/.' );
define( 'AUTH_SALT',        '0$f3i%7+boXMya{f+y*Os^<0cujo4[hES3OOYufjVU[&#n}9A-<Ib6ci<N*pWFl$' );
define( 'SECURE_AUTH_SALT', '.k]94OZyBI;Y5jM[6`wQNcofT(rW,+-7?fs.yauz?dhnZ9(z 0xk/,Ep?gwA_Oy0' );
define( 'LOGGED_IN_SALT',   'E-j_|t.k7|TU/k6j]6*e?)o~?u>,emTl0Y<t#)oOG?S_OT-xFhgY! N,7Ypgc9l&' );
define( 'NONCE_SALT',       '$UL 3n/H*HSdaBBxHP_7PSs.78C(#{Qi]h} EKo+m|sn}22P !Fj5K~(Yrem#1!B' );

/**#@-*/

/**
 * Tabellprefix för WordPress-databasen.
 *
 * Du kan ha flera installationer i samma databas om du ger varje installation ett unikt
 * prefix. Använd endast siffror, bokstäver och understreck!
 */
$table_prefix = 'wp_';

/** 
 * För utvecklare: WordPress felsökningsläge. 
 * 
 * Ändra detta till true för att aktivera meddelanden under utveckling. 
 * Det rekommenderas att man som tilläggsskapare och temaskapare använder WP_DEBUG 
 * i sin utvecklingsmiljö. 
 *
 * För information om andra konstanter som kan användas för felsökning, 
 * se dokumentationen. 
 * 
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */ 
define('WP_DEBUG', false);
/* Lägg in eventuella anpassade värden mellan denna rad och raden med "sluta redigera här". */




/* Det var allt, sluta redigera här och börja publicera! */

/** Absolut sökväg till WordPress-katalogen. */
if ( !defined('ABSPATH') )
	define('ABSPATH', __DIR__ . '/');

/** Anger WordPress-värden och inkluderade filer. */
require_once(ABSPATH . 'wp-settings.php');