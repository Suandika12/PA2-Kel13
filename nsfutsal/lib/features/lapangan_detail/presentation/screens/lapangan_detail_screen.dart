import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:nsfutsal/features/lapangan/presentation/screen/lapangan_screen.dart';
import 'package:nsfutsal/shared/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:file_picker/file_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';

// import '../../../../data/models/dropped_file_model.dart';
import '../../../../shared/theme.dart';
import '../../data/models/dropped_file_model.dart';
import '../../domain/entities/booking_lapangan_entity.dart';
import '../bloc/lapangan_detail_bloc.dart';
import '../bloc/lapangan_detail_event.dart';
import '../bloc/lapangan_detail_state.dart';
import '../shared/custom_filled_button.dart';

const List<String> _opsiPembayaran = [
  'Down Payment',
  'Paid Off',
];

class LapanganDetailScreen extends StatefulWidget {
  final int lapanganId;
  static const routeName = '/lapangan-detail';

  const LapanganDetailScreen({super.key, required this.lapanganId});

  @override
  State<LapanganDetailScreen> createState() => _LapanganDetailScreenState();
}

class _LapanganDetailScreenState extends State<LapanganDetailScreen> {
  bool _isPaymentMethodSelected = false;

  bool isHighLighted = false;
  DroppedFile? droppedFile;
  FilePickerResult? result;
  String _selectedPaymentMethod = '';
  int durasi = 0;
  double totalPrice = 0;
  @override
  void initState() {
    super.initState();
    context.read<LapanganDetailBloc>().add(
          GetLapanganDetailEvent(lapanganId: widget.lapanganId),
        );
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _opsiPembayaranController =
      TextEditingController();
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();
  final TextEditingController _durasiController = TextEditingController();

  Future<TimeOfDay> _pickTime(BuildContext context) async {
    final TimeOfDay? t = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    return t!;
  }

  Future<TimeOfDay?> _selectStartTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    return pickedTime;
  }

