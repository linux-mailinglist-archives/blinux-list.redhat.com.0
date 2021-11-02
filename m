Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CAA442571
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 03:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635818812;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4+AvSUepPraA7/iV/UpoDZXd3GIsoS/BDjl1Ql8NH28=;
	b=VZGPnBI8+j8aCpAbUQdKl8TAEGkRE9HdxlW/wTxdHpRCp+trKdc7FklQqztZviqfSbVYoT
	cuFltbV73kar1KU62707fXPu6sc914qzr6Dz8tCuno1Cy7JNC+UL65KM1+Yl7mgQRL4O13
	ecuk1eJ1DMznIHGz6CofrvLewAxvAu0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-w1-0XZ4WPYWFr0e_scTq_Q-1; Mon, 01 Nov 2021 22:06:29 -0400
X-MC-Unique: w1-0XZ4WPYWFr0e_scTq_Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2692E800485;
	Tue,  2 Nov 2021 02:06:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F43B5C1C5;
	Tue,  2 Nov 2021 02:06:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7973D1806D03;
	Tue,  2 Nov 2021 02:06:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A226Mf4017744 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 1 Nov 2021 22:06:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 15D1A400F3E6; Tue,  2 Nov 2021 02:06:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1173140C1252
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 02:06:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ECEBF802A59
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 02:06:21 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-524-0wG2sIfeMxKoQQvmrXJ6SQ-1; Mon, 01 Nov 2021 22:06:20 -0400
X-MC-Unique: 0wG2sIfeMxKoQQvmrXJ6SQ-1
Received: by mail-pg1-f173.google.com with SMTP id g184so18763105pgc.6
	for <blinux-list@redhat.com>; Mon, 01 Nov 2021 19:06:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=qRhXqeqPyZxreSvSZ97g12/JX54W0YuLR4Om/H4vMSY=;
	b=cXl/gfY+E7WBN1j3N67oKH8Zi9wn+g+a9J7vNtfKX47Q7VQ/MMMRcOGx0bVrvldH35
	NVbKpAIDG4usgyofOzMR5rJhAZpbIpWIAjbjzExW0TiDQ0YLUCY6Tc6Ou9F5JeT0+7I+
	JrsmdWcRuH3sEJFRVIGNiz4DXqOSoPV9DFC4jtckwpjmAtH8cRE0OrBsWCp6J0CeVIvg
	PIrZdCbWlPretpD3tjZPzqP8qpHpiirpbiEzoitzi9RE/AP3Zh0bctAWQ4alenBdKyeE
	E8rilJUOHir+B189EXQ4AA6/FIzGE8QgDjlzLTYK2qX7aWgPDom6gR4MdizcLSXqoMJ0
	5J3w==
X-Gm-Message-State: AOAM530edehi0I4Bi9g3VE8jiHewP5qEsLwcPMucMu8V3s4sw4d4UFUH
	398Knon7x56GNJJonmIHnL123HyKr4tI+DJpbqM/0QIwSdE=
X-Google-Smtp-Source: ABdhPJyVMqRMpMBKBeJBKjNw+amzoh434FG9px89/fksPdkMBO2z2azgkRMo+G+gb8v68TqIgIABVamvZeUWdUq3rbI=
X-Received: by 2002:a63:ef57:: with SMTP id c23mr24681143pgk.60.1635818778927; 
	Mon, 01 Nov 2021 19:06:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a11:52a:0:0:0:0 with HTTP; Mon, 1 Nov 2021 19:06:18
	-0700 (PDT)
In-Reply-To: <f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
Date: Mon, 1 Nov 2021 19:06:18 -0700
Message-ID: <CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On the other hand, choices are good. For a very long time, it's been
nothing but Orca & Speakup--& not a tremendous amount of development
occurring on either.

On 11/1/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> It sounds like it could be interesting, but I'm a bit skeptical of
> anything that starts by saying that the existing a11y stack is so poor
> it's painful to use and compares itself to other fundamentally different
> OS's which have worse a11y problems. I've personally used various Linux
> OS's as my daily driver for many years, and I find it easier to use than
> the few times I was presented with a different OS just for printing or
> partitioning a disk for example, which I found quite painful to use.
>
>
> I feel like instead of pissing and moaning about the state of a11y here
> on the best desktop OS's currently available, whoever is behind this
> project should contribute their obviously significant resources to the
> development and improvement of the existing a11y stack, screen reader
> functionality and character recognition options, and don't try to
> reinvent the wheel. I do believe that a plugin system already exists for
> Orca as well, as well as a rewrite of the code to make it more modular.
> Again, it's better to help with this effort than to piss and moan about
> the sorry state of things that already exist, all while trying to
> reinvent the wheel.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>


-- 
Subscribe to a WordPress for Newbies Mailing List by sending a message to:
wp4newbs-request@freelists.org with 'subscribe' in the Subject field OR by
visiting the list page at http://www.freelists.org/list/wp4newbs
& check out my sites at www.brightstarsweb.com & www.mysitesbeenhacked.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

