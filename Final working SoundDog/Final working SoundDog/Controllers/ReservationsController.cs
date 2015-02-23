using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Final_working_SoundDog.Models;

namespace Final_working_SoundDog.Controllers
{
    public class ReservationsController : Controller
    {
        private Entities db = new Entities();

        // GET: Reservations
        public async Task<ActionResult> Index()
        {
            var reservations = db.Reservations.Include(r => r.AspNetUser).Include(r => r.Room).Include(r => r.Time);
            return View(await reservations.ToListAsync());
        }

        // GET: Reservations/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reservation reservation = await db.Reservations.FindAsync(id);
            if (reservation == null)
            {
                return HttpNotFound();
            }
            return View(reservation);
        }

        // GET: Reservations/Create
        public ActionResult Create()
        {
            ViewBag.UserId = new SelectList(db.AspNetUsers, "Id", "UserName");
            ViewBag.RoomId = new SelectList(db.Rooms, "Id", "Name");
            ViewBag.TimeId = new SelectList(db.Times, "Id", "StartTime");
            return View();
        }

        // POST: Reservations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,UserId,Date,TimeId,RoomId,ExtraInfo,DateReservationCreated,ReservationActive,ReservationChecked")] Reservation reservation)
        {
            if (ModelState.IsValid)
            {
                db.Reservations.Add(reservation);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.UserId = new SelectList(db.AspNetUsers, "Id", "UserName", reservation.UserId);
            ViewBag.RoomId = new SelectList(db.Rooms, "Id", "Name", reservation.RoomId);
            ViewBag.TimeId = new SelectList(db.Times, "Id", "StartTime", reservation.TimeId);
            return View(reservation);
        }

        // GET: Reservations/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reservation reservation = await db.Reservations.FindAsync(id);
            if (reservation == null)
            {
                return HttpNotFound();
            }
            ViewBag.UserId = new SelectList(db.AspNetUsers, "Id", "UserName", reservation.UserId);
            ViewBag.RoomId = new SelectList(db.Rooms, "Id", "Name", reservation.RoomId);
            ViewBag.TimeId = new SelectList(db.Times, "Id", "StartTime", reservation.TimeId);
            return View(reservation);
        }

        // POST: Reservations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,UserId,Date,TimeId,RoomId,ExtraInfo,DateReservationCreated,ReservationActive,ReservationChecked")] Reservation reservation)
        {
            if (ModelState.IsValid)
            {
                db.Entry(reservation).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.UserId = new SelectList(db.AspNetUsers, "Id", "UserName", reservation.UserId);
            ViewBag.RoomId = new SelectList(db.Rooms, "Id", "Name", reservation.RoomId);
            ViewBag.TimeId = new SelectList(db.Times, "Id", "StartTime", reservation.TimeId);
            return View(reservation);
        }

        // GET: Reservations/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reservation reservation = await db.Reservations.FindAsync(id);
            if (reservation == null)
            {
                return HttpNotFound();
            }
            return View(reservation);
        }

        // POST: Reservations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Reservation reservation = await db.Reservations.FindAsync(id);
            db.Reservations.Remove(reservation);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
