Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 005773E33CA
	for <lists+blinux-list@lfdr.de>; Sat,  7 Aug 2021 08:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628318010;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xGStRLOBIqYw7pNmKrukyLmmg7QoL8htGHic6wZMWkU=;
	b=Wt8gHKKzLM7jQXjJkfI9Su4rhp/LgbBm+erjwz6fUbMg9UHwyaDVaeHDMErKbvgF8qcnGy
	P65KTdXeKVSpvKvjGK5M0Tw+mvjsThIoUiXQvblhZQohOcE/U8YlE9dbMks8CYHTnZ6b1v
	Wk+ijvSqgSRRMYZHlkYiedmuyOxw3RM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-BudfF9r_OK2AV4MtWmW_Dg-1; Sat, 07 Aug 2021 02:33:28 -0400
X-MC-Unique: BudfF9r_OK2AV4MtWmW_Dg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C27B1853028;
	Sat,  7 Aug 2021 06:33:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 718715DF21;
	Sat,  7 Aug 2021 06:33:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6A24F4A7C8;
	Sat,  7 Aug 2021 06:33:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1776X7Rr012015 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 7 Aug 2021 02:33:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BDDB6202BFA3; Sat,  7 Aug 2021 06:33:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B70F720BDB37
	for <blinux-list@redhat.com>; Sat,  7 Aug 2021 06:33:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 180658CA953
	for <blinux-list@redhat.com>; Sat,  7 Aug 2021 06:33:05 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-431-JUxTjXkKNwyAHbPaXVh6BQ-1; Sat, 07 Aug 2021 02:33:02 -0400
X-MC-Unique: JUxTjXkKNwyAHbPaXVh6BQ-1
Received: by mail-wm1-f41.google.com with SMTP id
	h24-20020a1ccc180000b029022e0571d1a0so7535909wmb.5
	for <blinux-list@redhat.com>; Fri, 06 Aug 2021 23:33:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=38iD4l6EBCmncEB9BmMAX6OqmKKzWmCci3BV1fBOy40=;
	b=sPiYJMbWOsNLBugFA78Ct6m7aKaJwEaQ2T93KDajdo5LZqD9/E3UwORG2s+KlTEIbp
	fLKbkxkq2H+/JkS9vtpTtubaoJ51eIU3777nARITZGXqZMDTSGv30vCJ9j24Wsqh2/bt
	fc6D4mdWchhFuqFhHIQAu7s3EGAAIZba0ERl4UDt1h8fyh5CgTUq0WEwOVfa6sCBj5X4
	ww5wTgg1KZIvmhQ4LEqHnLDTBzkHCO9KaTT0cHLk3FFJ/8cKz8BkroAs6kuGLJJWjBJP
	1wi+Xc5SnIhqZZEMfPQaNPKweTRWeYhY80Qcy8b1lgMzuDGFCVoP0mYl4ifbQDFwZKGp
	w82g==
X-Gm-Message-State: AOAM531GFADX3EPZlokemkX04svREue+yuGvtbXWa0sp3NOCGiz2WhfO
	bDAokLdMRrCVpWNSgdDUHRxMX8L09QUxYQ==
X-Google-Smtp-Source: ABdhPJy2DlVOg2dItjgk/2jb93GLS/HXi6z26abcZXXSatUKNn1J2N67M/XYDP5sKT8vSSkbTSTXGQ==
X-Received: by 2002:a1c:a510:: with SMTP id o16mr23502994wme.162.1628317981491;
	Fri, 06 Aug 2021 23:33:01 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.109.16])
	by smtp.gmail.com with ESMTPSA id
	i5sm11900595wrs.85.2021.08.06.23.32.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 06 Aug 2021 23:33:00 -0700 (PDT)
To: blinux-list@redhat.com
Subject: Slint on the bare metal!
Message-ID: <946d66cd-defc-83a5-7f85-a44532cb52f3@gmail.com>
Date: Sat, 7 Aug 2021 08:32:57 +0200
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I unexpectedly had the use of a set of working eyes for a little while 
yesterday; secure boot was turned off, and the key to bring up the boot 
menu was found.


As a result of this, Windows got removed from this machine, and as the 
subject states, Slint took it's place.


This machine runs like a dream, however, I did everything correctly and 
the en-us voice used by default by my espeakup just doesn't want to go 
the hell away!


As root, I did the following:

#speak-with speechd-up

::This in effect kills espeakup which is needed for the following

#espeakup default-voice=en-gb

::This, in theory should set the voice used to the brittish one.

#speak-with espeakup

::Does switch you back to espeakup.

#exit


If anyone knows what's going on here, please, please, help! My hearing 
is already not the best in the world, I don't need the bad US voice to 
make things worse.

-- 
Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181

Email: brandt.steenkamp@gmail.com

Twitter: @brandtsteenkamp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

