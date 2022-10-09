Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 704705F8DCE
	for <lists+blinux-list@lfdr.de>; Sun,  9 Oct 2022 22:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665345970;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=seXGBdYRt6MT7y4M/IH2j5/u5dAoHZOYA6fj+oyLdk4=;
	b=JkDYhvJZRF8Ldyvt/msvSsFORSiYzKgU7wjG4HZJ63zj9hB0t3RumULVBxprxK1ozis1Vz
	p1SSuSJK/gQ2Z3xywDbT7tfZ70/UZZP3HBui16xwLw9fICbeGIJ6flyXNG6VxTdIjWMuTO
	ZL3MYgeDsHyfre9fCO34aQr6IOXzsfI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-318-XfrPugz6O9asnzjcOqPYIw-1; Sun, 09 Oct 2022 16:06:06 -0400
X-MC-Unique: XfrPugz6O9asnzjcOqPYIw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5657438060E3;
	Sun,  9 Oct 2022 20:06:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4BF6C45359A;
	Sun,  9 Oct 2022 20:06:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C287A19465A3;
	Sun,  9 Oct 2022 20:06:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 9 Oct 2022 16:05:57 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is there a Fedora Espeakup Package?
In-Reply-To: <mailman.6276.1665342112.6083.blinux-list@redhat.com>
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
 <mailman.6276.1665342112.6083.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.6652.1665345960.6080.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Why not look for espeak-ng too.  If that fails, you could probably search
for tdsr and also fenrir.
If fenrir isn't there, you may be able to install that with pip once pip
is installed.



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sun, 9 Oct 2022, Linux for blind general discussion wrote:

> Thanks Didier for the confirmation.
>
>
> Tight. This makes me knock it off from accessible distros on the console.
>
>
> Cheers,
>
>
>
>
> t
>
> On 10/9/22 20:52, Linux for blind general discussion wrote:
> > Hi,
> >
> > I had a look through the Fedora package search webpage:
> > https://packages.fedoraproject.org/
> > and found nothing.
> > Moreover, no console screen reader at all in Fedora.
> >
> > Didier
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

