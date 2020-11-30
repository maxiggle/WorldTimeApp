import 'package:flutter/material.dart';
import '../services/worldtime.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'London.png'),
    WorldTime(url: 'Africa/Abidjan', location: 'Abidjan'),
    WorldTime(url: 'Africa/Accra', location: 'Accra', flag: 'ghana.png'),
    WorldTime(url: 'Africa/Algeria', location: 'Algiers', flag: 'Algeria.png'),
    WorldTime(url: 'Africa/Guinea ', location: 'Bassau', flag: 'Guinea'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'Egypt.png'),
    WorldTime(
        url: 'Africa/Casablanca',
        location: 'Casablanca',
        flag: 'Casablanca.png'),
    WorldTime(url: 'Africa/Ceuta ', location: 'Ceuta', flag: 'Ceuta.png'),
    WorldTime(url: 'Africa/El_Aaiun', location: 'El_Aaiun', flag: 'El_Aaiun'),
    WorldTime(
        url: 'Africa/Johannesburg',
        location: 'Johannesburg',
        flag: 'Johannesburg.png'),
    WorldTime(url: 'Africa/Juba', location: 'Juba', flag: 'Juba.png'),
    WorldTime(
        url: 'Africa/Khartoum', location: 'Khartoum', flag: 'Khartoum.png'),
    WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: 'Lagos.png'),
    WorldTime(url: 'Africa/Maputo', location: 'Maputo', flag: 'Maputo.png'),
    WorldTime(
        url: 'Africa/Monrovia', location: 'Monrovia', flag: 'Monrovia.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'Nairobi.png'),
    WorldTime(
        url: 'Africa/Ndjamena', location: 'Ndjamena', flag: 'Ndjamena.png'),
    WorldTime(
        url: 'Africa/Sao_Tome', location: 'Sao_Tome', flag: 'Sao_Tome.png'),
    WorldTime(url: 'Africa/Tripoli', location: 'Tripoli', flag: 'Tripoli.png'),
    WorldTime(url: 'Africa/Tunis', location: 'Tunis', flag: 'Tunis.png'),
    WorldTime(
        url: 'Africa/Windhoek', location: 'Windhoek', flag: 'Windhoek.png'),
    WorldTime(url: 'America/Adak', location: 'Adak', flag: 'Adak.png'),
    WorldTime(
        url: 'America/Anchorage', location: 'Anchorage', flag: 'Anchorage.png'),
    WorldTime(url: 'America/Araguaina', location: 'Araguaina', flag: ''),
    WorldTime(
        url: 'America/Argentina/Buenos_Aires',
        location: 'Buenos_Aires',
        flag: 'Buenos_Aires.png'),
    WorldTime(
        url: 'America/Argentina/Catamarca ',
        location: 'Catamarca',
        flag: 'Catamarca.png'),
    WorldTime(
        url: 'America/Argentina/Cordoba ',
        location: 'Cordoba',
        flag: 'Cordoba.png'),
    WorldTime(
        url: 'America/Argentina/Jujuy', location: 'Jujuy', flag: 'Jujuy.png'),
    WorldTime(
        url: 'America/Argentina/La_Rioja',
        location: 'La_Rioja',
        flag: 'La_Rioja.png'),
    WorldTime(
        url: 'America/Argentina/Mendoza',
        location: 'Mendoza',
        flag: 'Mendoza.png'),
    WorldTime(
        url: 'America/Argentina/Rio_Gallegos',
        location: 'Rio_Gallegos',
        flag: 'Rio_Gallegos'),
    WorldTime(
        url: 'America/Argentina/Salta ', location: 'Salta', flag: 'Salta.png'),
    WorldTime(
        url: 'America/Argentina/San_Juan',
        location: 'San_Juan',
        flag: 'San_Juan.png'),
    WorldTime(
        url: 'America/Argentina/San_Luis',
        location: 'San_Luis',
        flag: 'San_Luis.png'),
    WorldTime(
        url: 'America/Argentina/Tucuman',
        location: 'Tucuman',
        flag: 'Tucuman.png'),
    WorldTime(
        url: 'America/Argentina/Ushuaia',
        location: 'Ushuaia',
        flag: 'Ushuaia.png'),
    WorldTime(
        url: 'America/Atikokan', location: 'Atikokan', flag: 'Atikokan.png'),
    WorldTime(url: 'America/Bahia ', location: 'Bahia', flag: 'Bahia.png'),
    WorldTime(
        url: 'America/Bahia_Banderas',
        location: 'Bahia_Banderas',
        flag: 'Bahia_Banderas.png'),
    WorldTime(
        url: 'America/Barbados', location: 'Barbados', flag: 'Barbados.png'),
    WorldTime(url: 'America/Belem', location: 'Belem', flag: 'Belem.png'),
    WorldTime(url: 'America/Belize ', location: 'Belize', flag: 'Belize.png'),
    WorldTime(
        url: 'America/Blanc-Sablon',
        location: 'Blanc-Sablon',
        flag: 'Blanc-Sablon.png'),
    WorldTime(
        url: 'America/Boa_Vista ',
        location: 'Boa_Vista',
        flag: 'Boa_Vista.png'),
    WorldTime(
        url: 'America/Bogota', location: 'Boa_Vista', flag: 'Boa_Vista.png'),
    WorldTime(url: 'America/Boise', location: 'Boise', flag: 'Boise.png'),
    WorldTime(
        url: 'America/Cambridge_Bay',
        location: 'Cambridge_Bay',
        flag: 'Cambridge_Bay.png'),
    WorldTime(
        url: 'America/Campo_Grande ',
        location: 'Campo_Grande',
        flag: 'Campo_Grande.png'),
    WorldTime(url: 'America/Cancun', location: 'Cancun', flag: 'Cancun.png'),
    WorldTime(url: 'America/Caracas', location: 'Caracas', flag: 'Caracas.png'),
    WorldTime(url: 'America/Cayenne', location: 'Cayenne', flag: 'Cayenne.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'Chicago.png'),
    WorldTime(
        url: 'America/Chihuahua', location: 'Chihuahua', flag: 'Chihuahua.png'),
    WorldTime(
        url: 'America/Costa_Rica',
        location: 'Costa_Rica',
        flag: 'Costa_Rica.png'),
    WorldTime(url: 'America/Creston', location: 'Creston', flag: 'Creston.png'),
    WorldTime(url: 'America/Cuiaba', location: 'Cuiaba', flag: 'Cuiaba.png'),
    WorldTime(url: 'America/Curacao', location: 'Curacao', flag: 'Curacao.png'),
    WorldTime(
        url: 'America/Danmarkshavn',
        location: 'Danmarkshavn',
        flag: 'Danmarkshavn.png'),
    WorldTime(url: 'America/Dawson', location: 'Dawson', flag: 'Dawson.png'),
    WorldTime(
        url: 'America/Dawson_Creek',
        location: 'Dawson_Creek',
        flag: 'Dawson_Creek.png'),
    WorldTime(url: 'America/Denver', location: 'Denver', flag: 'Denver.png'),
    WorldTime(url: 'America/Detroit', location: 'Detroit', flag: 'Detroit.png'),
    WorldTime(
        url: 'America/Edmonton', location: 'Edmonton', flag: 'Edmonton.png'),
    WorldTime(
        url: 'America/Eirunepe', location: 'Eirunepe', flag: 'Eirunepe.png'),
    WorldTime(
        url: 'America/El_Salvador',
        location: 'El_Salvador',
        flag: 'El_Salvador.png'),
    WorldTime(
        url: 'America/Fort_Nelson',
        location: 'Fort_Nelson',
        flag: 'Fort_Nelson.png'),
    WorldTime(
        url: 'America/Fortaleza', location: 'Fortaleza', flag: 'Fortaleza.png'),
    WorldTime(
        url: 'America/Glace_Bay', location: 'Glace_Bay', flag: 'Glace_Bay.png'),
    WorldTime(
        url: 'America/Grand_Turk',
        location: 'Grand_Turk',
        flag: 'Grand_Turk.png'),
    WorldTime(
        url: 'America/Guatemala', location: 'Guatemala', flag: 'Guatemala.png'),
    WorldTime(
        url: 'America/Guayaquil', location: 'Guayaquil', flag: 'Guayaquil.png'),
    WorldTime(url: 'America/Guyana', location: 'Guyana', flag: 'Guyana.png'),
    WorldTime(url: 'America/Halifax', location: 'Halifax', flag: 'Halifax.png'),
    WorldTime(url: 'America/Havana', location: 'Havana', flag: 'Havana.png'),
    WorldTime(
        url: 'America/Hermosillo',
        location: 'Hermosillo',
        flag: 'Hermosillo.png'),
    WorldTime(
        url: 'America/Indiana/Indianapolis',
        location: 'Indianapolis',
        flag: 'Indianapolis.png'),
    WorldTime(url: 'America/Indiana/Knox', location: 'Knox', flag: 'Knox.png'),
    WorldTime(
        url: 'America/Indiana/Marengo',
        location: 'Marengo',
        flag: 'Marengo.png'),
    WorldTime(
        url: 'Europe/LondonAmerica/Indiana/Petersburg',
        location: 'Petersburg',
        flag: 'Petersburg.png'),
    WorldTime(
        url: 'America/Indiana/Tell_City',
        location: 'Tell_City',
        flag: 'Tell_City.png'),
    WorldTime(
        url: 'Europe/LondonAmerica/Indiana/Vevay',
        location: 'Vevay',
        flag: 'Vevay.png'),
    WorldTime(
        url: 'America/Indiana/Vincennes',
        location: 'Vincennes',
        flag: 'Vincennes.png'),
    WorldTime(
        url: 'America/Indiana/Winamac',
        location: 'Winamac',
        flag: 'Winamac.png'),
    WorldTime(url: 'America/Inuvik ', location: 'Inuvik', flag: 'Inuvik.png'),
    WorldTime(url: 'America/Iqaluit', location: 'Iqaluit', flag: 'Iqaluit.png'),
    WorldTime(url: 'America/Jamaica', location: 'Jamaica', flag: 'Jamaica.png'),
    WorldTime(
        url: 'Europe/LondonAmerica/Juneau',
        location: 'Juneau',
        flag: 'Juneau.png'),
    WorldTime(
        url: 'America/Kentucky/Louisville',
        location: 'Louisville',
        flag: 'Louisville'),
    WorldTime(
        url: 'Europe/America/Kentucky/Monticello',
        location: 'Monticello',
        flag: 'Monticello.png'),
    WorldTime(url: 'America/La_Paz', location: 'La_Paz', flag: 'La_Paz.png'),
    WorldTime(url: 'America/Lima', location: 'Lima', flag: 'Lima.png'),
    WorldTime(
        url: 'America/Los_Angeles',
        location: 'Los_Angeles',
        flag: 'Los_Angeles.png'),
    WorldTime(url: 'America/Maceio ', location: 'Maceio', flag: 'Maceio.png'),
    WorldTime(url: 'America/Managua', location: 'Managua', flag: 'Managua.png'),
    WorldTime(url: 'America/Manaus', location: 'Manaus', flag: 'Manaus.png'),
    WorldTime(
        url: 'America/Matamoros', location: 'Matamoros', flag: 'Matamoros.png'),
    WorldTime(
        url: 'America/Mazatlan', location: 'Mazatlan', flag: 'Mazatlan.png'),
    WorldTime(
        url: 'America/Menominee', location: 'Menominee', flag: 'Menominee.png'),
    WorldTime(url: 'America/Merida', location: 'Merida', flag: 'Merida.png'),
    WorldTime(
        url: 'America/Metlakatla',
        location: 'Metlakatla',
        flag: 'Metlakatla.png'),
    WorldTime(
        url: 'America/Mexico_City',
        location: 'Mexico_City',
        flag: 'Mexico_City.png'),
    WorldTime(
        url: 'America/Miquelon', location: 'Miquelon', flag: 'Miquelon.png'),
    WorldTime(url: 'America/Moncton', location: 'Moncton', flag: 'Moncton.png'),
    WorldTime(
        url: 'America/Monterrey', location: 'Monterrey', flag: 'Monterrey.png'),
    WorldTime(
        url: 'America/Montevideo',
        location: 'Montevideo',
        flag: 'Montevideo.png'),
    WorldTime(url: 'America/Nassau', location: 'Nassau', flag: 'Nassau.png'),
    WorldTime(
        url: 'America/New_York', location: 'New_York', flag: 'New_York.png'),
    WorldTime(url: 'America/Nipigon', location: 'Nipigon', flag: 'Nipigon.png'),
    WorldTime(url: 'America/Nome', location: 'Nome', flag: 'Nome.png'),
    WorldTime(url: 'America/Noronha', location: 'Noronha', flag: 'Noronha.png'),
    WorldTime(
        url: 'America/North_Dakota/Beulah',
        location: 'Beulah',
        flag: 'Beulah.png'),
    WorldTime(
        url: 'America/North_Dakota/Center', location: 'Center.png', flag: ''),
    WorldTime(
        url: 'America/North_Dakota/New_Salem',
        location: 'New_Salem',
        flag: 'New_Salem.png'),
    WorldTime(url: 'America/Nuuk', location: 'Nuuk', flag: 'Nuuk.png'),
    WorldTime(url: 'America/Ojinaga', location: 'Ojinaga', flag: 'Ojinaga.png'),
    WorldTime(url: 'America/Panama', location: 'Panama', flag: 'Panama.png'),
    WorldTime(
        url: 'America/PangnEurope/Londonirtung ',
        location: 'Pangnirtung',
        flag: 'Londonirtung.png'),
    WorldTime(
        url: 'America/Paramaribo',
        location: 'Paramaribo',
        flag: 'Paramaribo.png'),
    WorldTime(url: 'America/Phoenix', location: 'Phoenix', flag: 'Phoenix.png'),
    WorldTime(
        url: 'America/Port-au-Prince ',
        location: 'Port-au-Prince',
        flag: 'Port-au-Prince.png'),
    WorldTime(
        url: 'America/Port_of_Spain',
        location: 'Port_of_Spain',
        flag: 'Port_of_Spain.png'),
    WorldTime(
        url: 'America/Porto_Velho',
        location: 'Porto_Velho',
        flag: 'Porto_Velho.png'),
    WorldTime(
        url: 'America/Puerto_Rico',
        location: 'Puerto_Rico',
        flag: 'Puerto_Rico.png'),
    WorldTime(
        url: 'America/Punta_Arenas',
        location: 'LPunta_Arenasondon',
        flag: 'LPunta_Arenasondon.png'),
    WorldTime(
        url: 'America/Rainy_River',
        location: 'Rainy_River',
        flag: 'Rainy_River.png'),
    WorldTime(
        url: 'America/Rankin_Inlet',
        location: 'Rankin_Inlet',
        flag: 'Rankin_Inlet.png'),
    WorldTime(url: 'America/Recife', location: 'Recife', flag: 'Recife.png'),
    WorldTime(url: 'America/Regina', location: 'Regina', flag: 'Regina.png'),
    WorldTime(
        url: 'America/Resolute', location: 'Resolute', flag: 'Resolute.png'),
    WorldTime(
        url: 'America/Rio_Branco',
        location: 'Rio_Branco',
        flag: 'Rio_Branco.png'),
    WorldTime(
        url: 'America/Santarem', location: 'Santarem', flag: 'Santarem.png'),
    WorldTime(
        url: 'America/Santiago', location: 'Santiago', flag: 'Santiago.png'),
    WorldTime(
        url: 'America/Santo_Domingo',
        location: 'Santo_Domingo',
        flag: 'Santo_Domingo.png'),
    WorldTime(
        url: 'America/Sao_Paulo', location: 'Sao_Paulo', flag: 'Sao_Paulo.png'),
    WorldTime(
        url: 'America/Scoresbysund',
        location: 'Scoresbysund',
        flag: 'Scoresbysund.png'),
    WorldTime(url: 'America/Sitka', location: 'Sitka', flag: 'Sitka.png'),
    WorldTime(
        url: 'America/St_Johns', location: 'St_Johns', flag: 'St_Johns.png'),
    WorldTime(
        url: 'America/Swift_Current',
        location: 'Swift_Current',
        flag: 'Swift_Current.png'),
    WorldTime(
        url: 'America/Tegucigalpa ',
        location: 'Tegucigalpa',
        flag: 'Tegucigalpa.png'),
    WorldTime(url: 'America/Thule', location: 'Thule', flag: 'Thule.png'),
    WorldTime(
        url: 'America/Thunder_Bay',
        location: 'Thunder_Bay',
        flag: 'Thunder_Bay,png'),
    WorldTime(url: 'America/Tijuana', location: 'Tijuana', flag: 'Tijuana.png'),
    WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'Toronto.png'),
    WorldTime(
        url: 'America/Vancouver', location: 'Vancouver', flag: 'Vancouver.png'),
    WorldTime(
        url: 'America/Whitehorse',
        location: 'Whitehorse',
        flag: 'Whitehorse.png'),
    WorldTime(
        url: 'America/Winnipeg', location: 'Winnipeg', flag: 'Winnipeg.png'),
    WorldTime(
        url: 'America/Yakutat ', location: 'Yakutat', flag: 'Yakutat.png'),
    WorldTime(
        url: 'America/Yellowknife',
        location: 'Yellowknife',
        flag: 'Yellowknife.png'),
    WorldTime(url: 'Antarctica/Casey', location: 'Casey', flag: 'Casey.png'),
    WorldTime(url: 'Antarctica/Davis', location: 'Davis', flag: 'Davis.png'),
    WorldTime(
        url: 'Antarctica/DumontDUrville',
        location: 'DumontDUrville',
        flag: 'DumontDUrville.png'),
    WorldTime(
        url: 'Antarctica/Macquarie',
        location: 'Macquarie',
        flag: 'Macquarie.png'),
    WorldTime(url: 'Antarctica/Mawson', location: 'Mawson', flag: 'Mawson.png'),
    WorldTime(url: 'Antarctica/Palmer', location: 'Palmer', flag: 'Palmer.png'),
    WorldTime(
        url: 'Antarctica/Rothera', location: 'Rothera', flag: 'Rothera.png'),
    WorldTime(url: 'Antarctica/Syowa', location: 'Syowa', flag: 'Syowa.png'),
    WorldTime(url: 'Antarctica/Troll ', location: 'Troll', flag: 'Troll.png'),
    WorldTime(
        url: 'Antarctica/Vostok ', location: 'Vostok', flag: 'Vostok.png'),
    WorldTime(url: 'Asia/Almaty', location: 'Almaty', flag: 'Almaty.png'),
    WorldTime(url: 'Asia/Amman', location: 'Amman', flag: 'Amman.png'),
    WorldTime(url: 'Asia/Anadyr ', location: 'Anadyr', flag: 'Anadyr.png'),
    WorldTime(url: 'Asia/Aqtau', location: 'Aqtau', flag: 'Aqtau.png'),
    WorldTime(url: 'Asia/Aqtobe', location: 'Aqtobe', flag: 'Aqtobe.png'),
    WorldTime(url: 'Asia/Ashgabat', location: 'Ashgabat', flag: 'Ashgabat.png'),
    WorldTime(url: 'Asia/Atyrau', location: 'Atyrau', flag: 'Atyrau.png'),
    WorldTime(url: 'Asia/Baghdad', location: 'Baghdad', flag: 'Baghdad.png'),
    WorldTime(url: 'Asia/Baku', location: 'Baku', flag: 'Baku.png'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'Bangkok.png'),
    WorldTime(url: 'Asia/Barnaul', location: 'Barnaul', flag: 'Barnaul.png'),
    WorldTime(url: 'Asia/Beirut', location: 'Beirut', flag: 'Beirut.png'),
    WorldTime(url: 'Asia/Bishkek', location: 'Bishkek', flag: 'Bishkek.png'),
    WorldTime(url: 'Asia/Brunei', location: 'Brunei', flag: 'Brunei.png'),
    WorldTime(url: 'Asia/Chita', location: 'Chita', flag: 'Chita.png'),
    WorldTime(
        url: 'Asia/Choibalsan', location: 'Choibalsan', flag: 'Choibalsan.png'),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'Colombo.png'),
    WorldTime(url: 'Asia/Damascus', location: 'Damascus', flag: 'Damascus.png'),
    WorldTime(url: 'Asia/Dhaka', location: 'Dhaka', flag: 'Dhaka.png'),
    WorldTime(url: 'Asia/Dili', location: 'Dili', flag: 'Dili.png'),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'Dubai.png'),
    WorldTime(url: 'Asia/Dushanbe', location: 'Dushanbe', flag: 'Dushanbe.png'),
    WorldTime(
        url: 'Asia/Famagusta', location: 'Famagusta', flag: 'Famagusta.png'),
    WorldTime(url: 'Asia/Gaza', location: 'Gaza', flag: 'Gaza.png'),
    WorldTime(url: 'LondonAsia/Hebron', location: 'Hebron', flag: 'Hebron.png'),
    WorldTime(
        url: 'Asia/Ho_Chi_Minh',
        location: 'Ho_Chi_Minh',
        flag: 'Ho_Chi_Minh.png'),
    WorldTime(
        url: 'Asia/Hong_Kong', location: 'Hong_Kong', flag: 'Hong_Kong.png'),
    WorldTime(url: 'Asia/Hovd', location: 'Hovd', flag: 'Hovd.png'),
    WorldTime(url: 'Asia/Irkutsk', location: 'Irkutsk', flag: 'Irkutsk.png'),
    WorldTime(url: 'Asia/Jakarta ', location: 'Jakarta', flag: 'Jakarta.png'),
    WorldTime(url: 'Asia/Jayapura', location: 'Jayapura', flag: 'Jayapura.png'),
    WorldTime(
        url: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'Jerusalem.png'),
    WorldTime(url: 'Asia/Kabul', location: 'Kabul', flag: 'Kabul.png'),
    WorldTime(
        url: 'Asia/Kamchatka', location: 'Kamchatka', flag: 'Kamchatka.png'),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'Karachi.png'),
    WorldTime(
        url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'Kathmandu.png'),
    WorldTime(url: 'Asia/Khandyga', location: 'Khandyga', flag: 'Khandyga.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'Kolkata.png'),
    WorldTime(
        url: 'Asia/Krasnoyarsk',
        location: 'Krasnoyarsk',
        flag: 'Krasnoyarsk.png'),
    WorldTime(
        url: 'Asia/Kuala_Lumpur',
        location: 'Kuala_Lumpur',
        flag: 'Kuala_Lumpur.png'),
    WorldTime(url: 'Asia/Kuching', location: 'Kuching', flag: 'Kuching.png'),
    WorldTime(url: 'Asia/Macau', location: 'Macau', flag: 'Macau.png'),
    WorldTime(url: 'Asia/Magadan', location: 'Magadan', flag: 'Magadan.png'),
    WorldTime(url: 'Asia/Makassar', location: 'Makassar', flag: 'Makassar.png'),
    WorldTime(url: 'Asia/Manila', location: 'Manila', flag: 'Manila.png'),
    WorldTime(url: 'Asia/Nicosia', location: 'Nicosia', flag: 'Nicosia.png'),
    WorldTime(
        url: 'Asia/Novokuznetsk',
        location: 'Novokuznetsk',
        flag: 'Novokuznetsk.png'),
    WorldTime(
        url: 'Asia/Novosibirsk',
        location: 'Novosibirsk',
        flag: 'Novosibirsk.png'),
    WorldTime(url: 'Asia/Omsk', location: 'Omsk', flag: 'Omsk.png'),
    WorldTime(url: 'Asia/Oral', location: 'Oral', flag: 'Oral.png'),
    WorldTime(
        url: 'Asia/Pontianak', location: 'Pontianak', flag: 'Pontianak.png'),
    WorldTime(
        url: 'Asia/Pyongyang ', location: 'Pyongyang ', flag: 'Pyongyang.png'),
    WorldTime(url: 'Asia/Qatar ', location: 'Qatar', flag: 'Qatar.png'),
    WorldTime(
        url: 'Asia/Qostanay ', location: 'Qostanay', flag: 'Qostanay.png'),
    WorldTime(
        url: 'Asia/Qyzylorda', location: 'Qyzylorda', flag: 'Qyzylorda.png'),
    WorldTime(url: 'Asia/Riyadh ', location: 'Riyadh', flag: 'Riyadh.png'),
    WorldTime(url: 'Asia/Sakhalin', location: 'Sakhalin', flag: 'Sakhalin.png'),
    WorldTime(
        url: 'Asia/Samarkand', location: 'Samarkand', flag: 'Samarkand.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'Seoul.png'),
    WorldTime(url: 'Asia/Shanghai', location: 'Shanghai', flag: 'Shanghai.png'),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'Singapore'),
    WorldTime(
        url: 'Asia/Srednekolymsk',
        location: 'Srednekolymsk',
        flag: 'Srednekolymsk.png'),
    WorldTime(url: 'Asia/Taipei', location: 'Taipei', flag: 'Taipei.png'),
    WorldTime(url: 'Asia/Tashkent', location: 'Tashkent', flag: 'Tashkent.png'),
    WorldTime(url: 'Asia/Tbilisi', location: 'Tbilisi', flag: 'Tbilisi.png'),
    WorldTime(url: 'Asia/Tehran', location: 'Tehran', flag: 'Tehran.png'),
    WorldTime(url: 'Asia/Thimphu', location: 'Thimphu', flag: 'Thimphu.png'),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'Tokyo.png'),
    WorldTime(url: 'Asia/Tomsk', location: 'Tomsk', flag: 'Tomsk.png'),
    WorldTime(
        url: 'Asia/Ulaanbaatar',
        location: 'Ulaanbaatar',
        flag: 'Ulaanbaatar.png'),
    WorldTime(url: 'Asia/Urumqi', location: 'Urumqi', flag: 'Urumqi.png'),
    WorldTime(url: 'Asia/Ust-Nera', location: 'Ust-Nera', flag: 'Ust-Nera.png'),
    WorldTime(
        url: 'Asia/Vladivostok',
        location: 'Vladivostok',
        flag: 'Vladivostok.png'),
    WorldTime(url: 'Asia/Yakutsk', location: 'Yakutsk', flag: 'Yakutsk.png'),
    WorldTime(url: 'Asia/Yangon', location: 'Yangon', flag: 'Yangon.png'),
    //WorldTime(url: 'Europe/London', location: 'London', flag: ''),
    WorldTime(url: 'Asia/Yerevan', location: 'Yerevan', flag: 'Yerevan.png'),
    WorldTime(url: 'Atlantic/Azores', location: 'Azores', flag: 'Azores.png'),
    WorldTime(
        url: 'Atlantic/Bermuda', location: 'Bermuda', flag: 'Bermuda.png'),
    WorldTime(url: 'Atlantic/Canary', location: 'Canary', flag: 'Canary.png'),
    WorldTime(
        url: 'Atlantic/Cape_Verde',
        location: 'Cape_Verde',
        flag: 'Cape_Verde.png'),
    WorldTime(url: 'Atlantic/Faroe', location: 'Faroe', flag: 'Faroe.png'),
    WorldTime(
        url: 'Atlantic/Madeira', location: 'Madeira', flag: 'Madeira.png'),
    WorldTime(
        url: 'Atlantic/Reykjavik ',
        location: 'Reykjavik ',
        flag: 'Reykjavik.png'),
    WorldTime(
        url: 'Atlantic/South_Georgia',
        location: 'South_Georgia',
        flag: 'South_Georgia.png'),
    WorldTime(
        url: 'Atlantic/Stanley ', location: 'Stanley ', flag: 'Stanley.png'),
    WorldTime(
        url: 'Australia/Adelaide', location: 'Adelaide', flag: 'Adelaide.png'),
    WorldTime(
        url: 'Australia/Brisbane', location: 'Brisbane', flag: 'Brisbane.png'),
    WorldTime(
        url: 'Australia/Broken_Hill',
        location: 'Broken_Hill',
        flag: 'Broken_Hill.png'),
    WorldTime(url: 'Australia/Currie', location: 'Currie', flag: 'Currie.png'),
    WorldTime(url: 'Australia/Darwin', location: 'Darwin', flag: 'Darwin.png'),
    WorldTime(url: 'Australia/Eucla', location: 'Eucla', flag: 'Eucla.png'),
    WorldTime(url: 'Australia/Hobart ', location: 'Hobart', flag: 'Hobart.png'),
    WorldTime(
        url: 'Australia/Lindeman', location: 'Lindeman', flag: 'Lindeman.png'),
    WorldTime(
        url: 'Australia/Lord_Howe',
        location: 'Lord_Howe',
        flag: 'Lord_Howe.png'),
    WorldTime(
        url: 'Australia/Melbourne',
        location: 'Melbourne',
        flag: 'Melbourne.png'),
    WorldTime(url: 'Australia/Perth', location: 'Perth', flag: 'Perth.png'),
    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'Sydney.png'),
    WorldTime(
        url: 'Europe/Amsterdam', location: 'Amsterdam', flag: 'Amsterdam'),
    WorldTime(url: 'Europe/Andorra', location: 'Andorra', flag: 'Andorra.png'),
    WorldTime(
        url: 'Europe/Astrakhan', location: 'Astrakhan', flag: 'Astrakhan.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'Athens.png'),
    WorldTime(
        url: 'Europe/Belgrade', location: 'Belgrade', flag: 'Belgrade.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'Berlin.png'),
    WorldTime(
        url: 'Europe/Brussels', location: 'Brussels', flag: 'Brussels.png'),
    WorldTime(
        url: 'Europe/Bucharest', location: 'Bucharest', flag: 'Bucharest.png'),
    WorldTime(
        url: 'Europe/Budapest', location: 'Budapest', flag: 'Budapest.png'),
    WorldTime(
        url: 'Europe/Chisinau', location: 'Chisinau', flag: 'Chisinau.png'),
    WorldTime(
        url: 'Europe/Copenhagen',
        location: 'Copenhagen',
        flag: 'Copenhagen.png'),
    WorldTime(url: 'Europe/Dublin', location: 'Dublin', flag: 'Dublin.png'),
    WorldTime(
        url: 'Europe/Gibraltar ',
        location: 'Gibraltar ',
        flag: 'Gibraltar.png'),
    WorldTime(
        url: 'Europe/Helsinki', location: 'Helsinki', flag: 'Helsinki.png'),
    WorldTime(
        url: 'Europe/Istanbul', location: 'Istanbul', flag: 'Istanbul.png'),
    WorldTime(
        url: 'Europe/Kaliningrad',
        location: 'Kaliningrad',
        flag: 'Kaliningrad.png'),
    WorldTime(url: 'Europe/Kiev', location: 'Kiev', flag: 'Kiev.png'),
    WorldTime(url: 'Europe/Kirov', location: 'Kirov', flag: 'Kirov.png'),
    WorldTime(url: 'Europe/Lisbon', location: 'Lisbon', flag: 'Lisbon.png'),
    //WorldTime(url: 'Europe/London  ', location: 'London', flag: ''),
    WorldTime(
        url: 'Europe/Luxembourg',
        location: 'Luxembourg',
        flag: 'Luxembourg.png'),
    WorldTime(url: 'Europe/Madrid', location: 'Madrid', flag: 'Madrid.png'),
    WorldTime(url: 'Europe/Malta ', location: 'Malta', flag: 'Malta.png'),
    WorldTime(url: 'Europe/Minsk ', location: 'Minsk', flag: 'Minsk.png'),
    WorldTime(url: 'Europe/Monaco', location: 'Monaco', flag: 'Monaco.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'Moscow.png'),
    WorldTime(url: 'Europe/Oslo', location: 'Oslo', flag: 'Oslo.png'),
    WorldTime(url: 'Europe/Paris  ', location: 'Paris ', flag: 'Paris.png'),
    WorldTime(url: 'Europe/Prague', location: 'Prague', flag: 'Prague.png'),
    WorldTime(url: 'Europe/Riga', location: 'Riga', flag: 'Riga.png'),
    WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'Rome.png'),
    WorldTime(url: 'Europe/Samara', location: 'Samara', flag: 'Samara.png'),
    WorldTime(url: 'Europe/Saratov', location: 'Saratov', flag: 'Saratov.png'),
    WorldTime(
        url: 'Europe/Simferopol ',
        location: 'Simferopol',
        flag: 'Simferopol.png'),
    WorldTime(url: 'Europe/Sofia', location: 'Sofia', flag: 'Sofia.png'),
    WorldTime(
        url: 'Europe/Stockholm ', location: 'Stockholm', flag: 'Stockholm.png'),
    WorldTime(url: 'Europe/Tallinn', location: 'allinn', flag: 'allinn.png'),
    WorldTime(url: 'Europe/Tirane ', location: 'Tirane', flag: 'Tirane'),
    WorldTime(
        url: 'Europe/Ulyanovsk', location: 'Ulyanovsk', flag: 'Ulyanovsk.png'),
    WorldTime(
        url: 'Europe/Uzhgorod', location: 'Uzhgorod', flag: 'Uzhgorod.png'),
    WorldTime(url: 'Europe/Vienna ', location: 'Vienna', flag: 'Vienna.png'),
    WorldTime(url: 'Europe/Vilnius', location: 'Vilnius', flag: 'Vilnius.png'),
    WorldTime(
        url: 'Europe/Volgograd ', location: 'Volgograd', flag: 'Volgograd.png'),
    WorldTime(url: 'Europe/Warsaw ', location: 'Warsaw', flag: 'Warsaw.png'),
    WorldTime(
        url: 'Europe/Zaporozhye',
        location: 'Zaporozhye',
        flag: 'Zaporozhye.png'),
    WorldTime(url: 'Europe/Zurich ', location: 'Zurich', flag: 'Zurich.png'),
    WorldTime(url: 'Indian/Chagos', location: 'Chagos', flag: 'Chagos.png'),
    WorldTime(
        url: 'Indian/Christmas', location: 'Christmas', flag: 'Christmas'),
    WorldTime(url: 'Indian/Cocos', location: 'Cocos', flag: 'Cocos.png'),
    WorldTime(
        url: 'Indian/Kerguelen ', location: 'Kerguelen', flag: 'Kerguelen.png'),
    WorldTime(url: 'Indian/Mahe ', location: 'Mahe', flag: 'Mahe.png'),
    WorldTime(
        url: 'Indian/Maldives ', location: 'Maldives', flag: 'Maldives.png'),
    WorldTime(
        url: 'Indian/Mauritius ', location: 'Mauritius', flag: 'Mauritius.png'),
    WorldTime(url: 'Indian/Reunion ', location: 'Reunion', flag: ' Reunion.png'),
    WorldTime(url: 'Pacific/Apia ', location: 'Apia', flag: 'Apia.png'),
    WorldTime(
        url: 'Pacific/Auckland ', location: 'Auckland', flag: 'Auckland.png'),
    WorldTime(
        url: 'Pacific/Bougainville ',
        location: 'Bougainville',
        flag: 'Bougainville'),
    WorldTime(
        url: 'Pacific/Chatham ', location: 'Chatham ', flag: 'Chatham.png'),
    WorldTime(url: 'Pacific/Chuuk ', location: 'Chuuk', flag: 'Chuuk.png'),
    WorldTime(url: 'Pacific/Easter ', location: 'Easter', flag: 'Easter.png'),
    WorldTime(url: 'Pacific/Efate ', location: 'Efate', flag: 'Efate.png'),
    WorldTime(
        url: 'Pacific/Enderbury ',
        location: 'Enderbury',
        flag: 'Enderbury.png'),
    WorldTime(
        url: 'Pacific/Fakaofo ', location: 'Fakaofo', flag: 'Fakaofo.png'),
    WorldTime(url: 'Pacific/Fiji ', location: 'Fiji ', flag: 'Fiji.png'),
    WorldTime(
        url: 'Pacific/Funafuti', location: 'Funafuti', flag: 'Funafuti.png'),
    WorldTime(
        url: 'Pacific/Galapagos', location: 'Galapagos', flag: 'Galapagos.png'),
    WorldTime(
        url: 'Pacific/Gambier ', location: 'Gambier', flag: 'Gambier.png'),
    WorldTime(
        url: 'Pacific/Guadalcanal  ',
        location: 'uadalcanal',
        flag: 'uadalcanal.png'),
    WorldTime(url: 'Pacific/Guam ', location: 'Guam', flag: 'Guam.png'),
    WorldTime(
        url: 'Pacific/Honolulu ', location: 'Honolulu', flag: 'Honolulu.png'),
    WorldTime(
        url: 'Pacific/Kiritimati ',
        location: 'Kiritimati',
        flag: 'Kiritimati.png'),
    WorldTime(url: 'Pacific/Kosrae', location: 'Kosrae', flag: 'Kosrae.png'),
    WorldTime(
        url: 'Pacific/Kwajalein', location: 'Kwajalein', flag: 'Kwajalein.png'),
    WorldTime(url: 'Pacific/Majuro ', location: 'Majuro', flag: 'Majuro.png'),
    WorldTime(
        url: 'Pacific/Marquesas ',
        location: 'Marquesas',
        flag: 'Marquesas.png'),
    WorldTime(url: 'Pacific/Nauru ', location: 'Nauru', flag: 'Nauru.png'),
    WorldTime(url: 'Pacific/Niue ', location: 'Niue', flag: 'Niue.png'),
    WorldTime(
        url: 'Pacific/Norfolk ', location: 'Norfolk', flag: 'Norfolk.png'),
    WorldTime(url: 'Pacific/Noumea', location: 'Noumea', flag: 'Noumea.png'),
    WorldTime(
        url: 'Pacific/Pago_Pago ',
        location: 'Pago_Pago ',
        flag: 'Pago_Pago.png'),
    WorldTime(url: 'Pacific/Palau ', location: 'Palau', flag: 'Palau.png'),
    WorldTime(
        url: 'Pacific/Pitcairn', location: 'Pitcairn', flag: 'Pitcairn.png'),
    WorldTime(url: 'Pacific/Pohnpei', location: 'Pohnpei', flag: 'Pohnpei.png'),
    WorldTime(
        url: 'Pacific/Port_Moresby',
        location: 'Port_Moresby',
        flag: 'Port_Moresby.png'),
    WorldTime(
        url: 'Pacific/Rarotonga ',
        location: 'Rarotonga',
        flag: 'Rarotonga.png'),
    WorldTime(url: 'Pacific/Tahiti ', location: 'Tahiti', flag: 'Tahiti.png'),
    WorldTime(url: 'Pacific/Tarawa', location: 'Tarawa', flag: 'Tarawa.png'),
    WorldTime(
        url: 'Pacific/Tongatapu', location: 'Tongatapu', flag: 'Tongatapu.png'),
    WorldTime(url: 'Pacific/Wake', location: 'Wake', flag: 'Wake.png'),
    WorldTime(
        url: 'Europe/LondonPacific/Wallis',
        location: 'Wallis',
        flag: 'Wallis.png'),
  ];

  void upDate(index) async {

   WorldTime instance = locations[index];
   await instance.getTime();
   Navigator.pop(context,{
      'location':instance.location,
     'flag': instance.flag,
     'time': instance.time,
      'timey':instance.timey,
     'isDayTime': instance.isDayTime,
     
   });

  }

  @override
  Widget build(BuildContext context) {
    locations.sort((a, b) => a.location.compareTo(b.location));

    return Scaffold(
        appBar: AppBar(
          title: Text('Choose Location'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    upDate(index);
                  },
                  title: Text(locations[index].location),
                ),
              );
            }));
  }
}
