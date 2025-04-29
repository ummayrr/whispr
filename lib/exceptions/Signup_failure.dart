class SignUpWithEmailAndPasswordFailure{
  final String message;
  const SignUpWithEmailAndPasswordFailure([this.message="an unknown error occured"]); 
  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch (code) {
      case 'weak password':
        return SignUpWithEmailAndPasswordFailure('Please Enter a stronger password');
      case 'invalid-email':
        return SignUpWithEmailAndPasswordFailure('Email is not valid');
      case 'email-already-in-use':
        return SignUpWithEmailAndPasswordFailure('An account already exists for that email');
      case 'operation-not-allowed':
        return SignUpWithEmailAndPasswordFailure('Operation is not allowed.   Please contact support');
      case 'user-disabled':
        return SignUpWithEmailAndPasswordFailure('This user has been disables');
      default:
      return SignUpWithEmailAndPasswordFailure();
    }
  }
}