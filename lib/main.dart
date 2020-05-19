import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:flutterapp/theme.dart';

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
                    Container(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Theme(
                            data: _expansionTileTheme,
                            child: ExpansionTile(
                                title: Text(
                                    'Color',
                                    style: RelovedTypography.headline3,
                                ),
                                onExpansionChanged: (bool expanding) => print('expanding: '+expanding.toString()),
                                children: <Widget>[
                                    Container(
                                        height: 124,
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
                    Container(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Theme(
                            data: _expansionTileTheme,
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
                        padding: EdgeInsets.fromLTRB(21.0, 14.0, 6.0, 21.0),
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
                                        FlatButton(
                                            child: Text(
                                                'See list',
                                                style: Theme.of(context).textTheme.bodyText1.copyWith(
                                                    color: RelovedColors.pinkRed,
                                                    decoration: TextDecoration.underline,
                                                    fontWeight: FontWeight.w700
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                                Container(
                                    padding: EdgeInsets.only(right: 16.0),
                                    child: TextField(
                                        decoration: InputDecoration(
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
                    Container(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Theme(
                            data: _expansionTileTheme,
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
                    Container(
                        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Theme(
                            data: _expansionTileTheme,
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
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(14.0),
        itemBuilder: (context, i) {
            if (i >= 10) {
                return null;
            }
            return _buildColors();
        });
}

Widget _buildColors() {
    RandomColor _randomColor = RandomColor();
    final color = _randomColor.randomColor();
    return FlatButton(
        padding: EdgeInsets.all(0.0),
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
    );
}

Widget _buildSizesList() {
    final sizes = [32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(14.0),
        itemBuilder: (context, i) {
            if (i >= sizes.length) {
                return null;
            }
            return _buildSizes(context, sizes[i]);
        });
}

Widget _buildSizes(context, size) {
    return FlatButton(
        padding: EdgeInsets.all(0.0),
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
    );
}

Widget _buildMaterialList() {
    final materials = ['denim','cotton','leather','polyester','rayon'];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(14.0),
        itemBuilder: (context, i) {
            if (i >= materials.length) {
                return null;
            }
            return _buildMaterials(context, materials[i]);
        });
}

Widget _buildMaterials(context, material) {
    return FlatButton(
        onPressed: () => print('selected material: '+material.toString()),
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
            height: 35.0,
            padding: EdgeInsets.fromLTRB(21.0, 8, 21.0, 8),
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
    );
}

Widget _buildConditionList() {
    final conditions = ['new with label','new without label','excellent','good','with flaws'];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(14.0),
        itemBuilder: (context, i) {
            if (i >= conditions.length) {
                return null;
            }
            return _buildConditions(context, conditions[i]);
        });
}

Widget _buildConditions(context, material) {
    return FlatButton(
        onPressed: () => print('selected material: '+material.toString()),
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
            height: 35.0,
            padding: EdgeInsets.fromLTRB(21.0, 8, 21.0, 8),
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
    );
}
