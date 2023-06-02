import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const countryPrefixes = {
  '970': 'PS',
  '93': 'AF',
  '355': 'AL',
  '213': 'DZ',
  '376': 'AD',
  '244': 'AO',
  '54': 'AR',
  '374': 'AM',
  '61': 'AU',
  '43': 'AT',
  '994': 'AZ',
  '973': 'BH',
  '880': 'BD',
  '375': 'BY',
  '32': 'BE',
  '501': 'BZ',
  '229': 'BJ',
  '975': 'BT',
  '591': 'BO',
  '387': 'BA',
  '267': 'BW',
  '55': 'BR',
  '673': 'BN',
  '359': 'BG',
  '226': 'BF',
  '257': 'BI',
  '855': 'KH',
  '237': 'CM',
  '238': 'CV',
  '236': 'CF',
  '235': 'TD',
  '56': 'CL',
  '86': 'CN',
  '57': 'CO',
  '269': 'KM',
  '243': 'CD',
  '242': 'CG',
  '506': 'CR',
  '385': 'HR',
  '53': 'CU',
  '357': 'CY',
  '420': 'CZ',
  '45': 'DK',
  '253': 'DJ',
  '593': 'EC',
  '20': 'EG',
  '503': 'SV',
  '240': 'GQ',
  '291': 'ER',
  '372': 'EE',
  '251': 'ET',
  '679': 'FJ',
  '358': 'FI',
  '33': 'FR',
  '241': 'GA',
  '220': 'GM',
  '995': 'GE',
  '49': 'DE',
  '233': 'GH',
  '30': 'GR',
  '502': 'GT',
  '224': 'GN',
  '245': 'GW',
  '592': 'GY',
  '509': 'HT',
  '504': 'HN',
  '36': 'HU',
  '354': 'IS',
  '91': 'IN',
  '62': 'ID',
  '98': 'IR',
  '964': 'IQ',
  '353': 'IE',
  '972': 'IL',
  '39': 'IT',
  '225': 'CI',
  '81': 'JP',
  '962': 'JO',
  '254': 'KE',
  '686': 'KI',
  '965': 'KW',
  '996': 'KG',
  '856': 'LA',
  '371': 'LV',
  '961': 'LB',
  '266': 'LS',
  '231': 'LR',
  '218': 'LY',
  '423': 'LI',
  '370': 'LT',
  '352': 'LU',
  '261': 'MG',
  '265': 'MW',
  '60': 'MY',
  '960': 'MV',
  '223': 'ML',
  '356': 'MT',
  '692': 'MH',
  '222': 'MR',
  '230': 'MU',
  '52': 'MX',
  '691': 'FM',
  '373': 'MD',
  '377': 'MC',
  '976': 'MN',
  '382': 'ME',
  '212': 'MA',
  '258': 'MZ',
  '95': 'MM',
  '264': 'NA',
  '674': 'NR',
  '977': 'NP',
  '31': 'NL',
  '64': 'NZ',
  '505': 'NI',
  '227': 'NE',
  '234': 'NG',
  '850': 'KP',
  '47': 'NO',
  '968': 'OM',
  '92': 'PK',
  '680': 'PW',
  '507': 'PA',
  '675': 'PG',
  '595': 'PY',
  '51': 'PE',
  '63': 'PH',
  '48': 'PL',
  '351': 'PT',
  '974': 'QA',
  '40': 'RO',
  '7': 'RU',
  '250': 'RW',
  '685': 'WS',
  '378': 'SM',
  '239': 'ST',
  '966': 'SA',
  '221': 'SN',
  '381': 'RS',
  '248': 'SC',
  '232': 'SL',
  '65': 'SG',
  '421': 'SK',
  '386': 'SI',
  '677': 'SB',
  '252': 'SO',
  '27': 'ZA',
  '82': 'KR',
  '34': 'ES',
  '94': 'LK',
  '290': 'SH',
  '508': 'PM',
  '249': 'SD',
  '597': 'SR',
  '268': 'SZ',
  '46': 'SE',
  '41': 'CH',
  '963': 'SY',
  '886': 'TW',
  '992': 'TJ',
  '255': 'TZ',
  '66': 'TH',
  '670': 'TL',
  '228': 'TG',
  '676': 'TO',
  '216': 'TN',
  '90': 'TR',
  '993': 'TM',
  '688': 'TV',
  '256': 'UG',
  '380': 'UA',
  '971': 'AE',
  '44': 'GB',
  '598': 'UY',
  '1': 'US',
  '998': 'UZ',
  '678': 'VU',
  '58': 'VE',
  '84': 'VN',
  '967': 'YE',
  '260': 'ZM',
  '263': 'ZW',
};

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({Key? key}) : super(key: key);

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String _selectedCountryCode = "970"; // Default country code
  @override
  Widget build(BuildContext context) {
    List<String> countries = countryPrefixes.keys.toList();
    countries.sort();
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0x6C6236FF).withOpacity(0.1), // Soft shadow color
            blurRadius: 15,
            offset: const Offset(0, 0),
          ),
        ]),
        child: TextFormField(
          keyboardType: TextInputType.phone,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0x6C6236FF))),
            prefixIcon: Container(
              width: 110,
              child: DropdownButtonFormField<String>(
                // remove underline
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),

                icon: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(Icons.keyboard_arrow_down),
                ),
                iconSize: 15,
                isExpanded: true,
                value: _selectedCountryCode,
                items: countries
                    .map((code) => DropdownMenuItem<String>(
                          value: code,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                'https://flagsapi.com/${countryPrefixes[code]}/flat/24.png',
                                fit: BoxFit.cover,
                                frameBuilder: (context, child, frame,
                                    wasSynchronouslyLoaded) {
                                  return Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: child);
                                },
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    color: Colors.blueGrey,
                                    width: 24,
                                    height: 16,
                                  );
                                },
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    color: Colors.blueGrey,
                                    width: 24,
                                    height: 16,
                                  );
                                },
                              ),
                              Text("+$code"),
                            ],
                          ),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCountryCode = value!;
                  });
                },
              ),
            ),
            hintText: 'Phone Number',
          ),
        ));
  }
}
