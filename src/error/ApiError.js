class ApiError extends Error {
  constructor(status, message, errors) {
    super(message)
    this.status = status;
    if (errors !== undefined) {
      this.errors = errors;
    }
  }

  static badRequest(message, errors) {
    return new ApiError(400, message || 'Request cannot be processed', errors)
  }

  static unauthorized(message) {
    return new ApiError(401, message || 'Unauthorized')
  }

  static forbidden(message) {
    return new ApiError(403, message || 'Forbidden')
  }

  static notFound(message) {
    return new ApiError(404, message || 'Not found')
  }

  static internalServerError(message) {
    return new ApiError(500, message || 'Internal server error')
  }

}

export default ApiError
