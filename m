Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3F60691
	for <lists+blinux-list@lfdr.de>; Fri,  5 Jul 2019 15:28:09 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 68D8185A04;
	Fri,  5 Jul 2019 13:28:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC5896AD28;
	Fri,  5 Jul 2019 13:27:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9291D18184AD;
	Fri,  5 Jul 2019 13:27:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x65DRV5H025931 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Jul 2019 09:27:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2216917D18; Fri,  5 Jul 2019 13:27:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx10.extmail.prod.ext.phx2.redhat.com
	[10.5.110.39])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D4CD9D8EF
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 13:27:28 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 20E3E59451
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 13:27:28 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id e189so7094558oib.11
	for <blinux-list@redhat.com>; Fri, 05 Jul 2019 06:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Yf2h7SzvIWWcn+EThO28eK1ObLi0VkYlUafiVfmTCZo=;
	b=JatAoOt/UFSGuf+QoH7C9mt6TEDf/wCAQqwSG0+Lp4dRSqJ2R6/HGO2be0DP2kijs4
	JyZy8aHwlGsQrSvAfps3mRJL+KZkX3qA5M8MmiI/MrU2xCla2LqDCngZr0Y51s75LCB9
	XbOfT6eIK/EdgqKTbNlDM0dExC8abeEu5t4qT4Y1I+eTrqaeGpc517pNvNVvEC3a3pZm
	xjBA2bpeRgC/rYe/Spx9FLy6Fm8/XjpmLE/cXQTN4eL3ZJ52cCtrblyW95F9XHvwX0fM
	kqsmG7bGj7jOlS/qEmZSgDgV2agLVx/Zwu9+qb0ZKYckuI0+FTwo4/kIPVyQDNHm9Oap
	2hnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Yf2h7SzvIWWcn+EThO28eK1ObLi0VkYlUafiVfmTCZo=;
	b=HCdeo5N1pFgSR5CvJ2oZjZ82mEEsRE/45LcOLoitwq1GchLiSG6cDcglVHB2ojXYdn
	4s5nVhk8uQGcFM6eubcQ3IkGXI+4Kt9BC0zv8GnH9D1qCMU0pDzJJwl69vG0zgTIVjyL
	wrtqI1fjQHS4AsxVQ+538ClQCzLjKKlq5/I/bItUzHsShOxn5thjyKBzOgO7uzuEga8s
	as7+AEz36S8b0sCyj7/hVqysSgseke2JtCgGEcHcpP+cuAKY8ti2MOD1gh3vEa1bfASf
	xH8jQjHMdX1OuUnANkWZw8lDbGPIRH7eoYBh6/To70iC/lXahjo0wyfuDKGIZRGtmFmW
	r3FQ==
X-Gm-Message-State: APjAAAX9oyBx5By1FRpeO0Hd/YZHrPyGKARqogEuPf7sL/vPQC6sE7En
	IuPy4hXIYdZv5dQmiCrYcQkvVGt2fI928KV/MT4qd5nl
X-Google-Smtp-Source: APXvYqzvDfumcvSZzWEUOU1Cm0iaDye04tlO0rVuqwEr5ZYeVywkC+2oo//Qyx68u32m89yQI7bRYJIVplO7Ucbjk7Q=
X-Received: by 2002:aca:4255:: with SMTP id p82mr2096483oia.6.1562333247469;
	Fri, 05 Jul 2019 06:27:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:6ac9:0:0:0:0:0 with HTTP;
	Fri, 5 Jul 2019 06:27:27 -0700 (PDT)
Date: Fri, 5 Jul 2019 13:27:27 +0000
Message-ID: <CAO2sX33yOnfCZzf2Np++zchW6uh0WMKGbimNgCPwNUS3jrODjQ@mail.gmail.com>
Subject: Accessible means of quickly toggling JavaScript in Firefox?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.39]);
	Fri, 05 Jul 2019 13:27:28 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Fri, 05 Jul 2019 13:27:28 +0000 (UTC) for IP:'209.85.167.174'
	DOMAIN:'mail-oi1-f174.google.com'
	HELO:'mail-oi1-f174.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.089  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE, SPF_PASS,
	T_PDS_NO_HELO_DNS) 209.85.167.174 mail-oi1-f174.google.com
	209.85.167.174 mail-oi1-f174.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.39
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Fri, 05 Jul 2019 13:28:08 +0000 (UTC)

Okay, so I'm sure I'm not the only one on this list who has been
frustrated by the catch 22 that:

1. JavaScript often makes websites harder to navigate with a screen reader.

but

2. Many websites require JavaScript to function properly and the list
of such websites is growing daily.

Prior to Firefox 57 forcing complete rewrites of all Firefox
extensions, I was content with using NoScript to manage JavaScript
permissions and really liked that it provided a context menu option
with rather, in my opinion, intuitive options for allowing/blocking
content in the active tab.

Like many, I didn't care for how NoScript's redesign was done,
especially with the loss of the easy to use context menu entries, and
for a while I was making do with using about:config and toggling
javascript.enable as needed, but as more websites that once worked
fine without JavaScript pointlessly reimplement features using
JavaScript(Google's removal of html headings from the non-JS version
of search results was a major blow) and it becomes harder to divide my
browsing habits into "websites that need JavaScript" and "websites
that work better without JavaScript" that solution has become
untenable.

I've installed NoScript in the hopes that things have improved, but
while it's regained a context menu entry, instead of it being a menu
of relevant allow and block actions, it's just a link that brings up
an options dialog that seems a bit confusing and not all that
accessible, and for some reason, after a couple of days using the new
NoScript Interface and, best I can tell, adding the websites I visit
daily to the trusted list, the dialog is failing to load and I've
already tried reinstalling both Firefox and NoScript.

If anyone knows of a JavaScript permissions extension that can be
operated entirely from the context menu(or better yet, toggles
JavaScript in the active tab with a simple keyboard shortcut), I'd
love to hear about it. Failing that, any alternative to NoScript with
a more accessible interface or even a possible solution to the
NoScript dialog failing to load when I select NoScript from the
context menu would be appreciated.

If it matters, I'm presently running Firefox-ESR 60.7.2 on a 32-bit
Debian-derived system and I installed NoScript from the Debian
repositories because Firefox was refusing to let me install anything
from addons.mozzilla.org(though that was before I decided to downgrade
from Firefox 67).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
