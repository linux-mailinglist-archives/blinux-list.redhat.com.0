Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B9D5FA16E
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 17:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665417256;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bpP3AjjMJY2leBaLCV4mniGXzLwB3vDBHINZdjhfqXg=;
	b=bGUemj0kYD6HBnicwMQGvu8CXVEPsJb6aoCUCohuHEJTSvPqqPX9/X9vbEqEaS/E7NoYnG
	vb9zgWWgU3qiBq6fKNvMF9oWCwa/nP3N69mdB/rK9d5OqnydF2Wu/b6/o/WIrjQikXSbq5
	dK07E+63Wy91pLZWINATjEHRvaSqBac=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-WupGdhTRPs6jKzO3D0UzFA-1; Mon, 10 Oct 2022 11:54:12 -0400
X-MC-Unique: WupGdhTRPs6jKzO3D0UzFA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 819A9855308;
	Mon, 10 Oct 2022 15:54:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1F1E92156A21;
	Mon, 10 Oct 2022 15:54:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DAD981946A48;
	Mon, 10 Oct 2022 15:54:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 11:53:59 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is there a Fedora Espeakup Package?
In-Reply-To: <mailman.6377.1665416435.6083.blinux-list@redhat.com>
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6377.1665416435.6083.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.6237.1665417249.6074.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

if you already have .bash_login on your system, it's possible nothing in
that file is working since it's possible it's not executeable.  chmod 755
.bash_login then reboot and see if things in .bash_login start working.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 10 Oct 2022, Linux for blind general discussion wrote:

> I am using tdsr with fedora 35.
> I cannot get it to work at login, but starting it is easy, and to use it all I had to do was to gitclone and a couple other things.
>
> > On Oct 9, 2022, at 12:59, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > Hi there,
> >
> > Just wondering how can one run Espeakup on Fedora? I am on Fedora 36, but can't find Espeakup in its repositories. So how do we run the Speakup while in the console? Tried a search with yum search and dnf search for both speakup and espeakup, but to no avail. I even tried compiling the Github espeakup, but the meson build fails with no espeak-ng dependency found (yet espeak-ng is installed).
> >
> >
> > Is there anyone using speakup on Fedora or any of the Red Hat derivatives?
> >
> >
> > Thanks.
> >
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

