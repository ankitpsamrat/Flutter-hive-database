import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTrasaction extends StatefulWidget {
  const AddTrasaction({super.key});

  @override
  State<AddTrasaction> createState() => _AddTrasactionState();
}

class _AddTrasactionState extends State<AddTrasaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const Text(
            'Add Transaction',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.lightBlueAccent,
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.attach_money,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: '0',
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.lightBlueAccent,
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.description,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: TextField(
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  // keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Note on transaction',
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  // maxLength: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.lightBlueAccent,
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.moving_sharp,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const ChoiceChip(
                label: Text('Income'),
                selectedColor: Colors.greenAccent,
                selected: true,
              ),
              const SizedBox(width: 12),
              const ChoiceChip(
                label: Text('Expense'),
                selected: false,
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Text('Data'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
