Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9FF8D3D14C8
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 19:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626887036;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PiEwvcP4D5UL3rlxU9AwPCYUeBrGyROg4qXtXXXa5sk=;
	b=YSVsAtCCoZmgOPMJnzg1tqmRIhZsK35f0waj0IEgCQk4sN/UrF/Auchi5rzNsiDNMHoyvD
	drAEfR9XzUGgiDyNFh4QxTI3MinRjHpy8arEya0St9V8z0pJVidA9enTvJ7LMASfHrulG0
	2W8lDh9SUCJNfVQxLMHwCxmaeJKjdWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-NXofr5JUMNCBTnH98wF_6Q-1; Wed, 21 Jul 2021 13:03:54 -0400
X-MC-Unique: NXofr5JUMNCBTnH98wF_6Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 094531018F94;
	Wed, 21 Jul 2021 17:03:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D8E11ABD3;
	Wed, 21 Jul 2021 17:03:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BDFE1181A1F3;
	Wed, 21 Jul 2021 17:03:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LH1oD6029494 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 13:01:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 78DE61D0AF; Wed, 21 Jul 2021 17:01:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73C31FA746
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 17:01:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5070996B057
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 17:01:47 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-16-UFkZFCQwOWukA0NF7aDO6g-1; Wed, 21 Jul 2021 13:01:44 -0400
X-MC-Unique: UFkZFCQwOWukA0NF7aDO6g-1
Received: by mail-wm1-f54.google.com with SMTP id
	u8-20020a7bcb080000b02901e44e9caa2aso1371148wmj.4
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 10:01:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=B5rnRfwfadUX2DaJXm2515v1+VQFTgzxdvANUbdKGnE=;
	b=OfAFd6kraLWgxoceGM3il9ApvOkM34OvEWyDdlML4bk/gBdkAJkWqsqx0rwLJe/XWw
	YrvAnH9tml+T04FQ1+cvGB9OYcDFDQ6NCBQJKaKuoXD1CxOelCXpqoNe6cnL1CjsczGZ
	lWgMFHj/toni2e0cScWdWY5vQOB41ZpaFddy/l6+qCyBoFbno4/ct4vw7Fxf57uhcB1q
	w+k40ZJ2oR+LH485i10XUT+uuPLrV1jv3qE5Pj/JMjCSVKowUrP2+Ht+qXefIfy8Svzc
	N57OF1qROEEdDufaGlHNONYr1s4y1QxHVhUWpDSJkAD+Y9yg22/smPgmtHPivwYrKD8T
	LZBA==
X-Gm-Message-State: AOAM530haMnXx/wG1KMtLegF8B6g+iH21lLH99syAGtdhzEwM5ogmDpz
	Z4hIZZuEGHEQjIMU05h4yNh2tCil6ISPbA==
X-Google-Smtp-Source: ABdhPJwgUBugkLsSL8hTSw/KyenAv24GxR4g4j+TUsuDRv9Env+AjS+UDEGvMub5TNKkLqf7I3/Yrw==
X-Received: by 2002:a1c:5458:: with SMTP id p24mr30152976wmi.131.1626886902694;
	Wed, 21 Jul 2021 10:01:42 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id z2sm7824298wma.45.2021.07.21.10.01.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 10:01:42 -0700 (PDT)
Subject: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
Date: Wed, 21 Jul 2021 18:01:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

So, grabbed Solus 4.3 and ran into a few weird oddities with Mate. 
Nothing insanely deal breaking, bar one or two things...


1. For some reaso, the Mate DE doesn't have the orca shortcut set. This 
isn't really an issue since alt+f2 and Orca takes care of it.


However...


2. Chromium doesn't seem to respect flags set. And it breaks the 
installed system to the point where it's locked up when quitting a 
Chromium app



3. After upgrading, Firefox lost the browse/focus mde messages


So is it just me using Solus 4.3 here and anyone got any ideas, and no 
'use another distro' is not a valid answer. I've already suffered one 
borked system due to Ubuntu being inane today and the terminal suddenly 
not being a thing mid version upgrade, so...

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

