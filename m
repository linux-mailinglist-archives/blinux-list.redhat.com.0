Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id C8ABC2F4914
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 11:58:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610535516;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yHSuTJJ70VjRU7092h7RNuy4ZSLVzlVnFvN+8J8Hgww=;
	b=b+fbILBrg56TtqjKGczFJrbdBTkTVW20AGHiEkdSpyvIErNX4MBYbaQzPJHsL0U7JA8HF6
	ReiHP+wwwo8V/E8344ysC8PM7cRWZQaYzz29LZWxXVITONCa18A55H2OLXx3y+59e9n0ok
	k8T4qGMr6rnBI+jI/nxdaTG/sFPiP1A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-MYz21rJ1MX2nrA1FwTE8Ag-1; Wed, 13 Jan 2021 05:58:34 -0500
X-MC-Unique: MYz21rJ1MX2nrA1FwTE8Ag-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A278C7400;
	Wed, 13 Jan 2021 10:58:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2985C100AE31;
	Wed, 13 Jan 2021 10:58:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 811F24BB40;
	Wed, 13 Jan 2021 10:58:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DAw9Hn021159 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 05:58:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 25531C77FA; Wed, 13 Jan 2021 10:58:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F7B5CF616
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 10:58:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 41E76811E87
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 10:58:06 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-504-dPZ85RutPZevJkdhtja4jw-1; Wed, 13 Jan 2021 05:58:04 -0500
X-MC-Unique: dPZ85RutPZevJkdhtja4jw-1
Received: by mail-qt1-f174.google.com with SMTP id y15so804686qtv.5
	for <Blinux-list@redhat.com>; Wed, 13 Jan 2021 02:58:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=zvA2rRiGgsHJtWw5Mb5+wbejTe8ExCtd/GLCC7Mb9dU=;
	b=jtjygTf0Nyo9WlmKPpaMdR0gJOiXRAvMo4sW2+Yc0hQz2T9hIQp2rRw61+Lr0n4yAw
	hbnjKFZYjIFlmpi3kYM3TYYVGOcpaLYKHXw300Hpn1u2VIYq7DnyQweRo9k8/KzxJ3u2
	FyZZwPfIs2QiLcHYOAPr6KCB0op3mgD2HoBJ+YMXVc+i9Dax+xDMihg/6gB+QC7yPOGC
	Xojchp+ss8FThl7SQP+JHfpGty0zB9dqfzIx1zUvlMtqd89QbMKm2BDiS8i1uDcvdPj5
	0L0viyvrO0DLVFFyL3BcKifn3q+KnHF5QjXe6kMbXquSqqP+fXcN+YniISMRenRkqe+i
	L8Tw==
X-Gm-Message-State: AOAM531sBbmx/O1hTS/4VFklf2PoANFhdxwjhBRIPL7FwHzxdkVQMJRQ
	H0AKATHnplbwG8Vx6sZ9mzBEzVDhaKg=
X-Google-Smtp-Source: ABdhPJxWAE3LH4Uj+0h1I87IjbcNI5XN1lAGKZp0G7hU0IEtUxg3I76vIWIodUpLFBrlzOqNNowtYg==
X-Received: by 2002:ac8:bc8:: with SMTP id p8mr1500637qti.135.1610535483527;
	Wed, 13 Jan 2021 02:58:03 -0800 (PST)
Received: from ?IPv6:2603:9002:306:2200:a4d4:75d1:250d:48ad?
	(2603-9002-0306-2200-a4d4-75d1-250d-48ad.inf6.spectrum.com.
	[2603:9002:306:2200:a4d4:75d1:250d:48ad])
	by smtp.gmail.com with ESMTPSA id l20sm764660qtu.25.2021.01.13.02.58.02
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Jan 2021 02:58:02 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 13 Jan 2021 04:58:02 -0600
Subject: Fwd: Does anyone on here read code in braille?
Message-Id: <3F62765C-1C87-4A27-BBB9-C648DEF35090@gmail.com>
To: Blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The canute display is cheap for a multi-line display.
Nine lines of 40 cells I think.
I have read some code in the past but not lately.

--Brian Tew

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

