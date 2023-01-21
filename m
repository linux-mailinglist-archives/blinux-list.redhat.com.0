Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE9F67671E
	for <lists+blinux-list@lfdr.de>; Sat, 21 Jan 2023 16:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674314814;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Dxh4phLS9NqGVkRfa7lmwaW8cdKTez9jr6NkClm6TOo=;
	b=KPtSCx/jOWAJfewpDFyficVDg57qQQ5RTG1b5ZLfi8gC3O08gv1/54cfs/nSlc9hFat3/f
	7B+xKPPb9dfU5IWHZ/Oix43itHpziYRPUMQQIOHQCoFJwIsShbdHhFYMM+xK4VJeIJlsAm
	RE/yQPjPdQ7Pu0bkKeZFDfUtMTjy4ZM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-605--pK-lU-5OciJS0SWoaDkWQ-1; Sat, 21 Jan 2023 10:26:50 -0500
X-MC-Unique: -pK-lU-5OciJS0SWoaDkWQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1708280234E;
	Sat, 21 Jan 2023 15:26:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B28B91121315;
	Sat, 21 Jan 2023 15:26:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CC02C19465A0;
	Sat, 21 Jan 2023 15:26:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 21 Jan 2023 10:26:41 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: new version of jenux
In-Reply-To: <mailman.358.1674274777.8176.blinux-list@redhat.com>
References: <mailman.286.1674235413.8169.blinux-list@redhat.com>
 <mailman.358.1674274777.8176.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.397.1674314804.8168.blinux-list@redhat.com>
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

You have to install the version to find out.  On the current equipment
that's not possible.  Sometime this weekend I'll see if be my eyes can
give me information about what comes up on the screen before jenux fails
to speak and reboots.  I'm curious if any computer other than the author's
can install this or the last three versions of jenux which is my reason
for posting here.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 20 Jan 2023, Linux for blind general discussion wrote:

> what is new in the latest version?
>
> On 1/20/2023 9:23 AM, Linux for blind general discussion wrote:
> > Not ready for download.  The sha512sum file up on the website to check the
> > iso's integrity doesn't match.  This one probably won't have any ability
> > to install on thinkpenguin computers either since the last three isos also
> > failed but I'll check it out just to make sure the loosing streak remains
> > unbroken.
> >
> >
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> >   soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
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
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

