Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD1F4994AE
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 21:50:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643057441;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GqSxvgCpCvkIQgU3o+6HMcCP9B8BF7KIwcStx8P1L+g=;
	b=RIFqskcuHyzb5YN9ck9cmmK8eC+vVQEcmNztVDtBW/g+YO8DXyhq7wcLrECz9iVThHVgw0
	NYmSk9SDCY21sENXdrAzl8UrOP6y++MXbBvIJLkNN6XkvejZJ8qmRdlzUzvlXMuwJMRjwv
	+SJyQ9Pjn+chPEPnIHFP444Ut+tqww0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-ILG05zQbPcqdWtnI1abCIw-1; Mon, 24 Jan 2022 15:50:38 -0500
X-MC-Unique: ILG05zQbPcqdWtnI1abCIw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 171F483DD52;
	Mon, 24 Jan 2022 20:50:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 529EBE72A;
	Mon, 24 Jan 2022 20:50:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8FD301809CB9;
	Mon, 24 Jan 2022 20:50:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20OKoLYk018752 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jan 2022 15:50:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 01FDC2166B46; Mon, 24 Jan 2022 20:50:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1FEB2166B25
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 20:50:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D7A328EE128
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 20:50:18 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-322-gtupFZB6N9SDFdXKVQw5uQ-1; Mon, 24 Jan 2022 15:50:16 -0500
X-MC-Unique: gtupFZB6N9SDFdXKVQw5uQ-1
Received: by mail-qk1-f173.google.com with SMTP id 71so5864197qkf.4
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 12:50:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=wcaQuR1pnbOZchCBl039mvfOGPPikwsrThq67Ps29iA=;
	b=LYhFjhMiPU7l4jpz8XoJlJGn+rC9WM5cE22A/R9KEDEtq1Dps5RFgHurYNXcvVfYbr
	KO227HbBK3EM56rNXMPcSfGNGNdHqzGmCAMGe3WPsvY5QQy9xnqyuBkWrdg2U7k9xPsN
	RnsQSq4ju0oeH+kY2k5iqHD9EEmc+BOHZ05bgwcub5O59uo8bdZ8w6SS4RbbpCijJb1C
	mM3TFTZv62iySPMYPvPlv14QFCPv4qxIxrHG0QwzyTwajZslw7LhndY7b6kmqabxGUwj
	ejtqULRs1jAiX6aq/0fR8+N0KT7mVDJJE2rg7Sb+dOVwQQg2YOshLKJt4wIDKI5BHRsL
	cRdQ==
X-Gm-Message-State: AOAM530I54hGkqb9t47Swk0yX2Xi3TMJ6bAQ8HZ26Ne1grISnE2YQwlD
	L2LZ4lrcjscdjAv+C+eO3b8ABWhhCZkurpXXxyc/t/La
X-Google-Smtp-Source: ABdhPJwxbg17VaS0tKXDC5TfdZdiNjVZ1DmmutJLajJ3wlkFhElnSBqqNIH4JT3+JV9fAj1zySnbSVcZMZdd6wGTby4=
X-Received: by 2002:a05:620a:15ad:: with SMTP id
	f13mr2771613qkk.124.1643057415468; 
	Mon, 24 Jan 2022 12:50:15 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Mon, 24 Jan 2022 12:50:15
	-0800 (PST)
In-Reply-To: <2aac53e8-ef6b-62e2-0539-0db8ab234818@gmail.com>
References: <2aac53e8-ef6b-62e2-0539-0db8ab234818@gmail.com>
Date: Mon, 24 Jan 2022 20:50:15 +0000
Message-ID: <CAO2sX32o1VFUNCT9U--rnyN5x0b7KgJE8Uv6XR3jOkz2tkC60g@mail.gmail.com>
Subject: Re: Applications menu missing in Ratpoison
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm on a Debian-based system, not Slint, but pulling Ratpoison up in
Aptitude and consulting its dependencies and recommendations, it would
seem you need a separate package in order to have an applications menu
as ratpoison only does window management. The version of Ratpoison
recommends 9menu and menu, the former of which is designed for the 9wm
window manager and the latter of which might be specific to Debian and
its derivatives.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

