Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B854742AE
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 13:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639485266;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=forT8HqP7HKF0N7XqDyHqrfwsiVsaC8J6T6pZWKRkZs=;
	b=C6a04o0Hm7kPak/tgRu3AgaizvZVaXRcUVWe6ZvBKMZPPwreNV7jULrnVJC91oCuetJfMo
	4ETQeFpanqEhoP+8e40mBvFPH1WBhkCjbnB0OWU/+T8xqf60aVZ4Xol4KSxhnHIfDJLa0W
	sM7x1PqYSG8LBjmzAfQtb4vCpOmyo5Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-272-4VFSnb7GNrGin_ray5cJPA-1; Tue, 14 Dec 2021 07:34:25 -0500
X-MC-Unique: 4VFSnb7GNrGin_ray5cJPA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E149F102C887;
	Tue, 14 Dec 2021 12:34:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 998832B178;
	Tue, 14 Dec 2021 12:34:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 35A914BB7C;
	Tue, 14 Dec 2021 12:34:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BECYJ8r028444 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 07:34:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 06FAD140EBFE; Tue, 14 Dec 2021 12:34:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02737140EBFD
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:34:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBE7A185A7B2
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:34:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-76-Wqd4pnXlM1SaKfhQ1q1N7Q-1; Tue, 14 Dec 2021 07:34:17 -0500
X-MC-Unique: Wqd4pnXlM1SaKfhQ1q1N7Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JCyVc56V3z42B3
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 07:34:16 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JCyVc3ykbzcbc; Tue, 14 Dec 2021 07:34:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JCyVc3QzmzcbC
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 07:34:16 -0500 (EST)
Date: Tue, 14 Dec 2021 07:34:16 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting a Jenux install, again.
In-Reply-To: <59b554b3-32ab-e0cf-23fe-0f4847a3928c@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112140732350.19510@panix1.panix.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<59b554b3-32ab-e0cf-23fe-0f4847a3928c@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I didn't know manjaro was 32-bit only, but the kalamares installer was a
show stopper for me with manjaro and has been for some time now.  Maybe
installing by means of a kickstart file will bypass kalamares.


On Tue, 14 Dec 2021, Linux for blind general discussion wrote:

> Also IIEC, isn't Manjaro Talking 32bit only? I forgot if it was here or on the
> Orca list but I remember folks had major issues installing it in 64bit system
> as well. Did that get updated or?
>
> On 12/14/21 09:18, Linux for blind general discussion wrote:
> > Hi all,
> >
> > I decided to give Jenux another go, last time, no matter what I tried, I
> > couldn't get orca to come on after logging in to the system.
> >
> > Does anyone have any advice?
> >
> > Also, if this doesn't work out, is there a guide for doing a Manjaro
> > architect install? "Manjaro Talking" got updated a little while ago, and if,
> > as I said, Jenux doesn't work out, I'd like to give that one a go.
> >
> > Thanks so long.
> >
> > Warm regards,
> >
> > Brandt Steenkamp
> >
> > Sent from my MacBook Air
> >
> > Contact:
> >
> > Phone: +27 (0)60 525 9181 <tel://+27605259181>
> >
> > Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
> >
> > Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
> >
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

