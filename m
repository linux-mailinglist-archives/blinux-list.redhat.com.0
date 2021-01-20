Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B45CA2FCCA5
	for <lists+blinux-list@lfdr.de>; Wed, 20 Jan 2021 09:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611131143;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=u7QWCio+7y0VTwhkRzwKX4LUzhcS7tDPyPMIC7rR3l4=;
	b=STJ6JkLmDTv6vNuHbIZCAo+OP+OyH/B1qui/Rq+JGfA7fcenl8IkFUqe6CK9cFuG4FnYUs
	aDPvqudFJFiRQZ7Tt5R94FHfGFcP8xFtGrVFJ/6OYQkGij+OnIfM6+VeflOm8K6uAgpBxm
	byxnBFJ0Jm2E7PwnStQPD3r7g1Ej+/M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-tDirNxKrMayg4bEy0DZhqw-1; Wed, 20 Jan 2021 03:25:41 -0500
X-MC-Unique: tDirNxKrMayg4bEy0DZhqw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4030107ACE3;
	Wed, 20 Jan 2021 08:25:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7C965F9B5;
	Wed, 20 Jan 2021 08:25:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 692E7180954D;
	Wed, 20 Jan 2021 08:25:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10K8PEJI004829 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 20 Jan 2021 03:25:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D986D2026D15; Wed, 20 Jan 2021 08:25:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3FF42026D76
	for <blinux-list@redhat.com>; Wed, 20 Jan 2021 08:25:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDEA9101A562
	for <blinux-list@redhat.com>; Wed, 20 Jan 2021 08:25:10 +0000 (UTC)
Received: from bilbo.visn.co.uk (bilbo.visn.co.uk [193.254.210.60]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-328-9gflWn6SNnqhV9FQN_4sFA-1; Wed, 20 Jan 2021 03:25:08 -0500
X-MC-Unique: 9gflWn6SNnqhV9FQN_4sFA-1
Received: from cpc121376-wals12-2-0-cust242.16-1.cable.virginm.net
	([77.100.80.243]:1058 helo=bobsh23aug09)
	by bilbo.visn.co.uk with esmtpa (Exim 4.93)
	(envelope-from <robh@apearl.net>) id 1l28MA-008MUr-P5
	for blinux-list@redhat.com; Wed, 20 Jan 2021 07:56:46 +0000
Message-ID: <CB2C7FB5843944BA9290DD342DCF84C2@bobsh23aug09>
To: <blinux-list@redhat.com>
References: <20210119192128.GA9767@panix.com>
Subject: Re: an espeak phenomena
Date: Wed, 20 Jan 2021 07:56:56 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5579
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - bilbo.visn.co.uk
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - apearl.net
X-Get-Message-Sender-Via: bilbo.visn.co.uk: authenticated_id:
	robh+apearl.net/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: bilbo.visn.co.uk: robh@apearl.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

VoiceOver on iOs does that too.  Fragmented memory, needs reboot to clear. 
I guesss shutting it down and re-loading has same effect of laying it in 
sequencially again.

JMO, RobH.

----- Original Message ----- 
From: "Linux for blind general discussion" <blinux-list@redhat.com>
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Sent: Tuesday, January 19, 2021 7:21 PM
Subject: an espeak phenomena


I'm using speakup with espeak and espeakup, and over the past
couple of weeks I've noticed an odd phenomena: on occasion, the speech 
sounds gravelly. If I continue to
use speakup the gravelliness or roughness of the voice becomes
worse and worse. But If I stop the speech and wait a few seconds, the speech 
smoothes out and I
can use speakup extensively with no problems, at least until the problem 
recurs a few days later.

Does anyone have  a clue what's going on?

Thanks
Rudy Vener

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

