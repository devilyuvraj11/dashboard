import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Calender extends StatefulWidget{
  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
   DateTime _selectedDay = DateTime.now();
   DateTime? _focusedDay;
   CalendarFormat _calendarFormat = CalendarFormat.month;

   String formatMonth(DateTime date){
   String fullMonth = DateFormat('MMMM').format(date);
   return fullMonth.length > 3 ? fullMonth.substring(0, 3) : fullMonth;
}

  @override
  Widget build(BuildContext context) {

  return Container(
    //height: 200,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15)
    ),
    child: TableCalendar(
      focusedDay: DateTime.now(),
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
      selectedDayPredicate: (day){
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay){
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      onFormatChanged: (format){
        if(_calendarFormat != format){
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay){
        _focusedDay = focusedDay;
      },
      headerStyle: HeaderStyle(
        titleTextStyle: const TextStyle(color: Colors.blue, fontSize: 12),
        formatButtonVisible: false,
        leftChevronIcon: const Icon(Icons.chevron_left, color: Colors.deepPurpleAccent,),
        rightChevronIcon: const Icon(Icons.chevron_right, color: Colors.deepPurpleAccent,),
        titleCentered: true,
        titleTextFormatter: (date, locale) => formatMonth(date) + ' ${date.year}'
      ),
      calendarStyle: const CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: Colors.purpleAccent,
          shape: BoxShape.circle,
        ),
        markersMaxCount: 1,
        todayDecoration: BoxDecoration(
            color: Colors.purpleAccent,
            shape: BoxShape.circle
        ),
        defaultTextStyle: TextStyle(color: Colors.deepPurpleAccent, fontSize: 12),
        weekendTextStyle: TextStyle(color: Colors.white, fontSize: 12),
        outsideDaysVisible: true
      ),
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.white),
        weekendStyle: TextStyle(color: Colors.white)
      ),
    ),
  );


}}