  Future<TimeOfDay?> _selectEndTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    return pickedTime;
  }

  Future<void> _pickStartTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await _selectStartTime(context);
    if (pickedTime != null) {
      setState(() {
        _startTimeController.text = pickedTime.format(context);
        calculateDuration();
      });
    }
  }

  Future<void> _pickEndTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await _selectEndTime(context);
    if (pickedTime != null) {
      setState(() {
        _endTimeController.text = pickedTime.format(context);
        calculateDuration();
      });
    }
  }

  void calculateDuration() {
    if (_startTimeController.text.isNotEmpty &&
        _endTimeController.text.isNotEmpty) {
      final TimeOfDay startTime = TimeOfDay(
          hour: int.parse(_startTimeController.text.split(':')[0]),
          minute:
              int.parse(_startTimeController.text.split(':')[1].split(" ")[0]));
      final TimeOfDay endTime = TimeOfDay(
          hour: int.parse(_endTimeController.text.split(':')[0]),
          minute:
              int.parse(_endTimeController.text.split(':')[1].split(" ")[0]));

      final Duration duration = Duration(hours: endTime.hour - startTime.hour);

      // You can use 'duration.inMinutes' to get the duration in minutes instead
      _durasiController.text = duration.inHours.toString();
      durasi = duration.inHours;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LapanganDetailBloc, LapanganDetailState>(
        listener: (context, state) {
          if (state is LapanganDetailRequestedState) {
            EasyLoading.showSuccess(state.message);
            AutoRouter.of(context).pop();
          } else if (state is LapanganDetailErrorState) {
            EasyLoading.showError(state.message);
            AutoRouter.of(context).pop();
          }
        },
        builder: (context, state) {
          if (state is LapanganDetailErrorState) {
            return Scaffold(
              body: Center(
                child: Text(
                  "There was an error loading the data",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
              ),
            );
          } else if (state is LapanganDetailLoadedState) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: dark,
                  ),
                  onPressed: () {
                    AutoRouter.of(context).pop();
                  },
                ),
              ),
              body: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      // room image
                      Container(
                        height: 218,
                        width: 311,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: softGray,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                                state.lapangan.image.parseBaseUrlImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // room name
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          state.lapangan.name,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: dark,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // room opsiPembayaran
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          state.lapangan.opsiPembayaran,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: dark,
                          ),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Start date input
                            const SizedBox(height: 10),
                            TextFormField(
                                controller: _startTimeController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Fill the Play Time';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Play Time',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17.0),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      _pickStartTime(context);
                                      setState(() {
                                        calculateTotalPrice();
                                      });
                                    },
                                    icon: const Icon(Icons.calendar_today),
                                  ),
                                )),
                            // End date input
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _endTimeController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Fill the End Time';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'End of Play',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    _pickEndTime(context);
                                    setState(() {
                                      calculateTotalPrice();
                                    });
                                  },
                                  icon: const Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),

                            TextField(
                              controller: _durasiController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                hintText: 'Duration',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Total Harga',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                  ),
                                ),
                                Text(
                                  'Rp. $totalPrice',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 20),

                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Payment Method',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Divider
                                  Divider(
                                    color: Colors.grey.withOpacity(0.2),
                                    thickness: 2,
                                  ),
                                  // List of payment methods
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: _opsiPembayaran.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            _selectedPaymentMethod =
                                                _opsiPembayaran[index];
                                            _isPaymentMethodSelected = true;
                                          });
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _opsiPembayaran[index],
                                              style: TextStyle(
                                                color: dark,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Radio(
                                              value: _opsiPembayaran[index],
                                              groupValue:
                                                  _selectedPaymentMethod,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedPaymentMethod =
                                                      value!;
                                                  checkPayment();
                                                });
                                              },
                                              activeColor: chocolate,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  Visibility(
                                    visible: !_isPaymentMethodSelected,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'Please select a payment method',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Payment Mandiri(VA) : 1070005772308',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // File selection
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 300,
                              child: // file picker
                                  Column(
                                children: [
                                  Expanded(
                                    child: buildDecoration(
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: result != null
                                                ? // set image from file picker and change button to remove file
                                                Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 200,
                                                        width: 200,
                                                        child: Image.file(
                                                          File(result!.files
                                                              .single.path!),
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ElevatedButton.icon(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15.0),
                                                          backgroundColor:
                                                              const Color(
                                                                  0xFF3493C9),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        17.0),
                                                          ),
                                                        ),
                                                        icon: const Icon(
                                                            Icons.delete,
                                                            size: 16),
                                                        label: const Text(
                                                            'Hapus File'),
                                                        onPressed: () {
                                                          setState(() {
                                                            result = null;
                                                            droppedFile = null;
                                                          });
                                                        },
                                                      ),
                                                    ],
                                                  )
                                                : Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Icon(
                                                        Icons.cloud_upload,
                                                        size: 50,
                                                        color:
                                                            Color(0xFF918383),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ElevatedButton.icon(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15.0),
                                                          backgroundColor:
                                                              const Color(
                                                                  0xFF3493C9),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        17.0),
                                                          ),
                                                        ),
                                                        icon: const Icon(
                                                            Icons.search,
                                                            size: 16),
                                                        label: const Text(
                                                            'Choose File'),
                                                        onPressed: () async {
                                                          result =
                                                              await FilePicker
                                                                  .platform
                                                                  .pickFiles(
                                                            type:
                                                                FileType.custom,
                                                            allowedExtensions: [
                                                              // only image allowed
                                                              'jpg',
                                                              'png',
                                                              'jpeg',
                                                            ],
                                                          );
                                                          if (result != null &&
                                                              result!.files
                                                                  .isNotEmpty) {
                                                            final file = result
                                                                ?.files.single;
                                                            final droppedFile =
                                                                DroppedFile(
                                                              name: file!.name,
                                                              url: file.path ??
                                                                  '',
                                                              mine:
                                                                  file.extension ??
                                                                      '',
                                                              bytes: file.size,
                                                              size: file.size
                                                                  .toString(),
                                                            );
                                                            setState(() => this
                                                                    .droppedFile =
                                                                droppedFile);
                                                          } else {
                                                            // Tampilkan pesan kesalahan atau lakukan tindakan lain jika tidak ada file yang dipilih
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Error'),
                                                                  content: Text(
                                                                      'Anda harus memilih file'),
                                                                  actions: [
                                                                    ElevatedButton(
                                                                      child: Text(
                                                                          'OK'),
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.of(context).pop(),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            CustomFilledButton(
                              height: 50,
                              gradient: gradient,
                              text: "Payment",
                              icon: const Icon(
                                Icons.payments,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  requestLapangan(state, context);
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              bottomSheet: Container(
                height: 0, // Adjust the height according to your needs
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            );
          } else {
            return FutureBuilder(
              future: Future.delayed(const Duration(seconds: 1)),
              builder: (context, snapshot) {
                return Scaffold(
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Loading...",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  void requestLapangan(LapanganDetailLoadedState state, BuildContext context) {
    BookingLapanganEntity requestLapanganEntity = BookingLapanganEntity(
        lapangan: state.lapangan,
        opsiPembayaran: _selectedPaymentMethod,
        startTime: _startTimeController.text,
        endTime: _endTimeController.text,
        durasi: int.parse(_durasiController.text));
    BlocProvider.of<LapanganDetailBloc>(context)
        .add(RequestLapanganEvent(requestLapanganEntity, droppedFile));
  }

  Widget buildDecoration({required Widget child}) {
    final colorBackground = isHighLighted ? Colors.blue.shade100 : Colors.white;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        color: colorBackground,
        padding: const EdgeInsets.all(10.0),
        child: DottedBorder(
          borderType: BorderType.RRect,
          color: Colors.blue.shade100,
          strokeWidth: 3,
          padding: EdgeInsets.zero,
          dashPattern: const [8, 4],
          radius: const Radius.circular(10),
          child: child,
        ),
      ),
    );
  }

  void calculateTotalPrice() {
    totalPrice = 100000 * durasi.toDouble();
  }

  void checkPayment() {
    if (_selectedPaymentMethod == 'Paid Off') {
      totalPrice = totalPrice;
    } else if (_selectedPaymentMethod == 'Down Payment') {
      totalPrice = totalPrice * 0.5;
    }
  }
}
