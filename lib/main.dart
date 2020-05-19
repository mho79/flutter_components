import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:fluttercomponents/theme.dart';

void main() {
    runApp(MaterialApp(
        title: 'Flutter Tutorial',
        home: FilterLayout(),
        theme: RelovedTheme.lightThemeData,
    ));
}

class FilterLayout extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        final _expansionTileTheme = Theme.of(context).copyWith(dividerColor: Colors.white);

        return Scaffold(
            backgroundColor: RelovedColors.white,
            appBar: AppBar(
                backgroundColor: RelovedColors.white,
                title: Text(
                    'Filters'.toUpperCase(),
                    style: RelovedTypography.headline5
                ),
                leading: IconButton(
                    color: RelovedColors.anthracite,
                    icon: Icon(Icons.close),
                    tooltip: 'Close filters',
                    onPressed: () => print('menu pressed'),
                ),
                actions: <Widget>[
                    FlatButton(
                        onPressed:() => print('action pressed'),
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                            'Reset',
                            style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: RelovedColors.pinkRed,
                                fontWeight: FontWeight.w700
                            ),
                        ),
                    )
                ],
            ),
            // body is the majority of the screen.
            body: ListView(
                children:  <Widget>[
                   Theme(
                        data: _expansionTileTheme,
                        child: ListTileTheme(
                            contentPadding: EdgeInsets.fromLTRB(21.0, 10.0, 23.0, 10.0),
                            child: ExpansionTile(
                                title: Text(
                                    'Color',
                                    style: RelovedTypography.headline3,
                                ),
                                onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                children: <Widget>[
                                    Container(
                                        height: 125,
                                        child: _buildColorsList(),
                                    ),
                                ],
                            ),
                        ),
                    ),
                    Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: RelovedColors.black.withOpacity(0.2),
                    ),
                    Theme(
                        data: _expansionTileTheme,
                        child: ListTileTheme(
                            contentPadding: EdgeInsets.fromLTRB(21.0, 10.0, 23.0, 10.0),
                            child: ExpansionTile(
                                title: Text(
                                    'Size',
                                    style: RelovedTypography.headline3,
                                ),
                                onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                children: <Widget>[
                                    Container(
                                        height: 100,
                                        child: _buildSizesList(),
                                    ),
                                ],
                            ),
                        ),
                    ),
                    Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: RelovedColors.black.withOpacity(0.2),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(21.0, 28.0, 21.0, 28.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        Container(
                                            child: Text(
                                                'Brand',
                                                style: RelovedTypography.headline3,
                                            ),
                                        ),
                                        ButtonTheme(
                                            padding: EdgeInsets.all(0),
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            minWidth: 0,
                                            height: 0,
                                            child: FlatButton(
                                                onPressed: () => print('see brand list'),
                                                child: Text(
                                                    'See list',
                                                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                                                        color: RelovedColors.pinkRed,
                                                        decoration: TextDecoration.underline,
                                                        fontWeight: FontWeight.w700
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                                SizedBox(height: 28.0),
                                Container(
                                    child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.symmetric(horizontal: 14.0),
                                            fillColor: RelovedColors.iceBlue,
                                            filled: true,
                                            hintText: 'Brand Search',
                                        ),
                                    ),
                                )
                            ],
                        ),
                    ),
                    Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: RelovedColors.black.withOpacity(0.2),
                    ),
                    Theme(
                        data: _expansionTileTheme,
                        child: ListTileTheme(
                            contentPadding: EdgeInsets.fromLTRB(21.0, 10.0, 23.0, 10.0),
                            child: ExpansionTile(
                                title: Text(
                                    'Material',
                                    style: RelovedTypography.headline3,
                                ),
                                onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                children: <Widget>[
                                    Container(
                                        height: 64,
                                        child: _buildMaterialList(),
                                    ),
                                ],
                            ),
                        ),
                    ),
                    Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: RelovedColors.black.withOpacity(0.2),
                    ),
                    Theme(
                        data: _expansionTileTheme,
                        child: ListTileTheme(
                            contentPadding: EdgeInsets.fromLTRB(21.0, 10.0, 23.0, 10.0),
                            child: ExpansionTile(
                                title: Text(
                                    'Condition',
                                    style: RelovedTypography.headline3,
                                ),
                                onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                children: <Widget>[
                                    Container(
                                        height: 64,
                                        child: _buildConditionList(),
                                    ),
                                ],
                            ),
                        ),
                    ),
                    Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: RelovedColors.black.withOpacity(0.2),
                    ),
                    Container(
                        margin: EdgeInsets.all(21.0),
                        child: RaisedButton(
                            onPressed: () => print('button pressed'),
                            child: Container(
                                height: 50.0,
                                child: Center(
                                    child: Text('Done', style: RelovedTypography.buttonText),
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}

Widget _buildColorsList() {
    final int itemCount = 10;
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 21.0, right: 23.0, bottom: 29.0),
        itemBuilder: (BuildContext context, int index) {
            if (index >= itemCount) {
                return null;
            }
            return _buildColors();
        },
        separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
                width: 14.0,
            );
        },
        itemCount: itemCount,
    );
}

