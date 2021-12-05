Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD01468C68
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 18:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638725327;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HjfMVeZ1okB9Bya2sMBJGV8EsIHnECkGOCZVlgP9Xb8=;
	b=La47OliwSYf8DoYmJvlub4aLV1kpcJsbxzz2tv3HHc7uuPazvW9aS+BjXq5Y7M0NUyTVn3
	fG07cmax3gXGELbPYInnYqo7ixl5DN6lBG/d8zYRE6ybNEnlGlhbF5Z9c1AtGxBaf3J1rk
	ql2xSNnxlJhRq/gNlDow0xv8Ogf/xOU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-532-PDj7icPJPYGalQ7H68I7vg-1; Sun, 05 Dec 2021 12:28:44 -0500
X-MC-Unique: PDj7icPJPYGalQ7H68I7vg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 979B88042E1;
	Sun,  5 Dec 2021 17:28:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6CB460BF1;
	Sun,  5 Dec 2021 17:28:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE3B01809CB8;
	Sun,  5 Dec 2021 17:28:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5HSZx2011134 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 12:28:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 029F32026D69; Sun,  5 Dec 2021 17:28:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1FD52026D67
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 17:28:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2216F185A7B2
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 17:28:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-566-xFXB-PsGNDSeDXd3SnHCtw-1; Sun, 05 Dec 2021 12:28:30 -0500
X-MC-Unique: xFXB-PsGNDSeDXd3SnHCtw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J6YSF430kzFg1
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 12:28:29 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J6YSF3ZCPzcbc; Sun,  5 Dec 2021 12:28:29 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J6YSF3DhRzcbP
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 12:28:29 -0500 (EST)
Date: Sun, 5 Dec 2021 12:28:29 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Suggestions for Ratpoison-friendly apps?
In-Reply-To: <47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
	<47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

dilo may work as a light-weight browser.


On Sun, 5 Dec 2021, Linux for blind general discussion wrote:

> SpaceFM works very, very well for me here and is (to me at least) easier to
> understand and work with than Caja personally. I'm now on the hunt for a
> lightweight browser, I'm thinking stick with Seamonkey but...
>
> Setting up my gmail is a pain really...
>
> On 12/4/21 18:47, Linux for blind general discussion wrote:
> > I just found another file manager called spacefm. It appears to be somewhat
> > larger than pcmanfm, but it doesn't have the libfm dependency, so that
> > functionality seems to be integrated into it. I have it reading my files and
> > folders right out of the box. So this one could work. Best of all, it pulls
> > in no dependencies at all from what I can tell. The problem with spacefm is
> > that the latest stable release is in fact quite old, March 2018, so it most
> > likely will never see another update. It does apparently have vfs support,
> > but it doesn't use the usual gvfs back ends. From what I've read of it
> > though, it does seem to be able to do automounting and that sort of thing,
> > as pcmanfm can do.
> >
> > ~Kyle
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

