Return-Path: <blinux-list+bncBDGI3AUYYYCBBM7N3O7AMGQEQGZI4XQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C20A6365A
	for <lists+blinux-list@lfdr.de>; Sun, 16 Mar 2025 17:05:09 +0100 (CET)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-6fda1dcbdf1sf35508577b3.1
        for <lists+blinux-list@lfdr.de>; Sun, 16 Mar 2025 09:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742141108; cv=pass;
        d=google.com; s=arc-20240605;
        b=TWcJ1p8B5QlLq8IDofKmJS20EzH6Oea2w2Fl+LcxudY3srzg/Mwb4F50tjoSn9NpRf
         EU1Jya8LGdc3XELwAorTABP7uHcXZY2NnosBpCtmq52qTE/BPnXklqHV2XgY+a1THXe0
         cJ8evI3aIP3p9MRXejxRg8fOd2y606L3+VfXoQrGno18m+tXD8pb8KuziP6LUvKO0fb0
         OIeZBX/H5o1cMCy+2LJ64zfTbMkI81CWWe/qXWgIHtMbYaVYQEI26Y/3quKaP+cOvxzw
         TGB1DTtW0YjcQ7o7Rcj3+BEe0yPelAYIM0Y/u3g/rJNNHeScyVcRGn/MwjJR17lo+AJC
         LGXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=ZDihCWfRTm5uJlErIeSfHBr0lCPLbAjgEVmjwz5XYbk=;
        fh=vmrNQZNuQWTGNswL8HYeHS9hQA5Ux9efYL3so9pV4b8=;
        b=ARnlWWzElBxxiF7sg80+5HITD99zEKy9HtHXpIWDP5by26gRJyREOOJbWNHZB3d5bE
         rNGNhui5d49b3m3v2owwrKQ99wa8ZY4NWk9RC34jaUVyv5r6XoWuV0qvXxHUVVh84RAR
         EdwEAcw10mC3lo1e+XbygpljiDTc00jDAKAIDnafFZnkxjBZUyxYCTwdooGJr5T1NYkN
         kWhM/JLJJZjiUdVZrmldzsVoeZGvpKdToPozSO4XS8y1JYUMsoyxxbnvrEPo79Rol5YK
         XwBHN2ykFY5qhhOf0V3wFk9a07E/FJbyU+hWF4JkhKxSCxOTD1TaklGYu0cJP/IHFWKV
         TQAg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742141108; x=1742745908;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZDihCWfRTm5uJlErIeSfHBr0lCPLbAjgEVmjwz5XYbk=;
        b=wpEioR/ohnlu+HbD5ua2PPKl9DK1mGp2b8kEmIPesRPcIu+X0M3o9WSfFKr/VYYxGo
         5D6hcFaFa/EGfMcs3L+2/W7p4kt5aLc14ugn/M/XaVKM/KPteqZknhdnlebtGscj248B
         hD1buTnDow7NMXwFBT/K91iU3OfyuzHTpPdbqziyf0TY04bcZXhccYSl0wRYcAmmyRRH
         Gf/5XO9zeWUzIXpZAmxx5Ya/hCQ87u8XpFQ97+g6NC4imTUbnSb0NVorrvwWww0GHaYb
         n6Pt7mmHrlfQ+cb8nbIC/kOdB1d3PBZI4KTakEQAez/5xGj8rQfkvPqfNNI2NAKEUO/E
         8B5Q==
X-Forwarded-Encrypted: i=2; AJvYcCUd/stneu2dUM55tfW4OnzIkccPh0659wSmvULkFyKwk6nlt8Qt17e+waoyRho+zd0tlwaNQQ==@lfdr.de
X-Gm-Message-State: AOJu0YxLQUnV+eTsW1Y710vkrs0Cps2ymR9JIut98CHSa5RiREUCZl6u
	PepM1VjbjEkBkdKyosCBPpqNmF6p759Z/PVeXvHJEcssX22t/ZiPgBG0TmiieoQ=
X-Google-Smtp-Source: AGHT+IEDyCd+GDKrojiPujffmgdhfvDxEanljjZ6LolMzOO1GdsKIbzAwo05o/FKJ6iShukVVRy5ug==
X-Received: by 2002:a05:6902:2008:b0:e5e:23c5:a8c8 with SMTP id 3f1490d57ef6-e63f652fe3amr11301089276.22.1742141107942;
        Sun, 16 Mar 2025 09:05:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARLLPAIdDNhTkNohMDVu1FktHxizQGHRwvzYgKYVTqrEqoduOQ==
