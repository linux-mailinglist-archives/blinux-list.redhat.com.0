Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4A1661881
	for <lists+blinux-list@lfdr.de>; Sun,  8 Jan 2023 20:24:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673205856;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dMBi/rgSCruIovjg9STFKwDZ1QFg8fbt2nqrPELRnrM=;
	b=JwUKdGV4dcgWBf5llyKe7M2ETklF9v7MnTmgCDj03s6Oradz4ZmmBUCFt2Eym0sEbxPxZL
	vjvY5l0DsBEuHUSUs7Iq9vEbbRXtqAz8F1wDBuoE/eNvB6RvG7qd5nyS7/KbuJPdNCCNOI
	JEVuiH/9cYfsl3XcO20ghP4lLni0vmY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-39-VrKOi1qEONyFY4bAMvdOdQ-1; Sun, 08 Jan 2023 14:24:12 -0500
X-MC-Unique: VrKOi1qEONyFY4bAMvdOdQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4EACD3C01DE1;
	Sun,  8 Jan 2023 19:24:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 997531121318;
	Sun,  8 Jan 2023 19:24:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 448FC19459C9;
	Sun,  8 Jan 2023 19:24:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 8 Jan 2023 14:24:02 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: check for existence of file
In-Reply-To: <mailman.3602.1673203492.2515669.blinux-list@redhat.com>
References: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
 <mailman.3474.1673161769.2515660.blinux-list@redhat.com>
 <mailman.3602.1673203492.2515669.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3630.1673205848.2515665.blinux-list@redhat.com>
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

How does fossil do compared to git?



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sun, 8 Jan 2023, Linux for blind general discussion wrote:

> Tim here.  Git does particularly poorly with large binary files
> (like a .ISO file), so I'd hesitate to reach for that as a solution.
>
> -tim
>
>
> On 2023-01-08 08:11, Linux for blind general discussion wrote:
> > On 1/7/23 22:29, Linux for blind general discussion wrote:
> > >The script c-jenux.sh checks for existence of a specific Jenux iso and
> > >lets the user know if it exists and does not download the file.  I'm
> > >finding this useful for this particular project and I figure others may
> > >find it useful to check for other files as well so I'll post this below.
> > >
> > >#!/usr/bin/env bash
> > ># file: c-jenux.sh - check for bad iso
> > >wget --spider -S https://nashcentral.duckdns.org/projects/Jenux-2022.12.04-dual.iso 2>&1|grep -i remote
> > >https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> > Would be better if you would point to that file being tracked in Git!
> >
> > --
> > John Doe
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

