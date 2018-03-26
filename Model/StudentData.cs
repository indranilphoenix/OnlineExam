using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentData
/// </summary>
public class StudentData
{

    private string _email;
    private string _question;
    private string _answer;
    public StudentData()
    {

    }

    public string Email
    {
        get
        { return _email; }
        set { _email = value; }
    }
    public string Question
    {
        get
        { return _question; }
        set { _question = value; }

    }
    public string Answer
    {
        get
        { return _answer; }
        set { _answer = value; }

    }
}