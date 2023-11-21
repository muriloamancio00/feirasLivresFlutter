import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'view_delet_feira_model.dart';
export 'view_delet_feira_model.dart';

class ViewDeletFeiraWidget extends StatefulWidget {
  const ViewDeletFeiraWidget({
    super.key,
    int? acao,
  })  : acao = acao ?? 1;

  final int acao;

  @override
  _ViewDeletFeiraWidgetState createState() => _ViewDeletFeiraWidgetState();
}

class _ViewDeletFeiraWidgetState extends State<ViewDeletFeiraWidget> {
  late ViewDeletFeiraModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewDeletFeiraModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.acao == 1) {
        setState(() {
          _model.visualizar = true;
          _model.alterar = false;
          _model.remover = false;
        });
      } else {
        if (widget.acao == 2) {
          setState(() {
            _model.alterar = true;
            _model.visualizar = false;
            _model.remover = false;
          });
        } else {
          setState(() {
            _model.remover = true;
            _model.alterar = false;
            _model.visualizar = false;
          });
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.network(
                  'https://images.unsplash.com/photo-1515339760107-1952b7a08454?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxN3x8d2hpdGV8ZW58MHx8fHwxNzAwMjM5NTgwfDA&ixlib=rb-4.0.3&q=80&w=1080',
                ).image,
              ),
            ),
            child: Stack(
              alignment: const AlignmentDirectional(0.0, -1.0),
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ],
                  ),
                ),
                if (widget.acao == 3)
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      'Remover',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                if (_model.exibir == true)
                  Align(
                    alignment: const AlignmentDirectional(-0.92, -0.71),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          _model.visualizar = true;
                        });
                      },
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: const BoxDecoration(
                          color: Color(0xBFFFFFFF),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.turn_left,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (_model.exibir == true)
                  Align(
                    alignment: const AlignmentDirectional(0.89, -0.73),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          _model.remover = true;
                          _model.delet = FlutterFlowTheme.of(context).error;
                        });
                      },
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: const BoxDecoration(
                          color: Color(0xBFFFFFFF),
                        ),
                        child: Icon(
                          Icons.delete_sweep,
                          color: _model.delet,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                if (widget.acao == 1)
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      'Visualizar',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Stack(
                    children: [
                      if (widget.acao == 3)
                        Text(
                          'Voce escolheu Remover',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      if (widget.acao == 1)
                        Text(
                          'Voce escolheu visualizar',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FutureBuilder<List<FeirasRow>>(
                      future: (_model.requestCompleter ??=
                              Completer<List<FeirasRow>>()
                                ..complete(FeirasTable().queryRows(
                                  queryFn: (q) => q,
                                )))
                          .future,
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<FeirasRow> listViewFeirasRowList = snapshot.data!;
                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewFeirasRowList.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 15.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewFeirasRow =
                                listViewFeirasRowList[listViewIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 130.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xCC9B9B9B),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(2.0),
                                    bottomRight: Radius.circular(2.0),
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 3.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          listViewFeirasRow.nome,
                                          'x',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: const Color(0xFF000A14),
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: Container(
                                            width: 100.0,
                                            height: 110.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xC0FFFFFF),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xC0FFFFFF),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.00, -1.00),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                5.0, 5.0),
                                                    child: Container(
                                                      width: 90.0,
                                                      height: 90.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          listViewFeirasRow
                                                              .foto,
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/semcodar-tutorialff-sr517e/assets/o8j8ixxbs39v/meric-dagli-DtCEcY1k_qE-unsplash.jpg',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Container(
                                            height: 110.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xC0FFFFFF),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(6.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Abre : ${valueOrDefault<String>(
                                                        listViewFeirasRow
                                                            .diaSemana,
                                                        'x',
                                                      )}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: const Color(
                                                                    0xFF000A14),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(
                                                      const SizedBox(height: 13.0))
                                                  .around(
                                                      const SizedBox(height: 13.0)),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Container(
                                              width: 86.0,
                                              height: 110.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xC0FFFFFF),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Stack(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  40.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0xBFFFFFFF),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                        ),
                                                        child: Visibility(
                                                          visible:
                                                              _model.remover ==
                                                                  true,
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.00, 0.00),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await FeirasTable()
                                                                    .delete(
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eq(
                                                                    'id',
                                                                    valueOrDefault<
                                                                        int>(
                                                                      listViewFeirasRow
                                                                          .id,
                                                                      0,
                                                                    ),
                                                                  ),
                                                                );
                                                                setState(() =>
                                                                    _model.requestCompleter =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted();
                                                              },
                                                              child: const Icon(
                                                                Icons
                                                                    .delete_sweep,
                                                                color: Color(
                                                                    0xFFCF0000),
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  40.0),
                                                      child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0xBFFFFFFF),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    10.0),
                                                          ),
                                                        ),
                                                        child: Icon(
                                                          Icons.view_week,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ].divide(const SizedBox(height: 8.0)),
      ),
    );
  }
}
