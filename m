Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB310466E0C
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 00:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638489423;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KX4LHx9RkEa3bXZ7bcP4BOWM1OcRU/hh2F3mlZMSOTM=;
	b=SCIEOOORYmfixH8Is90MrcfufebOgQZmVXs2envdhEuLthM+c318BMJ9suymS2Fv3fmcin
	vIA6/ZNdb7j9ZrJV86mMK3YhgFdcWHxvO077uf/tPHUr2NWXMPd9x/CXeh/NrhaQDqOIJz
	x9P/WdAghJLBp/+AfrSJeSL9XMrIhqI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-436-XHSG_ElmMTiUdq9WmjNSEg-1; Thu, 02 Dec 2021 18:56:59 -0500
X-MC-Unique: XHSG_ElmMTiUdq9WmjNSEg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B9E52F21;
	Thu,  2 Dec 2021 23:56:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6826DADDC;
	Thu,  2 Dec 2021 23:56:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D90D34BB7C;
	Thu,  2 Dec 2021 23:56:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2NrqVL021442 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 18:53:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EC3EB401E38; Thu,  2 Dec 2021 23:53:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8D48401E2C
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:53:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D079F85A5A8
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:53:51 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-330-6YhgIgeYOra6GEDhSbjhog-1; Thu, 02 Dec 2021 18:53:50 -0500
X-MC-Unique: 6YhgIgeYOra6GEDhSbjhog-1
Received: by mail-qt1-f170.google.com with SMTP id n15so1631045qta.0
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 15:53:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=wOodH0l0abXaxzMx9/kgA8iUlXNweGci4yL6YeYfpEo=;
	b=NoLzPeop6zb4jCEmpFeqKxs3pPNFtNT5CewMIyLNncn6BC+uqyvZqYHwVLCrVohl/Y
	Ta3NPZDMppcPxBFM8KvzVBG0PstVq+K1cbG54dFb2/v3rQcHhNqY6hEhK1tB/01eumx3
	lEeRW/2vaCxVa2QjPCToyfyWvXJyNaPhw5P6SPiMkUiy9DugPpbB+oHiWcBkl6kT0Q4a
	MLHE8GNe/vuIiBIoVA+d0snnkM5dxV7C6lLdf4GTqqUHOpK2mHbMomTdqcVvA4h3pNrF
	+PKNMxAtn+hi/+pMZM+1lU064IPwZueqtLbEg6DO//Ku3ikNvzpYvcsG3QVMa5MsCF9v
	mxFw==
X-Gm-Message-State: AOAM533wfUio1HzXMKxtxRwp8p95ZofaDvIaCO/E30xFN/FoTogq+dXG
	4jObjTEYxGfGJo5sJXLTR//5RyOcJ0onN8Iy3BcxxDc9
X-Google-Smtp-Source: ABdhPJxbjOYdhIxiXxvhjH9v3yabZNg7tEKfpk1G+vDVp6EJCeaHf6WKYIL6YmOZX5t9bEEoOf2FGzi2tiYI/nLPsFg=
X-Received: by 2002:a05:622a:1055:: with SMTP id
	f21mr17062210qte.421.1638489229838; 
	Thu, 02 Dec 2021 15:53:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP;
	Thu, 2 Dec 2021 15:53:49 -0800 (PST)
In-Reply-To: <a639793f-b727-74f1-6461-bbc9b525ff31@gmail.com>
References: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
	<a639793f-b727-74f1-6461-bbc9b525ff31@gmail.com>
Date: Thu, 2 Dec 2021 23:53:49 +0000
Message-ID: <CAO2sX31RdThfVEJiuHKnY8QXM7DNFOgvoHebX_tmyw3z9dmQQg@mail.gmail.com>
Subject: Re: Help booting live disk
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've never successfully booted from a USB stick, but regarding booting
from an external optical drive, I once had a laptop that wouldn't wait
long enough for my USB powered external optical drive to power up
before the laptop would boot from the hard drive. As a result, I had
to either reboot from the running system or hammer ctrl+alt+del as
soon as I powered on the laptop until the external drive was at full
spin to boot liveCD/DVD or installation media.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

