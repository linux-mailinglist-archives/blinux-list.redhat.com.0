Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D777139394F
	for <lists+blinux-list@lfdr.de>; Fri, 28 May 2021 01:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622158498;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i+EKo2vbOoB4lLRiqlzDej0S0uND3KpwcfspZ93sfaU=;
	b=JsvxmG75Dm6tr2TFN53MuUuEVeTb765CXlhQVv9ZN3AD/fcZYXSlEZTpUAMSIKn8PMvWxw
	qLlNigvvr8m0cYIwXGuo/SyYFft7cLFd3b7D/ihKof9AJ6iWskyBRGKaHNlHzXe94fjLCS
	5KlBkZU34Q6GUw4oYKYxt+ui/43RwHo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-O_inBxC-OWebq1ZIcMNUHQ-1; Thu, 27 May 2021 19:34:56 -0400
X-MC-Unique: O_inBxC-OWebq1ZIcMNUHQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B523480293C;
	Thu, 27 May 2021 23:34:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A6C160CC9;
	Thu, 27 May 2021 23:34:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A540655351;
	Thu, 27 May 2021 23:34:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14RNYjnh006164 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 May 2021 19:34:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8456910A1452; Thu, 27 May 2021 23:34:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FDAC1055233
	for <blinux-list@redhat.com>; Thu, 27 May 2021 23:34:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3634101A531
	for <blinux-list@redhat.com>; Thu, 27 May 2021 23:34:42 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-211-j_-WDbC3NC-Y0STH_7tBHA-1; Thu, 27 May 2021 19:34:40 -0400
X-MC-Unique: j_-WDbC3NC-Y0STH_7tBHA-1
Received: by mail-qk1-f176.google.com with SMTP id j184so2465444qkd.6
	for <blinux-list@redhat.com>; Thu, 27 May 2021 16:34:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=o9wtzMC/jOvkCSG2Mxjh+hDtudUq0NKao8DRvGrtSgQ=;
	b=Kg59TuFohL0owVQ4wpj+0KSiRWqr1g0a7ueP/+IVeyvGlFQQ9RbeCemFYrtsRhOEMD
	TPWHDVk4W98EQ4lQ0pqxRSlD3P7GALa6g4Y1xveq8BnoM3CoHHVSYGytS0qCxFcxlIW2
	QHNT3Cj0zba6iVGMVtj55k5grGzzFnzkVMRLmncRNWwgSMRklFz9JBwgsQ0zMRrSoO+C
	p+UUTh/7XS6RnAVfBBhqr/m422TuCcsEzFy73BB+gCs7iLnxg8TD1UTpfrH3yxjhI8RW
	m722C2u5tXVcbx1xbYw00dHzVocxeD/G4aDj60QrHqCCT8Ff562grUwaeLiAKF06lJhf
	F3UQ==
X-Gm-Message-State: AOAM530wB3thR3ZU8CPFR9vZXRBhypmrNWjVQDFXl6I2LwErvZmKbKMi
	pdEpgh2CTpHq67qmIswwP0OZo6W7dSmZ9M392bXhVqO6ZX4=
X-Google-Smtp-Source: ABdhPJzv5yGNAq4yemBjE9Z2YW7JJppdfOa/8W1lgFUjiEOJCOAkzb8pMrKytAB06A9dUE8o/BywfJSsfvfNQaBbnWE=
X-Received: by 2002:a05:620a:2f9:: with SMTP id
	a25mr1041802qko.401.1622158479502; 
	Thu, 27 May 2021 16:34:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:293:0:0:0:0 with HTTP; Thu, 27 May 2021 16:34:39
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2105271904180.17882@panix1.panix.com>
References: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
	<20210526130051.2e6fddad@bigbox.attlocal.net>
	<CAO2sX31e1qtOiM0-usOHPQNvyDR=GuHEaHQo1qEAbwcUKGGxjQ@mail.gmail.com>
	<alpine.NEB.2.23.451.2105271904180.17882@panix1.panix.com>
Date: Thu, 27 May 2021 23:34:39 +0000
Message-ID: <CAO2sX31ZNaxM3dHXXhFxiqfXEfJ_6ceJeYJ0_GJeni2ikc-RKw@mail.gmail.com>
Subject: Re: Crawling a website for media files.
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

Okay, podget seems to be doing the trick, having already downloaded
about 70 files as of the last time I did a ls | wc -l on the download
directory.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

