Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE28494FCC
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 15:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642687590;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eKx89iz/kXr/pb053PhzQSImm11Lsb0TclHpvNWCEJQ=;
	b=PZSQSaRKyBuKbyECbLGEKei4BdrJZhjclEdyDYeBTMexw69IPNRXm3HmJZhp+W84DC0dv6
	jIuG6/jwKm8ZEHrKKrK3PFPAMjZTMw3lyHJgmMM9N+12FUhRVaqRO0Hk5w7SJU++Of4viT
	drJlzgo/nJ/X/imaZnCzEGQHPhgFilk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-116-5QrShOgLP5u4K4dNcfdBHQ-1; Thu, 20 Jan 2022 09:06:26 -0500
X-MC-Unique: 5QrShOgLP5u4K4dNcfdBHQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D9D48144E4;
	Thu, 20 Jan 2022 14:06:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3793216A47;
	Thu, 20 Jan 2022 14:06:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A397D4CA93;
	Thu, 20 Jan 2022 14:06:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KE66Y2012860 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 09:06:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C889240F9D74; Thu, 20 Jan 2022 14:06:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C456B40F9D73
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 14:06:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9277811E7A
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 14:06:06 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
	[209.85.219.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-571-1_0l0s0AMNishScEa1ptng-1; Thu, 20 Jan 2022 09:06:02 -0500
X-MC-Unique: 1_0l0s0AMNishScEa1ptng-1
Received: by mail-yb1-f181.google.com with SMTP id g14so18031163ybs.8
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 06:06:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=9Sg+GQGzNHeCljxIh0NOJlCcsde/rw1BBZT9RIqBii0=;
	b=So3HpTJh86PNu1elFvNJUGIdoaQZR0Suxpdg1xaxFzzODdDVIBMS/cTtsi/jBUPUx4
	UQmFLoDPvjT+8KrNfD+YcaZBlMjU29VDTHdUwarQrQr1WDBdog2E3Y5hGO3RXSKdSvGY
	MJ0TtCryPftz1h6wwMjehNjg6V3jxjy2PJzWPE+vamc0ezf1GhqXWSzKqNXQtprKVah1
	ke6sbW2g0ZeJBiYgdWdm+rrRO2XRGG2lxvR9pg6R8VC2wQYPa7tXmKc6tqzctopydh18
	UEXrVWzaWAk07A30T/FTeVrgKpm2g1S2xNs5+zGl8N+UZ+McWSqn0VUDnB4rbCiGWcFs
	cMAA==
X-Gm-Message-State: AOAM532BqB8lOhn670JkKr4XQK4hRx8/h3GWK6fp3GLl5+CiexujPLRT
	XME2v+1HFvm8zi5Puk5YlNXwUAKvy2S1xiVFHLInBSEM
X-Google-Smtp-Source: ABdhPJwHhJseUa+na7KFgHOj4Eq1byEX1f0pG9fT+V73d3aP2WZ5pCniP7HSRlLcug5OSpKX26/EsEdr8e0LEQxhRdo=
X-Received: by 2002:a25:fc4:: with SMTP id 187mr47455641ybp.608.1642687560828; 
	Thu, 20 Jan 2022 06:06:00 -0800 (PST)
MIME-Version: 1.0
References: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
In-Reply-To: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
Date: Thu, 20 Jan 2022 08:05:49 -0600
Message-ID: <CAGJxbF7Cx=ZJLCkB=_2k=tquOKidY6O5U8WB0UTgQ-nMqnLH8A@mail.gmail.com>
Subject: Re: cell phone industry practices
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Of course not.
Devin Prater
r.d.t.prater@gmail.com




On Wed, Jan 19, 2022 at 5:43 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Does anyone know of any cell phone ready Linux operating system that comes
> with an accessible desktop environment that has active support
> I'm curious about this as a result of cell phone industry practices.
> Specifically, no last security update date and no operating system update
> date is on packaging or listed on any of the cell phone screens.  This
> means if your phone is compromised once these two dates have passed it's
> time to throw your phone in the trash since even if you do a factory
> reset, the phone can be easily compromised again.
> Even if anything like this is available it will be a challenge to find
> competent technical support to replace the operating system on the phone
> and hook it up with the Linux provider's package repositories.
>
> ?
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

