---

# **DevOps – Week 2: CI Pipeline Basics**

[![Python application](https://github.com/danishcloudk/DevOps/actions/workflows/python-app.yml/badge.svg)](https://github.com/danishcloudk/DevOps/actions/workflows/python-app.yml)

## **📌 Goal**

Build a CI pipeline using GitHub Actions to automate testing, building, and validating your Python project.

---

# **📆 Weekly Tasks**

## **✅ Monday — Simple Application + Unit Test**

* Create a basic Python application.
* Add a unit test file.
* Push everything to GitHub.

---

## **✅ Tuesday — Add GitHub Actions Workflow**

* Create `.github/workflows/python-app.yml`.
* Configure workflow to run on push + pull requests.

---

## **✅ Wednesday — Add Test Step & Build Artifact**

* Ensure tests run automatically.
* Upload build/test output as workflow artifacts.

---

## **✅ Thursday — Add Pipeline Status Badge**

* Add GitHub Actions badge to README (already added above).

---

## **✅ Friday — Trigger Pipeline from PR**

* Create a new branch.
* Make a change and push it.
* Create a Pull Request.
* Verify workflow runs successfully and store screenshot in repo.

---

# **📁 Project Structure**

```
project/
│── README.md
│── app.py
│── test_app.py
│── .github/workflows/python-app.yml
│── pipeline_output/ (screenshots of workflow results)
```

