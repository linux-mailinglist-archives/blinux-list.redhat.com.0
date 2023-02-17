Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C2069A6CA
	for <lists+blinux-list@lfdr.de>; Fri, 17 Feb 2023 09:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676622107;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4yq57q71tNgTKlrK+piGwwMfLZrJbBnAqzQIaximGc0=;
	b=Z4sZU3dQUFxTpXjjjX6mh9fkcm8Fmrs0tUShLdVqmCdfKxQU11Ns+yq7a0f+aaxGM1qdi5
	PbVCSEwr0eQu6fbKDvL+s7DabJJKmSmP4F+DypjUJA+Z4GliAo7v7e2KqCY5vZ4SIWYUHq
	dVyPJUXYxKdixkWd+XU9ZDA+5j6WWzA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-387-oKglF0zGPvavv8IKvuLiBw-1; Fri, 17 Feb 2023 03:21:43 -0500
X-MC-Unique: oKglF0zGPvavv8IKvuLiBw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D4751C0515A;
	Fri, 17 Feb 2023 08:21:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9A40D1121314;
	Fri, 17 Feb 2023 08:21:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3D34D1946597;
	Fri, 17 Feb 2023 08:21:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 17 Feb 2023 03:21:32 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible way to install Ubuntu server
In-Reply-To: <mailman.224.1676621477.3513.blinux-list@redhat.com>
References: <mailman.224.1676621477.3513.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.228.1676622097.3517.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Have you ever used a kickstart file?
To do it locally, you'd need to write a kickstart file of your own
Then put it on another drive.  For running it locally ks=/dev/sdb1/ks.cfg
that's the boot parameter you give the installer disk.
The ks.cfg file has all answers to all questions that is asked during the
installation.
Extra packages have a post-install section in the ks.cfg file and are
pulled in with their dependencies if all goes correctly.
I once used a ks.cfg file on the web located in England and it installed
ubuntu desktop for me in half an hour when it worked.

I made a braille copy of that ks.cfg file and would have to dig it out and
if I can it'll show you questions and answers that got given to install
that instance of ubuntu.
I've never done a local install with it and that would be an interesting
to try to see if it'll work.
This is similar to windows unattended install except no user key has to be
entered for linux.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 17 Feb 2023, Linux for blind general discussion wrote:

> HI,
>
> I have a machine I would like to install Ubuntu on.
>
> However I would like to use a server install rather than a desktop because the machine simpy doesn't need it.
>
> Is there any accessible way of doing this?
>
> Thanks,
> Aaron
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

