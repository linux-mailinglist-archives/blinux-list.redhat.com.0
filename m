Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 45337456933
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 05:34:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637296487;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IxJ8RfU5zAWILE5WarzZG+EPpjnjaLL+bOz0TLCNEb4=;
	b=N4MGmqiq6kF0v59SNJdRRnKXiMEM4LzaT8W4D2pM1Wbp/jDSc9mnnVIE8MahDkXHaM5HGc
	shS0xWKgOK3q4SWLd5ng6/Jo+nhCzJ9KNjnivwUh31Hff3KeRm+Hx5Z7Hn9Pc46bqoX5TC
	ZJA8pJU7K0Sdt7Wu523iUT1grk+EbzU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-569-DwnkWyqAO8OQvRdkZbjYEg-1; Thu, 18 Nov 2021 23:34:45 -0500
X-MC-Unique: DwnkWyqAO8OQvRdkZbjYEg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAFA4102C8D4;
	Fri, 19 Nov 2021 04:34:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFE395DF5F;
	Fri, 19 Nov 2021 04:34:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE008180BAD1;
	Fri, 19 Nov 2021 04:34:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ4UuPA030163 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 23:30:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 09D5C404727A; Fri, 19 Nov 2021 04:30:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05C6F4047279
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 04:30:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2DD585A5AA
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 04:30:55 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-416-2aGw7CWmMHOBzX0B-3R4OA-1; Thu, 18 Nov 2021 23:30:54 -0500
X-MC-Unique: 2aGw7CWmMHOBzX0B-3R4OA-1
Received: by mail-qk1-f182.google.com with SMTP id q64so9033027qkd.5
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 20:30:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=qgOeInIVkAw9c6e60QwOJVe745etGfRCyctfMy7nM+k=;
	b=W9zms1+u2dwm3hbNwHCdWWVl1aMZ2GH9d19SNxSZ4CBluJ8HWrmXs0rjJOygHtBTlS
	WL9hDDkiOxwl+TdMByGxPlmDY6JkVyGdlzHYOOsnVT0am0YuXaCqN+x9V7waj8AMLAlv
	VAD0Evvd3GkNCScGNLfTKdYQS/zhkdyMsRGNll0j30lepQOo6P3yY7SAEEUSbCfeWk5y
	lcYVSkd9BIb3XVts1+NbwCOs/yAtVpxarl+EVBlbBPg9HVppohajlzkHNAM39dEv98Vz
	y9VdZnK4jSCbV7BgpTjAK9b5oRo4yoEUzEvLmEy6VkKJ5xxqbAXR9XkJXEIiFwThnL21
	71cQ==
X-Gm-Message-State: AOAM5333L25FVh+FRf+HhTBO5iYFJAJlGDF4jurUsKNPdMmscT0ptWBD
	pdRMw78QqC8kfWvG4W9CcaWiWVjpaF0=
X-Google-Smtp-Source: ABdhPJxOEqcQFD6G5WPAxAMiXVlgD45WWwh8kkVO+JzZw0Ez/PyOTtzP8CXGoMJTLnGLLE3KoYmnjw==
X-Received: by 2002:a05:620a:28d2:: with SMTP id
	l18mr24572525qkp.462.1637296253705; 
	Thu, 18 Nov 2021 20:30:53 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	l15sm1000798qtx.77.2021.11.18.20.30.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 20:30:53 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
	<33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
	<58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
	<ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
	<5e4b723f-dea3-48c7-3381-56c520c0c230@gmail.com>
	<fb7296f8-21a9-c6a8-3ac3-43ca70546485@gmail.com>
	<3a2ec932-d790-32b8-0118-0d08f81d52c2@gmail.com>
Message-ID: <1ec6a39d-7e92-ecce-333c-9945f4653327@gmail.com>
Date: Thu, 18 Nov 2021 23:30:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <3a2ec932-d790-32b8-0118-0d08f81d52c2@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes. The dnf dragora updater does in fact work. You have to hit either your menu 
key or shift+f10 on it and select update. Then you can push the select all 
button followed by apply. If you want, you can see exactly which packages are 
being updated before you apply the update. Once you click on apply, just press 
the enter key when the window pops up and then it will ask you to authenticate. 
Once you do that, just wait for it to stop chattering or beeping, depending on 
your progress settings. I hit either tab or shift+tab periodically at that point 
just to be sure it's safe to quit, as the select all button and the search box 
will come back when the update is complete. Otherwise, you only have the quit 
button, and you wouldn't want to quit in the middle of the update.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