Received: by 2002:a25:7e86:0:b0:e61:1c4c:6d6b with SMTP id 3f1490d57ef6-e63dc3cae07ls960269276.2.-pod-prod-02-us;
 Sun, 16 Mar 2025 09:05:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXzuSY/lR5TKfCMg6KPssUfYqo6kNUlGY5kGmW2ZcaqLHhLWeafCMik2auAJSmmC0GY6zn+2hYS4hXFYw==@gapps.redhat.com
X-Received: by 2002:a05:6902:2191:b0:e5d:defb:3774 with SMTP id 3f1490d57ef6-e63f65e2699mr11627377276.45.1742141106429;
        Sun, 16 Mar 2025 09:05:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742141106; cv=none;
        d=google.com; s=arc-20240605;
        b=ObyMr67dfl8CgEu//9x9EF7Dpas2HWoX0VAQQ6Z+fFdjbzCX/1RaK4zuFyyS2b/eHT
         9YjrXz4lv+CMJwFBtSsmPeyHPOqkotb7qBo8MfAUuDpqHMnOPiZxQmhhN766hjxAl3av
         oPVi93VeZUXmwwh1lYifIV/U+9ID5QcRyLCwTdofdalW5pepPmHqgIVLRXhlI9Eius53
         YhymswK9aO80BDJBrTMD9v9WkVHHSqEF9kQMwY2H/zjum4rXa24Y4wCrJUTPb1lNuIMz
         QqKoui3xs0zDhFi7XDBCD+1E2e10gM+2wKD0TaduYlXdyBccb9oBUgh44PFoIK2cuA5u
         H1mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=NVmA9u79F3mzGMvrEWfonbhE8SJB4RPvG9si5b61L4M=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=CNg93bepby3qsPMJLG9XKYJb6j8Xhix30xePM9M6y4Gam6NMConRvVF4oLiSNjA8Tg
         VD3q4fK4tOHBttM38m+uLisPAfXUJufBYScDVgaCBY23jG7HtGTPXwv124MNfDMMtXfy
         kq9fGVaJfyCXwOciMysbjbQENl7BeiV6zcCIkwqJzCrHDcghtZw3glNFPVdghYMTIx58
         z3eUmdGJ/+re1Lek6oIrNHcVN1l3TEgQI46UzCzmOPGU16ZLYTYL4r1LRy8YtpODuXb9
         06cMdzZMDzLTu9Oc+mBe7xZF8FiMiaxtmq4y00baHZFGSS3zcOxq1RMNVzCxaQ7rrkax
         qaRw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e63e5772ee5si6646047276.495.2025.03.16.09.05.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Mar 2025 09:05:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) client-ip=166.84.1.75;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-P3kyl20JOj2nT_MDsMRlxQ-1; Sun,
 16 Mar 2025 12:05:04 -0400
X-MC-Unique: P3kyl20JOj2nT_MDsMRlxQ-1
X-Mimecast-MFC-AGG-ID: P3kyl20JOj2nT_MDsMRlxQ_1742141104
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2CA7318004A9
	for <blinux-list@gapps.redhat.com>; Sun, 16 Mar 2025 16:05:04 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 244381954B33; Sun, 16 Mar 2025 16:05:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 21C891954B32
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 16:05:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A2E54180AB1C
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 16:05:03 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-14-ws9LuacpPVSy1kEDpBIX2A-1; Sun,
 16 Mar 2025 12:05:00 -0400
X-MC-Unique: ws9LuacpPVSy1kEDpBIX2A-1
X-Mimecast-MFC-AGG-ID: ws9LuacpPVSy1kEDpBIX2A_1742141100
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (1024 bits) server-digest SHA256)
	(No client certificate requested)
	by l2mail1.panix.com (Postfix) with ESMTPS id 4ZG2XQ6nXxzDS7
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 11:46:46 -0400 (EDT)
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4ZG2XQ292fz4qB3
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 11:46:46 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4ZG2XQ1ysPzfYm; Sun, 16 Mar 2025 11:46:46 -0400 (EDT)
Date: Sun, 16 Mar 2025 11:46:46 -0400
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: firefox or chromium Capturing A Table to a Text File
Message-ID: <Z9byZpI1w_r3jNYU@panix.com>
References: <E1ttmRL-000ND0-2x@wb5agz>
MIME-Version: 1.0
In-Reply-To: <E1ttmRL-000ND0-2x@wb5agz>
X-Mimecast-MFC-PROC-ID: MheB6NAo67WWtWk1AVURRuUrUWxPA75_F8FVd7NE-84_1742141100
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: f8U9y1JWikzSw28s0zP47o_y-mmJGEK8LximeDuRyiU_1742141104
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

