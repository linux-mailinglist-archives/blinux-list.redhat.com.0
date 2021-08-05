Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 901133E0FD0
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 10:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628150625;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+2un891qCOLwdvEzVcKLquNNtmOdalSIN0MZXGJNu48=;
	b=YGnJmA5dUUl1Vdc4UvxQyTwY9oSUE5cnB1Z76+s9F6CpaIg68Uw8RBBTYl4Uwll+J9/7OS
	0MelanmpGYLuoRA1sGkk8RQuen5zAwr/hZZAPt+3r3Km6XsNWYA01Odv43DuVnFG0PmdQz
	HahKf5m06XlKcWRNI+15lPEkgX1o1p8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-Q-n8AMizPmiY_Npal6chHw-1; Thu, 05 Aug 2021 04:03:44 -0400
X-MC-Unique: Q-n8AMizPmiY_Npal6chHw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54E31100F768;
	Thu,  5 Aug 2021 08:03:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 859345D6B1;
	Thu,  5 Aug 2021 08:03:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B266180BAB0;
	Thu,  5 Aug 2021 08:03:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17583X9r005604 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 04:03:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B8B93200FA6C; Thu,  5 Aug 2021 08:03:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2C6F200FA6A
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 08:03:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C61F48CA952
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 08:03:29 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-71-NxA_6nE8MGarda6yeF1oHA-1; Thu, 05 Aug 2021 04:03:26 -0400
X-MC-Unique: NxA_6nE8MGarda6yeF1oHA-1
Received: by mail-ed1-f41.google.com with SMTP id x90so7091510ede.8
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 01:03:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-language:thread-index;
	bh=2tl5ZHlWLHZLDfyznQMR9D6oOu+eZJX1/XXmEAApTtg=;
	b=WDfvRLvD9nmy+MUQFQf5gpNannj9QZ4TxV59NtAfZ/xY1fuPrajsHpTNbhUD2qHayS
	PqLr2mHOl0+z5EpzFbLpqrQljqXUQk9654kI9Vl1xR76EAa7jNh87BlMrPdobU478CIF
	NYxteOmrnlHkT24sRI2L/iBYiOo45mXz8WYghRxlK0X7ZLJrQZdEYnKDCPAd8jhBAALS
	byMf7fGU4xdgHIRSPPW/mXITUFsW4OxtlpTLlhuAv13utJKc1957i7i2lXrGxYJERXwA
	NnkOTtyiobCybtPIuqvlYefTEcDGasDe6qt32Rqm2uravI5/LMlHKG57MUPr1+d+DRgi
	eVug==
X-Gm-Message-State: AOAM531C0i92X8Ac8nL+RyKuot8OssUMHOa8nDEjhxdN//0S+91DS5Mw
	U8I6LICOS+O4GzX7AqjPiPiX8zN6YTXZ8A==
X-Google-Smtp-Source: ABdhPJwstHCEOYZ/k/IaxFZw87fVuShjnnv20RhZ3Ew3lPXASn/6LdjckQjCZuGyvT7oFiifCpJr9Q==
X-Received: by 2002:a05:6402:603:: with SMTP id
	n3mr4842094edv.61.1628150604537; 
	Thu, 05 Aug 2021 01:03:24 -0700 (PDT)
Received: from LAPTOP57VCMCF1 ([197.185.109.16])
	by smtp.gmail.com with ESMTPSA id
	di14sm1940557edb.79.2021.08.05.01.03.23 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Aug 2021 01:03:24 -0700 (PDT)
To: <blinux-list@redhat.com>
Subject: Looking for help with switching on the bare metal.
Date: Thu, 5 Aug 2021 10:03:21 +0200
Message-ID: <005601d789d0$5ca614b0$15f23e10$@gmail.com>
MIME-Version: 1.0
Thread-Index: AdeJ0ApRtHT8i2BiQ8mNt+Mz0zxgNw==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-za
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

 

At the moment I am running my Linux in virtual Machines, simply because I do
not have hardware that I trust to work correctly. I am currently using a
Huawei Matebook see specs below.

 

Device name      LAPTOP-57VCMCF1

Processor            Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz

Installed RAM    16,0 GB (15,8 GB usable)

Device ID             E533DBAD-50FA-48FF-A9AC-4B1B9BBC462D

Product ID          00342-41428-46767-AAOEM

System type        64-bit operating system, x64-based processor

Pen and touch   No pen or touch input is available for this display

 

This machine, as far as I can tell, is rather new. I have tried looking
online, but am not sure about what I am finding, or for that matter, not
finding. If anyone can help me with this machine, I'd be grateful.

 

Warm regards,

 

Brandt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

