Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A250B3DC251
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 03:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627694987;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tVD3JqvcCHYs+pjDVyEJ2NYF/0cyh/1cunpCNn+o2pM=;
	b=hvs7IthaBqnZO1BBtvefbzjUG5S2zIjUfF++RCsvOpEqfF6sCKuk9gWM659Z2yuTB/JDrr
	YkzLsUZYRwL4OtyowXOU32czfZiRro4/L81BhzlOHKTBWfVifSYdzPXhLua+PmdQNHLqVz
	PwQlz0cotv2emBjtPqpgjG5dwyM3PAs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-5Z8vTriYNLyJ_KiIChaSBg-1; Fri, 30 Jul 2021 21:29:45 -0400
X-MC-Unique: 5Z8vTriYNLyJ_KiIChaSBg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6FD711006C82;
	Sat, 31 Jul 2021 01:29:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD8FB5D6AB;
	Sat, 31 Jul 2021 01:29:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C059B4A7C8;
	Sat, 31 Jul 2021 01:29:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16V1S16g012920 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Jul 2021 21:28:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 78A2D2126731; Sat, 31 Jul 2021 01:28:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73F622114DED
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 01:27:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F31FE185A7A4
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 01:27:58 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-497--S9Cd0h1NyqNw2wdxroEnA-1; Fri, 30 Jul 2021 21:27:56 -0400
X-MC-Unique: -S9Cd0h1NyqNw2wdxroEnA-1
Received: by mail-qt1-f175.google.com with SMTP id g11so7732569qts.11
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 18:27:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=SuJ802/WkAjPECV/gwOalg19eIE2F3b/ruENZIqFhik=;
	b=qyxz5yoSKEP6uyxsZkMALE9bU5WXnO98fX2n9hSyApvuaATuxXUGf7ay0OC5OqnKWa
	KQFGNisRRTMA7T/vGvbaWBBbq79bGMSiPDSmSYIlA8zthSyqFT4WrYMguXaR5ISCEG4y
	aD5n2Ht2srQf/Q1rLDUcyGOr7ZlwZzV8vIPfjOzz+1ujCx0ufd2UOkgN36Ejk2Ko8fJe
	ADXUKxZhgStGWC1qfB88v/zHYWd4YDUoi5j1lrOuLzg4aNPmPWzrmaSQmTnAs9suZTqo
	550szT2hEDURroI0qHItt5+uS2/ZyvqaxCIkitc7cghADqpA5kTT78p0o4xfTR73cgE5
	QN+Q==
X-Gm-Message-State: AOAM531gktH98uDkJesotnlWbGCsUFLmFxd/1af50svjI4jsRlbSGSQo
	vkizOasoaw3h5f9DRxVgo38nexNJfcA=
X-Google-Smtp-Source: ABdhPJxgKLwwAHpR2MYsvA8nfFIt1d0k5Ns94P+r0AAR+6i9d/Ba8PZilnMBp/aAcpkJIRjp2w5lOQ==
X-Received: by 2002:ac8:7a98:: with SMTP id x24mr4921756qtr.42.1627694875677; 
	Fri, 30 Jul 2021 18:27:55 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	g24sm1407438qtr.86.2021.07.30.18.27.54 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Jul 2021 18:27:55 -0700 (PDT)
Subject: Re: Solus and Broken Speech
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
	<alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
	<a329141f-64a6-e2a2-1c8e-b16e5d108cad@gmail.com>
Message-ID: <c88d0cb6-3429-f482-6de3-2bd6262b9967@gmail.com>
Date: Fri, 30 Jul 2021 21:27:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <a329141f-64a6-e2a2-1c8e-b16e5d108cad@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It's possible that Solus is using Pipewire by default. Normally, it is a 
drop-in replacement for Pulseaudio, jack and alsa front-end systems. but 
it seems to have trouble with speech-dispatcher sometimes when 
AudioOutputMethod is pulse. You can try installing Pulseaudio, which 
will move Pipewire out of the way. Otherwise, setting your 
speech-dispatcher output to alsa, either in your user account or in the 
system-wide configuration, sometimes solves the problem of choppiness. 
Note that if changing speech-dispatcher's AudioOutputMethod to alsa, 
there is no need to install Pulseaudio, as Pipewire-alsa should work 
fine. This of course assumes that Solus defaults to Pipewire. Check your 
package manager to determine whether pulseaudio is installed. If so, 
then you likely don't have pipewire, and your choppy speech is caused by 
another issue that most likely won't be resolved using the above methods.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

