Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9EDED3CA18A
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 17:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626363333;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=85Tg5991Cx+0g4jvrVyisMm635jbplGR9GnO8Azp6TY=;
	b=Mwp99eo+cMwC8lPN6bvsSGCZffN6Fg5wSuNU1WtkD2tb0YROpWoP6ji/Yoeb0RjK1Y0Avb
	pzZIAbzLuuxKIwxmSXHujYovSz4AAVSXSWwta8HgqXBX3ZgXYtrZIg40TU/23eJDAW8ay9
	SDVGLH+M7U4OLOHLNE75AQ0RCmxEUmA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-5HP4tersMkGA0a8XEbQ6yg-1; Thu, 15 Jul 2021 11:35:31 -0400
X-MC-Unique: 5HP4tersMkGA0a8XEbQ6yg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB3ED8030D2;
	Thu, 15 Jul 2021 15:35:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 410C25D9C6;
	Thu, 15 Jul 2021 15:35:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF3324EA2F;
	Thu, 15 Jul 2021 15:35:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16FFZFjg012513 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 11:35:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1CD7610336F6; Thu, 15 Jul 2021 15:35:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15FFC1033C72
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 15:35:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 410E5801E8D
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 15:35:09 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-589-TRyDl63uOzmoDLiGtP-6Dg-1; Thu, 15 Jul 2021 11:35:06 -0400
X-MC-Unique: TRyDl63uOzmoDLiGtP-6Dg-1
Received: by mail-wr1-f46.google.com with SMTP id d2so8429192wrn.0
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 08:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=ASIzzOjsYDL/+By0HZmWJQiLY8MZ4w9vsui/paUSdrM=;
	b=V+69DgjYrNTG+s+2vy+4ibYu/ehEKyIRdjfAh6yHjmwUTkel3Bx1e1sJVDrIqtBFEC
	oj6mL9mmulKarYQsAvZt/1/+ulJ00oEdhzUcHIBUGKIzdCHgeOAd34eoR5U8Q4sa8VgZ
	trwuTTlUW96rRjVfJUPvYvfKrt5Bv6C30F+wMnsYiz4JESaQfTbVByj0+UPFz/I84+3G
	i2TcNTofPpYFIIPYzxDYPNtYg6+/EvsDBbOWt/zJZONA/3SOaRCMpsNp+/pIEpvAYj9j
	hVVz3vBQvtgqMnu3b+cWCz/r8rSIJmmbnsYDPHqR/c1monlWUUaRu7gEp59UJ1fn5x0Y
	2fYA==
X-Gm-Message-State: AOAM532xvyG0IwJ6v+leKoCHjhl9EFs47mia/rYbZjjK685Ts0Iv1qob
	Wt68oY/4CLrWlR0XCEYMikkPP3tEQbRoig==
X-Google-Smtp-Source: ABdhPJw93ERQcIqAPYnstqirMV5tj+54l9njXmbMzqMIKWsJGao9rVYM4QkdMtgo2jgZa9777uuwsQ==
X-Received: by 2002:adf:e582:: with SMTP id l2mr6406040wrm.101.1626363305222; 
	Thu, 15 Jul 2021 08:35:05 -0700 (PDT)
Received: from [192.168.1.102] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id
	v15sm5671647wmj.11.2021.07.15.08.35.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 15 Jul 2021 08:35:04 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Transfering Thunderbird folder
Message-ID: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
Date: Thu, 15 Jul 2021 17:35:04 +0200
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I want to transfer my Thunderbird folder from Win to Linux. It was 
possible 3 4 years ago without any issues, but from some new Thunderbird 
version, something must be changet to get transfered folder working as 
expected. Can you help please? When I transfer my folder to 
.Thunderbird, app ignores all existing profiles and creates another and 
asks me to login to my mail accounts.

Thanks,

Pavel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

