Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB8D49568F
	for <lists+blinux-list@lfdr.de>; Fri, 21 Jan 2022 00:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642719690;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cPAMHUr4atXDlptxg/Brwc3eFiEgCA+yk736sXhTJ/A=;
	b=CaxdNUF/ef+xHQ/FO5clTfszvPiUgKM/OPTIGy9hB29fJrNAS4jcpepKskw+6eKkLvToGw
	Ejg6edArGfKC2oN7FiyZZzdc8IwjVRe749CR7cIR/NhVt4L3Gxv9sFdNA4KDWw58bjzHOf
	JHJzhb1oFfb/RubX751UZhzCSzaK9yo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-424-hfC-xE5_PfyY5YYoD8pStg-1; Thu, 20 Jan 2022 18:01:28 -0500
X-MC-Unique: hfC-xE5_PfyY5YYoD8pStg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF2391083F60;
	Thu, 20 Jan 2022 23:01:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5B1956F9C;
	Thu, 20 Jan 2022 23:01:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5D1A74BB7B;
	Thu, 20 Jan 2022 23:01:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KN15Sf016257 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 18:01:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 790862166BA3; Thu, 20 Jan 2022 23:01:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7532F2166B1E
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 23:01:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 67D4A811E78
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 23:01:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-584-GRAiZnwZO6erNM50E5zC6w-1; Thu, 20 Jan 2022 18:01:00 -0500
X-MC-Unique: GRAiZnwZO6erNM50E5zC6w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jfyfg50Glz2jL3
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 18:00:59 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jfyfg5jlLzcbc; Thu, 20 Jan 2022 18:00:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jfyfg5fqYzcbC
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 18:00:59 -0500 (EST)
Date: Thu, 20 Jan 2022 18:00:59 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: cell phone industry practices
In-Reply-To: <CAGJxbF7Cx=ZJLCkB=_2k=tquOKidY6O5U8WB0UTgQ-nMqnLH8A@mail.gmail.com>
Message-ID: <4888dc7a-f32c-25ca-61c4-4c719e6fb255@panix.com>
References: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
	<CAGJxbF7Cx=ZJLCkB=_2k=tquOKidY6O5U8WB0UTgQ-nMqnLH8A@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

I think we'll have to keep an eye on mobian and see where that heads in
the future.


On Thu, 20 Jan 2022, Linux for blind general discussion wrote:

> Of course not.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Wed, Jan 19, 2022 at 5:43 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > Does anyone know of any cell phone ready Linux operating system that comes
> > with an accessible desktop environment that has active support
> > I'm curious about this as a result of cell phone industry practices.
> > Specifically, no last security update date and no operating system update
> > date is on packaging or listed on any of the cell phone screens.  This
> > means if your phone is compromised once these two dates have passed it's
> > time to throw your phone in the trash since even if you do a factory
> > reset, the phone can be easily compromised again.
> > Even if anything like this is available it will be a challenge to find
> > competent technical support to replace the operating system on the phone
> > and hook it up with the Linux provider's package repositories.
> >
> > ?
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

