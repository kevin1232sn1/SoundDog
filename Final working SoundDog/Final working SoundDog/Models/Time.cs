//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Final_working_SoundDog.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Time
    {
        public Time()
        {
            this.Reservations = new HashSet<Reservation>();
        }
    
        public int Id { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
    
        public virtual ICollection<Reservation> Reservations { get; set; }
    }
}
