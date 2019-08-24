Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C17919BAE0
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 04:25:58 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E2D2D300CB6E;
	Sat, 24 Aug 2019 02:25:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 691BA600C4;
	Sat, 24 Aug 2019 02:25:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55ED54A486;
	Sat, 24 Aug 2019 02:25:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7O2Ph8D023485 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 22:25:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5AF54191BF; Sat, 24 Aug 2019 02:25:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx25.extmail.prod.ext.phx2.redhat.com
	[10.5.110.66])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55B3D18B90
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 02:25:40 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0C801102700D
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 02:25:40 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id g7so8444969oia.8
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 19:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=uoTXCKgHQ4ddt1AQ3jMMM7xrLhK5+TLnR0KoZ5xQ3lE=;
	b=tWTgucCJwGfWSQKLi5MHdKEWDtbD/7x5cinW5xQZ6RibON4hwxUF1EXgldeS0VHSEx
	akb0fgrgNn7jiqPu7FOn76FB/hytQLO2GUAD4ObnH17Hahox7y4eowWyCy3fUybTNMWV
	hlQ+RguXOTUWsYrYuheMSRewSC66s9KOfJpwkvzJA9+oSGZKe/Lntb6oPNp/RJa7rBUN
	QCxLaR+exykekvsuHct0pYoPppXnYTupHZuNEr8CzI396hDseSkXCthAD9Jb1iyoJk4a
	SMRGN7X3hzTcGBNgI0pDwV0Eoqw8abPbABPgrOIIP711K6LS3mPpr1WKBX9mp4dZlu2e
	WrVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=uoTXCKgHQ4ddt1AQ3jMMM7xrLhK5+TLnR0KoZ5xQ3lE=;
	b=bQdJsI+UXqUZQB8SzT3RJ69gPLscSRwyD7YMExe1LuUcqSIfh50O+i/h02NqNgCsoE
	jBZYZKLnMOe1I/n961mlMXafdrTAmrlbjDvfqnovFbWu515aP4XFNx/+fMma1835VlwN
	uJ4aRCyjdBrnsqgO8uhxPcGZU6p/LGmfbJlQVIT3YxWS+LHaUdiHpWIbFs0jbjyONAu4
	mc7NE1V7LZLdbw062HeIEQTI20pEVN54aQ+fNxWrNfbwiHr7NYYM6OOXOJKB77UyQv3I
	m7oOKsiVttOaBFHerOehBtaZ3dJPAI79XWmmtp+G/nyZGrpP41dK3/Gu9kl639TA7CV8
	hu/w==
X-Gm-Message-State: APjAAAVDchS2b++IZiVmcazP6hvrDQpfkgUiBLx124d5hIMefky/ERek
	ZkoVjchc5GmN0Z0DgzVVqM7Gcw6atYgvQJP/HjnM7w==
X-Google-Smtp-Source: APXvYqxUqeyIivhTDlb4riyDB7Qkil+uRL7ldCIwk2GPr8isUr87bqb/0FEv9PGYdS/vKKi8/PzDC+ZDX6/CTqhscXE=
X-Received: by 2002:aca:5b04:: with SMTP id p4mr5346582oib.161.1566613539083; 
	Fri, 23 Aug 2019 19:25:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Fri, 23 Aug 2019 19:25:38 -0700 (PDT)
In-Reply-To: <alpine.NEB.2.21.1908232114580.20438@panix1.panix.com>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
	<Pine.LNX.4.64.1908231729330.11612@server2.shellworld.net>
	<alpine.NEB.2.21.1908232114580.20438@panix1.panix.com>
Date: Sat, 24 Aug 2019 02:25:38 +0000
Message-ID: <CAO2sX32GhipoPjeRWNbCAT88bPgQYjOAoti50xXKafChDJ3H=w@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.66]);
	Sat, 24 Aug 2019 02:25:40 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]);
	Sat, 24 Aug 2019 02:25:40 +0000 (UTC) for IP:'209.85.167.182'
	DOMAIN:'mail-oi1-f182.google.com'
	HELO:'mail-oi1-f182.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.167.182 mail-oi1-f182.google.com 209.85.167.182
	mail-oi1-f182.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.66
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Sat, 24 Aug 2019 02:25:57 +0000 (UTC)

Personally, it would be nice if web designers would stop shoehorning
JavaScript and other rich web stuff into pages where the same thing
could be accomplished with plain, old HTML, would stop setting cookies
when they aren't needed, and would do a sanity check to ensure their
forms work properly with keyboard and tabbing.

That said, a site-side fix to any problem only fixes it for that
specific site, while a browser-side fix could in theory fix it across
many different sites.

Sadly, there doesn't seem to be much of a happy medium between
lumbering behemoths like Firefox and Chromium that weigh hundreds of
megabytes by the time you add up everything they need to run, and
lightweight html pagers like links, elinks, and lynx that are arguably
only good for accessing web 1.0 content.

I'd love to ditch Firefox and the GUI in general, but for the sake of
my sanity, I don't think I could make the move without at least the
following features in a text web browser:

Enough JavaScript/HTML5 support to display pages that use them to load
content, ideally disabled by default with a easy method of toggling it
on when needed or permanently allowing specified sites.

Navigational hotkeys comparable to those provided when using a
Graphical browser with Orca, NVDA, or JAWS(seriously, some of these
are so handy I wonder how sighted people with mice(including my own
past self) make due without them.

The option to turn multi-column web pages into single column pages or
to stretch the active cell in a table or element in a form to fit the
screen width.

And my dream web browser would probably nearly replicate the
Firefox+Orca user experience minus the occasional sluggishness
introduced by the GUI and Python while having auto-converting all
clickables to something that can be activated with spacebar and/or
enter/return and adds in basic keyboard shortcuts for
temporarily/permanently allowing JavaScript/Cookies in the active
tab/from the site in the active tab(If starting with Firefox-like
keybindings, perhaps ctrl+J to toggle JavaScript and ctrl+K to toggle
cookies adding shift to change the permission permanently).

Sadly, I don't know the first thing about coding a web browser, and
given how long the well known text browsers have been lagging in
regards to the most essential aspects of the modern web, I can only
hope their developers have their reasons for keeping their browsers in
the past and aren't just too lazy/don't know how to modernize their
projects.

On 8/24/19, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Actually, sighted power users prefer text-based browsers when and where
> possible in order to avoid javascript and all that goes with it.  Those
> are decidedly not accessibility users in our sense but do want faster
> access than can be had using graphical browsers.
>
> On Fri, 23 Aug 2019, Linux for blind general discussion wrote:
>
>> Date: Fri, 23 Aug 2019 20:32:51
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: amazon?
>>
>> Well, are you implying I should be forced to run a graphical
>> screen-reader
>> such as Orca, so I can shop at Amazon? I suppose if there were something
>> much
>> better than Orca, I would certainly try it out. My Wife wants me to
>> try-and-shop at Amazon from a Chrome Book. I will experiment.
>> Chime
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
