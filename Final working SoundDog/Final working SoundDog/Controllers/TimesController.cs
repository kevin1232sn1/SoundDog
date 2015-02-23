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
    public class TimesController : Controller
    {
        private Entities db = new Entities();

        // GET: Times
        public async Task<ActionResult> Index()
        {
            return View(await db.Times.ToListAsync());
        }

        // GET: Times/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Time time = await db.Times.FindAsync(id);
            if (time == null)
            {
                return HttpNotFound();
            }
            return View(time);
        }

        // GET: Times/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Times/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,StartTime,EndTime")] Time time)
        {
            if (ModelState.IsValid)
            {
                db.Times.Add(time);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(time);
        }

        // GET: Times/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Time time = await db.Times.FindAsync(id);
            if (time == null)
            {
                return HttpNotFound();
            }
            return View(time);
        }

        // POST: Times/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,StartTime,EndTime")] Time time)
        {
            if (ModelState.IsValid)
            {
                db.Entry(time).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(time);
        }

        // GET: Times/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Time time = await db.Times.FindAsync(id);
            if (time == null)
            {
                return HttpNotFound();
            }
            return View(time);
        }

        // POST: Times/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Time time = await db.Times.FindAsync(id);
            db.Times.Remove(time);
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