Widget _buildColors() {
    RandomColor _randomColor = RandomColor();
    final color = _randomColor.randomColor();
    return ButtonTheme(
        padding: EdgeInsets.all(0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0,
        height: 0,
        child: FlatButton(
            onPressed: () => print('selected color: '+color.toString()),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Container(
                        width: 72.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: RelovedColors.veryLightPink),
                            shape: BoxShape.circle,
                            color: color,
                        ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                        'Color',
                        style: RelovedTypography.filterText
                    ),
                ],
            ),
        ),
    );
}

Widget _buildSizesList() {
    final sizes = [32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58];
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 21.0, right: 23.0, bottom: 29.0),
        itemBuilder: (BuildContext context, int index) {
            if (index >= sizes.length) {
                return null;
            }
            return _buildSizes(context, sizes[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
                width: 14.0,
            );
        },
        itemCount: sizes.length,
    );
}

Widget _buildSizes(context, size) {
    return ButtonTheme(
        padding: EdgeInsets.all(0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0,
        height: 0,
        child: FlatButton(
            onPressed: () => print('selected size: '+size.toString()),
            child: Container(
                width: 72.0,
                height: 72.0,
                decoration: BoxDecoration(
                    border: Border.all(color: RelovedColors.veryLightPink),
                    shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(
                        size.toString(),
                        style: Theme.of(context).textTheme.button.copyWith(color: RelovedColors.anthracite)
                    )
                ),
            ),
        ),
    );
}

Widget _buildMaterialList() {
    final materials = ['denim','cotton','leather','polyester','rayon'];
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 21.0, right: 23.0, bottom: 29.0),
        itemBuilder: (BuildContext context, int index) {
            if (index >= materials.length) {
                return null;
            }
            return _buildMaterials(context, materials[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
                width: 14.0,
            );
        },
        itemCount: materials.length,
    );
}

Widget _buildMaterials(context, material) {
    return ButtonTheme(
        padding: EdgeInsets.all(0.0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0,
        height: 35.0,
        child: FlatButton(
            onPressed: () => print('selected material: '+material.toString()),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 21.0),
                decoration: BoxDecoration(
                    border: Border.all(color: RelovedColors.veryLightPink),
                    borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                    child: Text(
                        material.toString().toUpperCase(),
                        style: RelovedTypography.filterText
                    )
                ),
            ),
        ),
    );
}

Widget _buildConditionList() {
    final conditions = ['new with label','new without label','excellent','good','with flaws'];
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 21.0, right: 23.0, bottom: 29.0),
        itemBuilder: (BuildContext context, int index) {
            if (index >= conditions.length) {
                return null;
            }
            return _buildConditions(context, conditions[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
                width: 14.0,
            );
        },
        itemCount: conditions.length,
    );
}

Widget _buildConditions(context, material) {
    return ButtonTheme(
        padding: EdgeInsets.all(0.0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0,
        height: 35.0,
        child: FlatButton(
            onPressed: () => print('selected condition: '+material.toString()),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 21.0),
                decoration: BoxDecoration(
                    border: Border.all(color: RelovedColors.veryLightPink),
                    borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                    child: Text(
                        material.toString().toUpperCase(),
                        style: RelovedTypography.filterText
                    )
                ),
            ),
        ),
    );
}
