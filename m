Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C61B68B187
	for <lists+blinux-list@lfdr.de>; Sun,  5 Feb 2023 21:14:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675628085;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jd5+x/DxfaC1hllkgbhNXPoTkkcXx8UuMwxZkKnGU9E=;
	b=YKpryj+t8jo5bT8rHT5rykkH8ANOtL9M3GZHzPnutTAe2ZVYih8uMdh+PvHckAQJVuTZ0u
	z5yR3qRxE3hfE/3nWtOOX4sC9mEJzYk5rDzbYg5TOtlqHEhdO7KAeZuZ9Q48dkh1aSRSxX
	HjZgGsIn6fWPKFeYTJPStdhHcuCGG58=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-567-lLltcVr0P9eFOF1e6i2K2g-1; Sun, 05 Feb 2023 15:14:43 -0500
X-MC-Unique: lLltcVr0P9eFOF1e6i2K2g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2DB9A80D180;
	Sun,  5 Feb 2023 20:14:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C88992166B26;
	Sun,  5 Feb 2023 20:14:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 455961946597;
	Sun,  5 Feb 2023 20:14:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Getting DavMail to Work in the Gnome Desktop
MIME-Version: 1.0
Date: Sun, 05 Feb 2023 14:12:42 -0600
Message-ID: <mailman.3943.1675628072.8168.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <10028.1675627962.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

After running across a unix application called DavMail or just
davmail in lower case, this seemed like my wildest prayers had
been answered.  The Microsoft365 mailbox in question is provided
by my employer that I retired from in 2015 which means that if I
can get it to work, I can use an email address that I used for
25 years once again.

	My current email is working fine right now but that
provider doesn't even offer email to new cable subscribers and
they have a record of making changes to their platform without
any warnings so The prudent thing to do is to get another email
provider while this one still works.

	The davmail application connects to your MS365 mailbox and
lets you read messages via IMAP, POP, etc using existing
non proprietary mail transport agents such as mut, thunderbird and
the like.

	It can run either as a headless server on some system in
your private network and then you make IMAP or POP connections to
it with another computer on your net or you can use a mailer on
the very system running the davmail app and do all your work
using localhost.

	The davmail app is written in java and the GUI interface
is totally broken so I don't get the davmail tray so my first
question is is there something I can install on the system that
runs gnome which will make the java-based GUI work?

	My last question is has anybody here gotten davmail to do
anything but keep one occupied, poking at this and wondering
about that but never getting anything good to happen?

	If you run the app in server mode, it does respond to the
ports it says it is listening on but immediately complains about
a wrong openssl version.  I've tried davmail's buster version on
an I86 box running Debian10, a raspberry Pi  running bullseye
with no GUI and a 64-bit bullseye version running on a HP PC which
is the gnome platform.

	All malfunction in exactly the same way and even more
aggravating, the logs don't say much at all.

	The login credentials to the mailbox work since I can log
in to the web mail gateway via Windows and edge but that's not
what I want for the long run.

	The only reason I want the GUI is in hopes it might cough
up some tidbit of diagnostic since I am not sure it even gets as
far as establishing contact with the MS365 servers.

	The other possibilities for accessing the MS365 mailbox
involve buying commercial software to use applications I don't
really want to use.

	For those who are curious, davmail does not store your
login credentials but passes them on from whatever mail transport
agent one is using.  The only really specific information it
needs is the url to the MS365 address for your organization.

Thanks in advance for any useful information one might have.

Martin McCormick

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

