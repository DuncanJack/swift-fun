// -------------------------------------------------------------------------------
// Representing and Throwing Errors
// -------------------------------------------------------------------------------

enum NotAvailablerror: ErrorProtocol {
    case busy
    case outOfOffice
}

// throw NotAvailablerror.busy

// -------------------------------------------------------------------------------
// Handling Errors
// -------------------------------------------------------------------------------

// Propogating Errors Using Throwing Functions