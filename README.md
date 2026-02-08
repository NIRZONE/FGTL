# 🎯 GA Report Automation - Web Application

A beautiful, modern web application that automates your entire GA reporting workflow.

## ⚡ What It Does

**Before (Manual - 10 minutes):**
- Download two Excel files
- Open template
- Copy/paste data manually
- Wait for formulas
- Select and copy cells
- Share via WhatsApp

**After (Automated - 30 seconds):**
- Drag & drop two files
- Click "Process"
- Click "Copy"
- Done! ✨

## 🚀 Quick Start

### Run Locally
**Windows:** Double-click `start.bat`  
**Mac/Linux:** Run `./start.sh`  
Then visit: **http://localhost:5000**

### Deploy Online (FREE!)
1. Go to [render.com](https://render.com) and sign up
2. Create new Web Service from this repository
3. Deploy settings:
   - Build: `pip install -r requirements.txt`
   - Start: `gunicorn app:app`
4. Click "Create" - your app is live in 3 minutes!
5. Share the URL with your team

**See DEPLOYMENT_GUIDE.md for detailed instructions**

## ✨ Key Features

- ✅ **Template stays on server** - upload once, use forever
- ✅ **Drag & drop interface** - no file browsing
- ✅ **Automatic merging** - File 1 on top, File 2 below  
- ✅ **Auto-calculates** - Live GA formulas update automatically
- ✅ **One-click copy** - ready for WhatsApp/email
- ✅ **Beautiful UI** - modern dark theme with animations
- ✅ **Mobile friendly** - works on any device
- ✅ **Team ready** - share one URL, everyone can use it

## 📁 Files Included

```
├── app.py              # Flask backend server
├── requirements.txt    # Dependencies
├── templates/
│   └── index.html     # Web interface
├── static/
│   ├── css/style.css  # Styling
│   └── js/script.js   # Functionality
├── start.sh/.bat      # Easy startup
├── Procfile           # Deployment config
└── DEPLOYMENT_GUIDE.md # Full documentation
```

## 🎯 How to Use

### First Time (Admin)
1. Visit the web app
2. Upload your GA template (must have "GA Raw" and "Live GA" sheets)
3. Template is stored permanently

### Daily Use (Anyone)
1. Drag File 1 into first box
2. Drag File 2 into second box
3. Enter cell range (e.g., `A1:D10`)
4. Click "Process & Extract"
5. Click "Copy to Clipboard"
6. Paste anywhere!

## 🌐 Why Web-Based?

- **No installation** - just visit a URL
- **Access anywhere** - home, office, phone
- **Easy sharing** - send link to team
- **Always updated** - fix bugs once, everyone gets it
- **Centralized template** - one source of truth
- **24/7 availability** - always running

## 💡 Perfect For

- 📊 **Teams** who need to share GA reports
- 🏢 **Companies** automating routine tasks
- 📱 **Mobile users** who work on-the-go
- ⚡ **Anyone** tired of manual Excel work

## 🛡️ Secure & Private

- Template stored only on your server
- Files deleted after processing
- Add password protection if needed
- Deploy privately on company network

## 📞 Need Help?

Check out **DEPLOYMENT_GUIDE.md** for:
- Detailed deployment instructions
- Multiple hosting options
- Customization guide
- Troubleshooting
- Adding features

---

**Ready to automate?** Deploy now and save hours every week! 🚀
