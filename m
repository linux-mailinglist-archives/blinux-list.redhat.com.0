Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 50B593E5930
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 13:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628595381;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=INt3Rg2216aBva6/H8VMgNDSlpDRYWYnv7EHk/YfJ4A=;
	b=EhJ3bXk8+slptY/lnB8TjFYn9dkVJAQ7BPCvuNNw3ETocx+qUDksxObMzjDGnyql+EmZen
	Qj00ihBnvuRSmuFN4i0OLxhWFYhrY8m+xMGPV9/IZbTmfDui1s0C8AXlIMzuXpT2kqfnYt
	bDL8Q7gAgZmTLbGAVlweV41q0Ur2/d4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-POAZopvYML6I3T4L7a_Jtw-1; Tue, 10 Aug 2021 07:36:20 -0400
X-MC-Unique: POAZopvYML6I3T4L7a_Jtw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0115802CBD;
	Tue, 10 Aug 2021 11:36:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E834E1042989;
	Tue, 10 Aug 2021 11:36:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B867A4BB7B;
	Tue, 10 Aug 2021 11:36:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17ABZqcP003475 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 07:35:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E2D422138CE2; Tue, 10 Aug 2021 11:35:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCD272138CE4
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 11:35:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 886938D138C
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 11:35:48 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-199-giy_0PkxMK-g71gafnhIqA-1; Tue, 10 Aug 2021 07:35:46 -0400
X-MC-Unique: giy_0PkxMK-g71gafnhIqA-1
Received: by mail-ot1-f48.google.com with SMTP id
	a7-20020a9d5c870000b029050333abe08aso7799346oti.13
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 04:35:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=vR4HeTj3Gxagkdi9yJwH19Uuc+oohRn+Mmm7xPaj0jA=;
	b=sRfLXomOR+VanY2nXWx8HHLctoxEc8AZlfV93fOQi5en9UicXynzvUtgengVTVSXsp
	lx/GDmHFV0y5NEY9trSk2/XcFOkXDGQ0zKfXUWSKbQlWxhue/rbDaFxxGxpImO0awxB/
	ClnynMg+UajLE8y7cDKV1zP3VId6wOoyy2kihRfVdfhpW1vslkeo46iiL72i1wgDeWeF
	Tv0G1ugCJ8jGbKBrbQBA1S78iFk1oDuDkQh7g9L55Gf/1DFzgmM+rlKxjlRhRSSjTvFH
	z1HnpRIyDrD3RcZYhlnIseoYhhs/mBmhcTsjKziaeJRuBDjZACHqbSnG2Zkpyj5XXw1L
	JZlw==
X-Gm-Message-State: AOAM533NheZ5poP7fnhGb45/gYexPjtY1IxFhTKMCktBIeI5wPywJCVg
	jm45F3moSGvaHkLW23EliHreOZT18a8=
X-Google-Smtp-Source: ABdhPJwK/p63b29v3W1ffOpAE4GdlKY0KztfL5xHoYsoEqpKfqNKslpOelaQDPxAWUBJccO0CiN+hA==
X-Received: by 2002:a9d:5a18:: with SMTP id v24mr20154133oth.191.1628595345667;
	Tue, 10 Aug 2021 04:35:45 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:6f:d7c9:e59d:b28e])
	by smtp.gmail.com with ESMTPSA id
	s21sm3246925ooh.44.2021.08.10.04.35.45 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Aug 2021 04:35:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Help, I need a Windows VM for my work
Date: Tue, 10 Aug 2021 06:35:43 -0500
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
Message-Id: <AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17ABZqcP003475
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am interested in this topic as well.
Might this be possible with any distribution of linux?

> On Aug 10, 2021, at 5:55 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi all,
> 
> 
> As I stated before, I am running Slint on the bare metal, however my work entails teaching NVDA to clients, obviously running Windows.
> 
> 
> Therefor I desperately need a Windows VM, so I can make a living. I cannot figure qemu, virtual-box, I have no idea, and VMWare Workstation Player doesn't want to install under Slint.
> 
> 
> Could someone please, please, give me concise instructions for setting up a VM using qemu in Slint?
> 
> 
> Warm regards,
> 
> 
> Brandt Steenkamp
> 
> 
> Sent from my gass powered Slint hair dryer.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

