part of 'edit_project_bloc.dart';

sealed class EditProjectState extends Equatable {
  const EditProjectState();
  
  @override
  List<Object> get props => [];
}

final class EditProjectInitial extends EditProjectState {}
