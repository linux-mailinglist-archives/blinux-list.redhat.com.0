Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6385E440FBD
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 18:21:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635700909;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/A7adgBVEj26QUy7ar/vBVwmDiIRYhavKK4FhXjnXNk=;
	b=FMAXDbeV7OdAeeWSDTwAA/JWnRwiG82bc1KFRX3u5ubqpBQJpDLABX0rRY/aRrQXQg+l4t
	i/89rLV54ejTMcx5N05eBazwaj0T4mIrIRigKlW3GDRhu+TL3mNL1mTuY10RQXawy/q/+X
	/IUQSCaeQZjUPXCiuRi2/NfJ7r3h4Qk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-585-oK3ZNS0-Nt-6HZXcz8QHHw-1; Sun, 31 Oct 2021 13:21:46 -0400
X-MC-Unique: oK3ZNS0-Nt-6HZXcz8QHHw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6AB4810A8E02;
	Sun, 31 Oct 2021 17:21:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B6DC5D6D5;
	Sun, 31 Oct 2021 17:21:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0AB354E58F;
	Sun, 31 Oct 2021 17:21:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VHLFdK015101 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 13:21:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6B5FB40D1B9E; Sun, 31 Oct 2021 17:21:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 676C640D1B9D
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 17:21:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F7B9899EC0
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 17:21:15 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-158-VtUWImCYNsWbFKxwZXfTLw-1; Sun, 31 Oct 2021 13:21:13 -0400
X-MC-Unique: VtUWImCYNsWbFKxwZXfTLw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hj2y04bQLz2rdB
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 13:21:12 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hj2y03jbKzcbc; Sun, 31 Oct 2021 13:21:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hj2y03NgpzcbW
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 13:21:12 -0400 (EDT)
Date: Sun, 31 Oct 2021 13:21:12 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Beginner's Guide To The Linux Terminal
In-Reply-To: <Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
Message-ID: <alpine.NEB.2.23.451.2110311320060.1691@panix1.panix.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I figure ldp.org is one good external resource though your mileage will
vary.


On Sun, 31 Oct 2021, Linux for blind general discussion wrote:

> That may be a fine resource for those who can use YouTube.
> what has always concerned me about Linux though is what seems to be a lack of
> external solid resources providing such content.
> YouTube gets less inclusive for lower graphics users all the time.
> And not everyone learns well from videos.
>
>
>
> On Sun, 31 Oct 2021, Linux for blind general discussion wrote:
>
> > Hi,
> > For the new Linux users such as myself,
> > I found this on Youtube.
> > I learned that you can open the terminal with
> > ctrl+alt+t
> > Checkout this video.
> > https://youtu.be/s3ii48qYBxA
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

