Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id A019C2CD2D
	for <lists+blinux-list@lfdr.de>; Tue, 28 May 2019 19:08:48 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 10D6A31760ED;
	Tue, 28 May 2019 17:08:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6EA81001E71;
	Tue, 28 May 2019 17:08:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5DF5418363C1;
	Tue, 28 May 2019 17:08:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4SH6JrP002481 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 28 May 2019 13:06:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5C92517CE4; Tue, 28 May 2019 17:06:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5551C611B4
	for <blinux-list@redhat.com>; Tue, 28 May 2019 17:06:15 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D7554307887C
	for <blinux-list@redhat.com>; Tue, 28 May 2019 17:06:00 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id a132so14868045oib.2
	for <blinux-list@redhat.com>; Tue, 28 May 2019 10:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bIeryKcBmpZzEk9aZm0PLOC3fL/Adz82GqBK2PkRPGQ=;
	b=u4gg5OSkxKhZjFJftexOik5uCoh7shtCokivg+qSB5149igubdf3VbRBhhYmqRzGZY
	1h1GN8XHWg1K3xFQQUizvUpwfeFFsTsnbn0A/n1tYYIlWXfeug38KDJ4KlkP3gQE3lgp
	DhGcx4NtLf6flaiJcsfbJ7mcyKS/tn3gnAgWr6zki3zhGpy+PkNHd2a40ome/3/g6Rj6
	i3t9j1ujez32hulUaSDqlA9aiSlLpg1NzPIHHuAbVbNhQlxbJkIIWQWEPQpQ221RZLqW
	JxglUyQVtVduc6SSJlYk5A3vVspAU7aXeMKUGoCPyLCO25LvfRT2zsgFEwViDzRw3uiX
	OdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bIeryKcBmpZzEk9aZm0PLOC3fL/Adz82GqBK2PkRPGQ=;
	b=hAWQsfJ1TlSjVjC3vlEYHhJ/DqxW77DkMOylrdl07uPIb+zQaW/Iow8HIwLyPd9tF+
	bSokb3EII/akKzH0MMfRAkvhMr5HsEZiwOCReauvWGkOyAHSLeDlo9J/u6T22ywBbhFV
	1jtnYzjV7AMysCYs4pmfzajVKnHMyffBRNLDLcd5+8e0cwaxevV8mjJ57mYcS3qr8CbS
	oj4W8wNOv3mayosfbIIvUKexB9qemFF1QCiRTt9QvLPEt/Y8aFTTUzD37JBustGma3KZ
	7EfAwX8pq8eso42sKwKDxDWwg+HzcWc3RQOTzzmldFOaf0THQjx3x3l9U3aiksZUYN/q
	yHQQ==
X-Gm-Message-State: APjAAAXC2u/BqraHBNsoohedcdF0n/qoSfex/+gftD8YzgV6E5YN8ByQ
	0rUFZo9i2csA+RjssimljhnyvwS4vg0N15/c4qcpfEOD
X-Google-Smtp-Source: APXvYqy8wn7yD5Qq6fQXYi2uNH2XuDBu10e3Eu18H+DKu5FwrbAHRV06bovYbWe57lv6dSgA+rXBimDSK05oaLLHhIo=
X-Received: by 2002:aca:e50d:: with SMTP id c13mr3292191oih.42.1559063160040; 
	Tue, 28 May 2019 10:06:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:149:0:0:0:0 with HTTP; Tue, 28 May 2019 10:05:59
	-0700 (PDT)
Date: Tue, 28 May 2019 17:05:59 +0000
Message-ID: <CAO2sX32uqs-w1XPsn132sUfkyngzbG1VZsM3v4ehtd1C_S4L5A@mail.gmail.com>
Subject: Setting Orca to Laptop mode and navigating CrowdOx.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.49]);
	Tue, 28 May 2019 17:06:00 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Tue, 28 May 2019 17:06:00 +0000 (UTC) for IP:'209.85.167.172'
	DOMAIN:'mail-oi1-f172.google.com'
	HELO:'mail-oi1-f172.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.108  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE) 209.85.167.172 mail-oi1-f172.google.com 209.85.167.172
	mail-oi1-f172.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Tue, 28 May 2019 17:08:47 +0000 (UTC)

Good Afternoon,

Okay, so I've mostly been getting by online using Firefox with Orca
and utilyzing the features of Orca that don't require the Orca
modifier key. That said, it's becoming increasingly obvious that there
are occasions where some of Orca's advanced features would be useful
and some of these require the use of the Orca modifier key.

Problem is, I'm on a desktop machine, but I'm using a keyboard that's
a bit smaller than full-size, with no num pad and I'm not sure if it
even has an insert key. I've tried editing
~/.local/share/orca/userprefs.conf to make caps lock the Orca modifier
key so I can at least pull up the Orca configuration window to no
avail.

Can anyone tell me how to reset Orca to its default, laptop
configuration when I can't access its configuration window?

Also, part of what has brought the above issue with Orca to a head is
that two of the Kickstarters I've backed are currently in the Pledge
Manager phase and utilyzing CrowdOx for this purpose, and CrowdOx is
currently proving to be one of the most inaccessible web sites I've
come across to date(there are no buttons or clickables Orca can
detect, and apparently what you're suppose to click is showing up as
plain text). I've sent an e-mail to CrowdOx support(which I've copied
and pasted below for reference), but figured I might as well ask if
anyone else has had to use their service in the past.

Doing a bit of googling, it sounds like Orca's Flat review and mouse
emulation might be useful here, but I can't find instructions on
activating flat review and most of the mouse emulation requires the
Orca modifier key.

And if anyone knows of a specific mailing list for Orca support, would
you mind forwarding suscription instructions?

Thanks in advance.

Good Afternoon,

Two of the Kickstarter projects I've pledge to are currently in the
pledge manager phase and utilyzing your service for this purpose.

For reference, the two projects are:
Animal Adventures: Tales of Cats and Catacombs
and
Retro Dice

I am having issues which prevent me from progressing past loading the
first page of the pledge manager, which are nearly identical across
the two surveys and which I suspect are linked to me being blind and
thus reliant on keyboard input and screen reader output to operate a
computer.

For reference, my software configuration consists of:
OS: Debian-based Linux.
Web Browser: Firefox 66.0.5
Screen reader: Orca

To describe my issue:

>From my perspective, the numbered steps at the top of the
screen(Reward, Extras, Shipping, Confirm) appear as links but are
non-functional, whether I tab to them and press enter like with most
links, or have my screen reader pull up a list of links to simulate a
mouse click. The creator of one project informs me these links are
suppose to be plain text that changes color as each step is completed.

Best I can tell, the body of the initial page of both surveys properly
displays my pledge from Kickstarter, but when I scroll down to confirm
and choose options, which appears as though it should be a link or
button, and which the creator of one of the projects informs me is
suppose to be a button, it appears as plain text. Furthermore, on the
Retro Dice survey, where there is the option to change my reward tier,
the select this reward text appears as plain text.

Also, my screen reader detects no buttons or JavaScript clickables on
the page, or any other form elements, and the only links aside from
the ones for the survey steps are the contact links(the contact
CrowdOx opens a form my screen reader doesn't get along with either,
and the contact creator just prompts for a e-mail program to open),
and links related to your cookie notice.

I suspect there are further accessibility issues with your pledge
manager, but as I am unable to get past this first page, I cannot
comment on the rest of hte process.

Any assistence you can provide in resolving this issue would be
greatly appreciated.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
