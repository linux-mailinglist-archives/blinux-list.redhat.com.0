Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC344B751C
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 21:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644957774;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yNwKCDU5xBlxj4PWsu8RPKQvEKGOI8iX5R8iVPhdtc4=;
	b=VSJ3t8WxgERwFBB+f04DHsLK4WQ1JRinxfpM+6XRBz8xZPl5f9BRNIAFEOGV4nbE/DzB6Y
	XLzvue8wz/X55wZACueWiz8Cn4r3mOhf+iZmbXKM/vMt8DQKNPvztFrlt/a7VxFoGisgIh
	Eju/QyUNecij1qF7MrKIWpjiy6hqAIg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-13-LMBSrGv4MJWsXskDdTUZ1g-1; Tue, 15 Feb 2022 15:42:50 -0500
X-MC-Unique: LMBSrGv4MJWsXskDdTUZ1g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 064F11DDE9;
	Tue, 15 Feb 2022 20:42:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B13455DB84;
	Tue, 15 Feb 2022 20:42:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 631D24BB7C;
	Tue, 15 Feb 2022 20:42:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FKfhSp007147 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 15:41:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6B80D401E35; Tue, 15 Feb 2022 20:41:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6764E401E2D
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 20:41:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E4A1185A79C
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 20:41:43 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-632-VdHIEfPNNEaQOvORYd20fw-1; Tue, 15 Feb 2022 15:41:34 -0500
X-MC-Unique: VdHIEfPNNEaQOvORYd20fw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JytKm4MDsz3vZq
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 15:41:32 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JytKm3dmyzcbc; Tue, 15 Feb 2022 15:41:32 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JytKm3J1ZzcbC
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 15:41:32 -0500 (EST)
Date: Tue, 15 Feb 2022 15:41:32 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
Message-ID: <f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

A debian spin without systemd.  debuan.org for any interested.


On Tue, 15 Feb 2022, Linux for blind general discussion wrote:

> Never heard of this one.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my MacBook Air
>
> Contact:
>
> Phone: +27 (0)60 525 9181 <tel://+27605259181>
>
> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
>
> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
>
>
>
>
> > On 15 Feb 2022, at 21:54, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > I forgot Devuan, or, would you just consider that a Debian spin?
> >
> >
> >
> > On 2/15/22 14:47, Linux for blind general discussion wrote:
> >> What other options do we, the Blind Linux users have? And, no, I really don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut, etc.)
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

