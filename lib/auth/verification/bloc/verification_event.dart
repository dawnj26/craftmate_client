part of 'verification_bloc.dart';

sealed class VerificationEvent extends Equatable {
  const VerificationEvent();

  @override
  List<Object> get props => [];
}

final class EmailInputChange extends VerificationEvent {
  final String email;
  const EmailInputChange({required this.email});
}

final class FormSubmitted extends VerificationEvent {
  const FormSubmitted();
}