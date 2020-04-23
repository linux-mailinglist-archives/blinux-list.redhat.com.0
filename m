Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 3E3EB1B667F
	for <lists+blinux-list@lfdr.de>; Thu, 23 Apr 2020 23:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587678498;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W8Z0CfVAFs4EhWDPueczHFy3rdtvS9bW4yl8pXE2NBE=;
	b=HcTvaP+XOp4jvbPkfJhO97FW3RUIOQBcsNrJ4hwUHfZ40x8MBQ/MaZjDHXXVh6FRpmpTg9
	Sy5NcexYD23EgRQ+7jZ0MplFdgVJTo8kVgs6Zs4KnJCSLVvJzyOAqOoWKA9JM/yaFbpbNw
	IJFG/6RFA71PmoGWwOcjvR1FVQQQbgk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-WY8HkNT0Nl-zn1NVUloHoA-1; Thu, 23 Apr 2020 17:48:15 -0400
X-MC-Unique: WY8HkNT0Nl-zn1NVUloHoA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 832D5C7442;
	Thu, 23 Apr 2020 21:48:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 064DA5C1D0;
	Thu, 23 Apr 2020 21:48:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC6214CAA0;
	Thu, 23 Apr 2020 21:48:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03NLm4Hu010544 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Apr 2020 17:48:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0AEB32166BA0; Thu, 23 Apr 2020 21:48:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06F6F2157F25
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 21:48:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3EE6785A5A1
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 21:48:00 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-293-raE7PR-nMm-mOmRQ3QD0BA-1; Thu, 23 Apr 2020 17:47:57 -0400
X-MC-Unique: raE7PR-nMm-mOmRQ3QD0BA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 497WBP2tQSzZKP
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 17:47:57 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 497WBP2fvWzcbc; Thu, 23 Apr 2020 17:47:57 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 497WBP2b8tzcbW
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 17:47:57 -0400 (EDT)
Date: Thu, 23 Apr 2020 17:47:57 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: unpacking git files
In-Reply-To: <20200423.211449.706.12@[0.0.0.0]>
Message-ID: <alpine.NEB.2.21.2004231747100.22899@panix1.panix.com>
References: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
	<20200423.211449.706.12@[0.0.0.0]>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03NLm4Hu010544
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That won't work in this case, since I already tried it.  It's requiring
a login which I cannot now do.

On Thu, 23 Apr 2020, Linux for blind general discussion wrote:

> Date: Thu, 23 Apr 2020 17:14:49
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: unpacking git files
>
> Try
> git clone http://github.com/whatever/whatever.git
>
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Thu, 23 Apr 2020 17:13:42 -0400
> Subject: unpacking git files
>
> > If you download a git file how is it possible to have git unpack the file
> > for you into its own directory tree?
> > I failed to write my git credentials in braille and haven't used them for
> > a very long time so may be able to get a git file using wget but for now I
> > don't know how to unpack the file.
> >
> >
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

