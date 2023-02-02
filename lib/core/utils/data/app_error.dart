import 'package:meta/meta.dart';

@sealed
abstract class AppError {
  AppError(this.message);

  final String message;

  R whenWithResult<R>(
    R Function(NetworkConnection) networkConnection,
    R Function(WrongApiInput) wrongApiInput,
    R Function(Unknown) unknownError,
    R Function(ValidationError) validationError,
    R Function(GeneralError) generalError,
    R Function(DiscussionExistError) discussionExistError,
    R Function(MagazineExistError) magazineExistError,
  ) {
    if (this is NetworkConnection) {
      return networkConnection(this as NetworkConnection);
    } else if (this is WrongApiInput) {
      return wrongApiInput(this as WrongApiInput);
    } else if (this is Unknown) {
      return unknownError(this as Unknown);
    } else if (this is ValidationError) {
      return validationError(this as ValidationError);
    } else if (this is GeneralError) {
      return generalError(this as GeneralError);
    } else if (this is DiscussionExistError) {
      return discussionExistError(this as DiscussionExistError);
    } else if (this is MagazineExistError) {
      return magazineExistError(this as MagazineExistError);
    } else {
      throw Exception('Unhendled part, could be anything');
    }
  }
}

// ignore: subtype_of_sealed_class
class NetworkConnection extends AppError {
  NetworkConnection(this.msg, this.exception) : super(msg);

  final Exception exception;
  final String msg;
}

// ignore: subtype_of_sealed_class
class WrongApiInput extends AppError {
  WrongApiInput(this.msg) : super(msg);

  final String msg;
}

// ignore: subtype_of_sealed_class
class Unknown extends AppError {
  Unknown(this.msg, this.exception) : super(msg);

  final Exception exception;
  final String msg;
}

class UnknownThrownError extends AppError {
  UnknownThrownError(this.msg, this.thrownError) : super(msg);

  final dynamic thrownError;
  final String msg;
}

class DiscussionExistError extends AppError {
  DiscussionExistError(this.msg, this.exception) : super(msg);

  final Exception exception;
  final String msg;
}

class MagazineExistError extends AppError {
  MagazineExistError(this.msg, this.exception) : super(msg);

  final Exception exception;
  final String msg;
}

// ignore: subtype_of_sealed_class
class ValidationError extends AppError {
  ValidationError(this.msg, this.exception) : super(msg);

  final Exception exception;
  final String msg;
}

// ignore: subtype_of_sealed_class
class GeneralError extends AppError {
  GeneralError(this.msg, this.exception) : super(msg);

  final Exception exception;
  final String msg;
}

class AlreadyRequestedError extends AppError {
  AlreadyRequestedError(this.msg, this.exception) : super(msg);

  final Exception exception;
  final String msg;
}
