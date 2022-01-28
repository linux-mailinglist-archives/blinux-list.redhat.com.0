Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5B949F2BC
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 06:05:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643346302;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T1Y71XNfUVqXq693jkyf5ELQmMaa+RIEmQMOiZit1sY=;
	b=dE0xBj7vzJq/2SK6GjZSpcnhGqlcMPYkJ5Av6X6p6Wu0bm6afMq0/1J2kDH0e+YSbIPdPb
	4MUozar26BjnUTO+O6ASWw9pHkSwK6onyEeuIDUarQdRQTRryfSLWtg7Bs7QL1FMjc+Uzq
	Hx8jwL6p3sVDTdmXHoj2A8cGIj2cbXE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-YWAF5-P1NTOASs2X2ZEjxg-1; Fri, 28 Jan 2022 00:04:59 -0500
X-MC-Unique: YWAF5-P1NTOASs2X2ZEjxg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1229F2F25;
	Fri, 28 Jan 2022 05:04:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6B2F108A6;
	Fri, 28 Jan 2022 05:04:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8E6441809C87;
	Fri, 28 Jan 2022 05:04:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S54aPM012460 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 00:04:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7403140885B2; Fri, 28 Jan 2022 05:04:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7010A40885BA
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 05:04:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5801980B712
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 05:04:36 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-426-vyuVkhm2N6urcybt49-tuQ-1; Fri, 28 Jan 2022 00:04:33 -0500
X-MC-Unique: vyuVkhm2N6urcybt49-tuQ-1
Received: by mail-qk1-f178.google.com with SMTP id q5so4666358qkc.1
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 21:04:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=smEuHrLGAaXtDnx8b8znX/VwKxWjdJwEDfD/rT5RijE=;
	b=DcPDPnEwclZeXtWg4CFIIvzxqe0VPzmnha3+RcGr4clu1fyyK8khQiaC1NiAOqiDml
	0vNXkxqu9v23lzTmjU9kUicuwxuZxjKBiB3mKC+vQVLnGpcX/sbatEnywCjm5Ab6CQyR
	44MbS82M6clpB17saYIhQMlZrXkwLfrrLI6K75O7R9ZiEzprbkirTAsV67MfCdX04+DD
	fL+a85UCRxhua77m2FmM42hMt8t1ZKHKO0jQmVNNyziZCtzg2xINABv0kWGhiTHud/C3
	d8/1YmriOwm6/NKcCL7rUhUarCd7P25YsOGn5ytR9EZBJiOy+w/kZsnkRdSub3uzf1vE
	PfnA==
X-Gm-Message-State: AOAM530V7qQ6qJpS8N248UyHVWCMJn301qL3xZaNMJbfcszM3n1xKjmc
	rhrkSO4ffvhF5EJMDsIZiJDO0uwAOnd2gLwQuP3DKrmx
X-Google-Smtp-Source: ABdhPJwujM0lGAVFlQFEuRXi8Wze7EHkwRpNl3mvsk/hgXoKaKaYf568ODASVHty4G6vi+DmZvIu7LXoPFRutYJPhio=
X-Received: by 2002:a05:620a:4f3:: with SMTP id
	b19mr4735407qkh.387.1643346272785; 
	Thu, 27 Jan 2022 21:04:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Thu, 27 Jan 2022 21:04:32
	-0800 (PST)
In-Reply-To: <CABKqQvF12fg-iDHTjQ3nhXNUfJ=zpfWC7qT7ahVQsMfMhqz7zQ@mail.gmail.com>
References: <571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
	<YfIP1c5bihD/wxmY@panix.com>
	<CABKqQvF2jRBAb=Rw9MzgCq-U_0r7rGNA1uqTodcrxKuTGYorrQ@mail.gmail.com>
	<CAPo=n-9UfJA2kW-Lc32Uy6X3Q+vU6TMHkz3GH+R2Y8bfmBFSeQ@mail.gmail.com>
	<CABKqQvF12fg-iDHTjQ3nhXNUfJ=zpfWC7qT7ahVQsMfMhqz7zQ@mail.gmail.com>
Date: Fri, 28 Jan 2022 05:04:32 +0000
Message-ID: <CAO2sX323VuKngdShose_k6H_y6eR_Mu67jKu5y15cB4KpmvDtg@mail.gmail.com>
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've never had issue with the default speech rate in Orca and for some
reason, Orca+Spacebar refuses to bring up Orca's settings on my
system, so I can't check, but two things that come to mind:

1. are you sure 100% is the maximum for whatever setting you changed
in Orca's settings? Because, in the context of speech rate, it would
be logical for 100% to be the default, not the maximum and that you
should be able to crank it up to more than 100% of the default rate.

2. Did you restart Orca, your xsession, or your computer after
changing the config files? Programs often only read relevant config
files when launched, so editing config files directly instead of using
the program's internal settings screen often only takes effect after
restarting the program in question, though it can sometimes take a
reboot to get the altered config up and running. If I'm not mistaken,
bringing up a run dialog(alt+F2 on most graphical setups) and
executing

orca --replace

will restart Orca, though I'm not sure if restarting Orca will be
enough for an altered espeak-ng configuration to take effect.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

