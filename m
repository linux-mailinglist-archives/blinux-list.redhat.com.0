Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9DA953DC650
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 16:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627741981;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vbavf8pG4MFYtzAFVKIRBISIn5udS/7j/nlfeApsrrs=;
	b=UXISsHPYwwCs+3fQfFCs16Y6OHDq/PgAjvjunWNrv5HdeXTs6d3Xt/XtYyYfsyq/SKDmjZ
	1AWJhCHlEffJOEnv4ai+LDMLMkgSwgwOluvMbYGKaUKGfS9V8T5CHKvBmkaoQzSBqiT14B
	12kqp74xA4e3bpSiAKq88c07smSJ+XA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-vLN25j6dMqODZKST7DuLGg-1; Sat, 31 Jul 2021 10:33:00 -0400
X-MC-Unique: vLN25j6dMqODZKST7DuLGg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E405875047;
	Sat, 31 Jul 2021 14:32:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94BF41007611;
	Sat, 31 Jul 2021 14:32:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 24EEF180B7A2;
	Sat, 31 Jul 2021 14:32:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VEWd5J024001 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 10:32:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B66A02157F4F; Sat, 31 Jul 2021 14:32:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B20522157F4D
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 14:32:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F3768CA94F
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 14:32:36 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-117-fvuE4pzJNGWHBsB7vFYSXA-1; Sat, 31 Jul 2021 10:32:33 -0400
X-MC-Unique: fvuE4pzJNGWHBsB7vFYSXA-1
Received: by mail-ed1-f41.google.com with SMTP id j2so17664827edp.11
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 07:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=LWn3RNidB+bE+tpQRm1QGoUTseW7+kA3fNQRzA5Hfbg=;
	b=epl7Q1se9IhwMzKsIWHJ10NJ1E2fruPDj0FPka1lNmb2vWic35Q1g2NM6XPg/CWTkG
	dyUlagge8rmiLvBQBUqYVl9Gmf/ZNBdPi169KT5eWNmpcoImBeSzzph0CVs4u7DPCFAK
	kZecq/YZbiEOOy3/lQNvc1vZVMQUJMkF2Tixwgfpju5HTrVlF1dE/eVYoq3EcaB+LMsy
	TGHXdO/w/gI+wZd5//AXUTgPm1f/6e7LK7eS2GwDy4OaOjP9pePvApPIqi7XqFuArayW
	vYuqMYqh1FpVF0rb5R3/pTKBcjLftkH6r/O2ssbq1/ZXIQwbL3malBMlUgH6pLiuYRTo
	AcYQ==
X-Gm-Message-State: AOAM532Ed9/GEo46f30srMwU4gBs6uX1sNnjvAq1lr7ROj3gBhpTc8NX
	MHeLeZ8sUVze+pmFKm3sPg4eMN51uFM=
X-Google-Smtp-Source: ABdhPJwPHsW1v2Mbf9PAeWKMGoaoyUvZlollc46mgUWgvvai68XKoUr0eb/dh1pWqPJ8qds+5dhjzg==
X-Received: by 2002:a05:6402:270f:: with SMTP id
	y15mr9330137edd.65.1627741952444; 
	Sat, 31 Jul 2021 07:32:32 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.99.209])
	by smtp.gmail.com with ESMTPSA id er9sm1785515ejc.0.2021.07.31.07.32.30
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 31 Jul 2021 07:32:31 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Interesting issue
Message-ID: <b5bb7159-46d6-4cc3-9e36-b66ec3b2c195@gmail.com>
Date: Sat, 31 Jul 2021 16:32:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I am trying to run an update on my Slint system, but I get the error 
upgradepkg command not found. I am running sudo spi -u && sudo spi -U. 
Everything goes ok untill I get the "upgradepkg command not found" error.


What am I doing wrong?

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

