import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cursors extends StatefulWidget {
  const Cursors({Key? key}) : super(key: key);

  @override
  _CursorsState createState() => _CursorsState();
}

class _CursorsState extends State<Cursors> {
  Map<SystemMouseCursor, String> _cursors = {
    SystemMouseCursors.alias:
        'A cursor indicating that the current operation will create an alias of, or a shortcut of the item.\n\nTypically the shape of an arrow with a shortcut icon at the corner.',
    SystemMouseCursors.allScroll:
        'A cursor indicating scrolling in any direction.\n\nTypically the shape of a dot surrounded by 4 arrows.',
    SystemMouseCursors.basic:
        'The platform-dependent basic cursor.\n\nTypically the shape of an arrow.',
    SystemMouseCursors.cell:
        'A cursor indicating selectable table cells.\n\nTypically the shape of a hollow plus sign.',
    SystemMouseCursors.click:
        'A cursor that emphasizes an element being clickable, such as a hyperlink.\n\nTypically the shape of a pointing hand.',
    SystemMouseCursors.contextMenu:
        'A cursor indicating somewhere the user can trigger a context menu.\n\nTypically the shape of an arrow with a small menu at the corner.',
    SystemMouseCursors.copy:
        'A cursor indicating that the current operation will copy the item.\n\nTypically the shape of an arrow with a boxed plus sign at the corner',
    SystemMouseCursors.disappearing:
        'A cursor indicating that the current operation will result in the disappearance of the item.\n\nTypically the shape of an arrow with a cloud of smoke at the corner.',
    SystemMouseCursors.forbidden:
        'A cursor indicating an operation that will not be carried out.\n\nTypically the shape of a circle with a diagonal line. May fall back to [noDrop].',
    SystemMouseCursors.grab:
        'A cursor indicating something that can be dragged.\n\nTypically the shape of an open hand.',
    SystemMouseCursors.grabbing:
        'A cursor indicating something that is being dragged.\n\nTypically the shape of a closed hand.',
    SystemMouseCursors.help:
        'A cursor indicating help information.\n\nTypically the shape of a question mark, or an arrow therewith.',
    SystemMouseCursors.move:
        'A cursor indicating moving something.\n\nTypically the shape of four-way arrow. May fall back to [allScroll].',
    SystemMouseCursors.noDrop:
        'A cursor indicating somewhere that the current item may not be dropped.\n\nTypically the shape of a hand with a [forbidden] sign at the corner. May fall back to [forbidden].',
    SystemMouseCursors.none: 'Hide the cursor.',
    SystemMouseCursors.precise:
        'A cursor indicating precise selection, such as selecting a pixel in a bitmap.\n\nTypically the shape of a crosshair.',
    SystemMouseCursors.progress:
        'A cursor indicating the status that the program is busy but can still be interacted with.\n\nTypically the shape of an arrow with an hourglass or a watch at the corner. Does not fall back to [wait] if unavailable.',
    SystemMouseCursors.resizeColumn:
        'A cursor indicating resizing a column, or an item horizontally.\n\nTypically the shape of arrows pointing left and right with a vertical bar separating them. May fallback to [resizeLeftRight].',
    SystemMouseCursors.resizeDown:
        'A cursor indicating resizing an object from its bottom edge.\n\nTypically the shape of an arrow pointing down. May fallback to [resizeUpDown].',
    SystemMouseCursors.resizeDownLeft:
        'A cursor indicating resizing an object from its bottom-left corner.\n\nTypically the shape of an arrow pointing lower left. May fallback to [resizeUpRightDownLeft].',
    SystemMouseCursors.resizeDownRight:
        'A cursor indicating resizing an object from its bottom-right corner.\n\nTypically the shape of an arrow pointing lower right. May fallback to [resizeUpLeftDownRight.',
    SystemMouseCursors.resizeLeft:
        'A cursor indicating resizing an object from its left edge.\n\nTypically the shape of an arrow pointing left. May fallback to [resizeLeftRight.',
    SystemMouseCursors.resizeLeftRight:
        'A cursor indicating resizing an object bidirectionally from its left or right edge.\n\nTypically the shape of a bidirectional arrow pointing left and right.',
    SystemMouseCursors.resizeRight:
        'A cursor indicating resizing an object from its right edge.\n\nTypically the shape of an arrow pointing right. May fallback to [resizeLeftRight].',
    SystemMouseCursors.resizeRow:
        'A cursor indicating resizing a row, or an item vertically.\n\nTypically the shape of arrows pointing up and down with a horizontal bar separating them. May fallback to [resizeUpDown].',
    SystemMouseCursors.resizeUp:
        ' cursor indicating resizing an object from its top edge.\n\nTypically the shape of an arrow pointing up. May fallback to [resizeUpDown].',
    SystemMouseCursors.resizeUpDown:
        'A cursor indicating resizing an object bidirectionally from its top or bottom edge.\n\nTypically the shape of a bidirectional arrow pointing up and down.',
    SystemMouseCursors.resizeUpLeft:
        'A cursor indicating resizing an object from its top-left corner.\n\nTypically the shape of an arrow pointing upper left. May fallback to [resizeUpLeftDownRight].',
    SystemMouseCursors.resizeUpLeftDownRight:
        'A cursor indicating resizing an object bidirectionally from its top left or bottom right corner.\n\nTypically the shape of a bidirectional arrow pointing upper left and lower right.',
    SystemMouseCursors.resizeUpRight:
        'A cursor indicating resizing an object from its top-right corner.\n\nTypically the shape of an arrow pointing upper right. May fallback to [resizeUpRightDownLeft].',
    SystemMouseCursors.resizeUpRightDownLeft:
        'A cursor indicating resizing an object bidirectionally from its top right or bottom left corner.\n\nTypically the shape of a bidirectional arrow pointing upper right and lower left.',
    SystemMouseCursors.text:
        'A cursor indicating selectable text.\n\nTypically the shape of a capital I.',
    SystemMouseCursors.verticalText:
        'Typically the shape of a capital I rotated to be horizontal. May fall back to [text]',
    SystemMouseCursors.wait:
        'A cursor indicating the status that the program is busy and therefore can not be interacted with.\n\nTypically the shape of an hourglass or a watch.',
    SystemMouseCursors.zoomIn:
        'A cursor indicating zooming in.\n\nTypically a magnifying glass with a plus sign.',
    SystemMouseCursors.zoomOut:
        'A cursor indicating zooming out.\n\nTypically a magnifying glass with a minus sign.',
  };
  int crossAxisCount() {
    if (MediaQuery.of(context).size.width > 1200) {
      return 6;
    } else if (MediaQuery.of(context).size.width > 992) {
      return 5;
    } else if (MediaQuery.of(context).size.width > 768) {
      return 4;
    } else if (MediaQuery.of(context).size.width > 600) {
      return 3;
    } else if (MediaQuery.of(context).size.width > 430) {
      return 2;
    } else {
      return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: _cursors.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount(),
      ),
      itemBuilder: (context, index) {
        return MouseRegion(
          cursor: _cursors.keys.elementAt(index),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _cursors.keys.elementAt(index).kind,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Flexible(
                    child: Opacity(
                      opacity: .8,
                      child: Text(
                        _cursors.values.elementAt(index),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