You could try locating the temporary files containing the rendered data created by firefox.
First create a script containing the command

grep -l "some.*unique.*string.*in.*the.*display" *

Call this script stringhunt.
Then cd to locations where firefox may be creating its tmp files, such as /tmp for example
and run stringhunt.

If you get a filename,  run stringhunt > ~/myfile

Now myfile contains the name of the rendered temp file which will probably be long, complicated andtotally meaningless.

If this actually works you can manipulate the file, examine it or edit it with something like
vi $(cat ~/myfile)
or other tools to try extracting the actual data.

On the other hand this might not work because I haven't a clue if firefox even creates temp files of rendered text.
For all I know it is all done in RAM and no files are created.

Good luck, and may the farce be with you.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Schumer's Choice: Trump Wins Or Dems Lose  https://limerickdude.substack.com/p/schumers-choice-trump-wins-or-dems
Website: http://www.rudyvener.com


On Sun, Mar 16, 2025 at 06:45:59AM -0500, Martin McCormick wrote:
> Is it possible to save a table to a text file in either Chrome or
> Firefox?
> 
> 	I just had a heck of a scare at our house when our ISP
> had some sort of day-long melt-down that bricked our 2013-vintage
> Netgear router.  The router is actually fine and came right back
> up as soon as  the ISP stopped feeding it poison and started
> working properly again but I think it is time to retire this
> router and go with a Linux or FreeBSD-based router that lives on
> plain ASCII configuration files.
> 
> 	Our present router is a NETGEAR Router WNDR3400v2
> and probably might make a good access point as the hardware seems
> to be okay but I am sick and tired of dealing with the web
> interface for administering the router.  Web GUIS are not
> efficient for control as one must do everything the GUI way
> rather than what I call the easy way which is,  Edit the files in
> question.  Give the system a n update command and you're good to
> go.
> 
> 	For 25 years, I ran the DHCP and DNS boxes at a
> university before retirement so I know what I need to do.
> 
> 	The Netgear router has never been very blind-friendly
> because every browser I have tried on it has some sort of issue.
> Somewhere along the way, I was finally able to change the
> password because it comes with a default password that one should
> always change unless you want to let all your neighbors share
> your WiFi.
> 
> 	I could reset the router to gain access to it again but
> that would clear out the dedicated IP address tables I created
> over time.  Those tables are visible as I look at the "attached
> devices" tables so if I can capture those to a file or files, I
> can make the ASCII tables in to the sort of files that the ISC
> dhcp server uses which are ordinary text files.
> 
> 	Right now, when it prompts for a password, nothing I
> thought I was changing it to works.  I even tried the old default
> password and it no longer works either.
> 
> 	I tried backing up the router to a file which is a good
> thing anyway since all the settings including the rotten password
> are saved but this particular model of Netgear router uses some
> sort of proprietary format to the backup file which would be a
> major project to try to reverse engineer.
> 
> 	For those interested in such things, a number of folks
> are using mini PC's loaded with an open-source router program so
> you have to get a mini PC with two network interface cards and
> install Linux for FreeBSD depending on what router software one
> needs to run.
> 
> 	One NIC points to your ISP and the other is your home
> network, usually some private number space such as 192.168.x.x
> 
> 	The Netgear device has a mechanism in it's web GUI to let
> a person recover the system password but, you guessed it, the
> process only works on Internet Explorer, firefox and chrome.  It
> specifically doesn't work on safari which is what I used the time
> I tried to change the password but I've changed it to some unknown
> garbage and can't seem to get chrome or firefox to help me any.
> GRRR!
> 
> 	Anyway, right now, the Netgear is good so I want to copy
> the DHCP tables to a real good old text file and never see
> another web GUI on a router in my house as long as I live.
> 
> 	Seriously, web GUI's aren't evil but there are no
> standards for them so for something that is mission critical, one
> needs a basic lo-level connection like command lines and ASCII
> text.  They usually always work.
> 
> Thanks for any ideas on capturing the tables to a text file.
> 
> Martin McCormick
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

