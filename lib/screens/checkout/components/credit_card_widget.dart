import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:wlstore/models/credit_card.dart';
import 'package:wlstore/screens/checkout/components/card_back.dart';
import 'package:wlstore/screens/checkout/components/card_front.dart';

class CreditCardWidget extends StatefulWidget {
  const CreditCardWidget(this.creditCard);

  final CreditCard creditCard;

  @override
  _CreditCardWidgetState createState() => _CreditCardWidgetState();
}

class _CreditCardWidgetState extends State<CreditCardWidget> {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  final FocusNode numberFocus = FocusNode();
  final FocusNode dateFocus = FocusNode();
  final FocusNode nameFocus = FocusNode();
  final FocusNode cvvFocus = FocusNode();

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
        keyboardBarColor: Colors.grey[200],
        actions: [
          KeyboardAction(focusNode: numberFocus, displayDoneButton: false),
          KeyboardAction(focusNode: dateFocus, displayDoneButton: false),
          KeyboardAction(focusNode: nameFocus, toolbarButtons: [
            (_) {
              return GestureDetector(
                onTap: () {
                  cardKey.currentState.toggleCard();
                  cvvFocus.requestFocus();
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text('CONTINUAR'),
                ),
              );
            }
          ]),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      config: _buildConfig(context),
      autoScroll: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            FlipCard(
              key: cardKey,
              direction: FlipDirection.HORIZONTAL,
              speed: 700,
              flipOnTouch: false,
              front: CardFront(
                creditCard: widget.creditCard,
                numberFocus: numberFocus,
                dateFocus: dateFocus,
                nameFocus: nameFocus,
                finished: () {
                  cardKey.currentState.toggleCard();
                  cvvFocus.requestFocus();
                },
              ),
              back: CardBack(
                creditCard: widget.creditCard,
                cvvFocus: cvvFocus,
              ),
            ),
            TextButton(
              onPressed: () {
                cardKey.currentState.toggleCard();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 6),
              ),
              child: const Text(
                'Virar cartão',
                style: TextStyle(
                    // color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
