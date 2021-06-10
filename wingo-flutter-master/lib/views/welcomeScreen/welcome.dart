import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class welcome extends StatelessWidget {
  final VoidCallback w_logo;

  welcome({
    Key key,
    this.w_logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0e4dfb),
        body: Container(
          child: Transform.translate(
            offset: Offset(111.0, 382.0),
            child: GestureDetector(
              onTap: () => w_logo?.call(),
              child: SizedBox(
                width: 154.0,
                height: 178.0,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 30,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 154.0, 178.0),
                        size: Size(154.0, 178.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(14.0, 0.0, 122.0, 122.0),
                              size: Size(154.0, 178.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              fixedHeight: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(27.0),
                                  color: const Color(0xff0e4dfb),
                                  border: Border.all(
                                      width: 3.0,
                                      color: const Color(0x66e6fcff)),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(34.0, 40.6, 81.8, 41.8),
                              size: Size(154.0, 178.0),
                              fixedWidth: true,
                              fixedHeight: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 81.8, 41.8),
                                    size: Size(81.8, 41.8),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.0, 10.1, 33.5, 31.8),
                                          size: Size(81.8, 41.8),
                                          pinLeft: true,
                                          pinBottom: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child: SvgPicture.string(
                                            _svg_cjm1to,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              28.8, 10.1, 33.5, 31.8),
                                          size: Size(81.8, 41.8),
                                          pinBottom: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child: SvgPicture.string(
                                            _svg_5394ye,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              14.5, 10.1, 33.5, 31.8),
                                          size: Size(81.8, 41.8),
                                          pinBottom: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child: SvgPicture.string(
                                            _svg_ogo653,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              43.6, 0.0, 38.2, 41.8),
                                          size: Size(81.8, 41.8),
                                          pinRight: true,
                                          pinTop: true,
                                          pinBottom: true,
                                          fixedWidth: true,
                                          child: SvgPicture.string(
                                            _svg_72a6ne,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

const String _svg_cjm1to =
    '<svg viewBox="0.0 10.1 33.5 31.8" ><path transform="translate(-216.92, -92.05)" d="M 247.9968566894531 133.8871002197266 L 233.6328125 133.8871002197266 C 232.7484436035156 133.8871002197266 231.9365844726563 133.3989715576172 231.5217742919922 132.6178741455078 L 217.1978302001953 105.6340789794922 C 216.3530578613281 104.0423889160156 217.5067901611328 102.1239929199219 219.308837890625 102.1239929199219 L 233.6728515625 102.1239929199219 C 234.5572204589844 102.1239929199219 235.3690643310547 102.6121292114258 235.7838745117188 103.3932266235352 L 250.1078338623047 130.3770141601563 C 250.9525756835938 131.9687042236328 249.7988586425781 133.8871002197266 247.9968566894531 133.8871002197266 Z" fill="#e6fcff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5394ye =
    '<svg viewBox="28.8 10.1 33.5 31.8" ><path transform="translate(-256.38, -92.05)" d="M 316.2142639160156 133.8871002197266 L 301.8498229980469 133.8871002197266 C 300.9654541015625 133.8871002197266 300.1535949707031 133.3989715576172 299.7388000488281 132.6178741455078 L 285.4148254394531 105.6340789794922 C 284.5700988769531 104.0423889160156 285.7238159179688 102.1239929199219 287.52587890625 102.1239929199219 L 301.8902893066406 102.1239929199219 C 302.7742614746094 102.1239929199219 303.5860900878906 102.6121292114258 304.0008850097656 103.3932266235352 L 318.3248901367188 130.3770141601563 C 319.1696166992188 131.9687042236328 318.016357421875 133.8871002197266 316.2142639160156 133.8871002197266 Z" fill="#e6fcff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ogo653 =
    '<svg viewBox="14.5 10.1 33.5 31.8" ><path transform="translate(-236.78, -92.05)" d="M 253.6568298339844 133.8871002197266 L 268.0212707519531 133.8871002197266 C 268.9052124023438 133.8871002197266 269.7174987792969 133.3989715576172 270.1318664550781 132.6178741455078 L 284.4558410644531 105.6340789794922 C 285.301025390625 104.0423889160156 284.1473083496094 102.1239929199219 282.3452758789063 102.1239929199219 L 267.9808044433594 102.1239929199219 C 267.0964050292969 102.1239929199219 266.2845458984375 102.6121292114258 265.8697814941406 103.3932266235352 L 251.5458068847656 130.3770141601563 C 250.7010803222656 131.9687042236328 251.8547973632813 133.8871002197266 253.6568298339844 133.8871002197266 Z" fill="#ffc400" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_72a6ne =
    '<svg viewBox="43.6 0.0 38.2 41.8" ><path transform="translate(-276.75, -78.23)" d="M 322.7383728027344 120.0662841796875 L 337.1428833007813 120.0662841796875 C 338.0391235351563 120.0662841796875 338.8602294921875 119.5646667480469 339.2691040039063 118.7671356201172 L 358.2720336914063 81.71257019042969 C 359.0876770019531 80.12214660644531 357.9327087402344 78.23200225830078 356.1458435058594 78.23200225830078 L 342.2134399414063 78.23200225830078 C 341.0272827148438 78.23200225830078 339.9410095214844 78.89590454101563 339.3997802734375 79.951416015625 L 320.6122131347656 116.5861358642578 C 319.7965393066406 118.1765594482422 320.9510803222656 120.0662841796875 322.7383728027344 120.0662841796875 Z" fill="#ffc400" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
