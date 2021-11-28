Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCCA460594
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 10:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638093367;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O13vpRXwBU4YSdSetvLJpmYah/fry3I3gJhNvpNEv8c=;
	b=IsMiFZNAmiLop6LllBQvTAekjSZRiD4Tz2YdSjO11FaezUqmvEGButQ94KDidLCrUyF1LW
	fO3A91T7JhIYwuaed99D9MZuzyFbhCBclTD/IMEhgT2tZUu9lh9k6Uc0QwFQs7Wqkvu6Zg
	Mwx0uMAgebs9Ei3hX3m14SnshIOUaa8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-539-Q_PV3dB5MGS3Der3Jz2-zw-1; Sun, 28 Nov 2021 04:56:03 -0500
X-MC-Unique: Q_PV3dB5MGS3Der3Jz2-zw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95059801B0E;
	Sun, 28 Nov 2021 09:55:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44AEB5D6BA;
	Sun, 28 Nov 2021 09:55:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1C89E4BB7C;
	Sun, 28 Nov 2021 09:55:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AS9tqX7011079 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 04:55:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 11EBE404727A; Sun, 28 Nov 2021 09:55:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DB1E4047272
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 09:55:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E765B185A79C
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 09:55:51 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-17-aii5EYsWPTWtaCx1ivMaRg-1; Sun, 28 Nov 2021 04:55:50 -0500
X-MC-Unique: aii5EYsWPTWtaCx1ivMaRg-1
Received: by mail-ed1-f41.google.com with SMTP id w1so58935232edc.6
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:55:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=ORb9c3C4mb3MDa/HxGLjgeAQqM5eoOgbEjy0Z6IUQ5E=;
	b=HS1GYk71YQnCu9lPhIbGskiDlPI+0JGJIcaI9yXtOlJZ7uB8rrb1jQ6GFKO2tQvxoB
	vNELKHd62sh2h4J4Nyo2ReJZdWzpkPC10BgrpZIOvuHkEx6xETJ8GEbFWe535YLcAc/d
	soRIch6gorgFDom+VSTPMKV6+ZtXeab03bvApybD8p01GDSbrCjCJW/PPSv8KehEbI/E
	4V13z/O1M4/5407/lS1q3r2muMrD++nuv1zINu4zcHaWvZBmsXZprVoETguJsLpJpMfH
	6kTMxkLeOdok/Z1D7w7JzItEd6Iv4g62ku2e+vo/A6qdnWdXn+8w4SzqldZB9qfZPIPp
	fgEw==
X-Gm-Message-State: AOAM532gwmH+FXPPZNvrpQ6h156jt6ztsFwkN8R4oN2CZE7vCAG0aj9y
	P807oHgAdTlPdgQhEZJxFmsA+KtSHGPs9g==
X-Google-Smtp-Source: ABdhPJzLktN0w+Fu24ru6ihZQ42C9xsnQn2jM/lq6oH71L4IRW2qL2IgAcmmKtXSGK3gzKfXhQhk5Q==
X-Received: by 2002:a17:906:dc8d:: with SMTP id
	cs13mr51244252ejc.109.1638093348774; 
	Sun, 28 Nov 2021 01:55:48 -0800 (PST)
Received: from [192.168.8.130] ([197.184.178.30])
	by smtp.gmail.com with ESMTPSA id
	l26sm6985524eda.20.2021.11.28.01.55.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 01:55:48 -0800 (PST)
Message-ID: <3068e201-6f85-6a93-cac3-2ab66b00d2c7@gmail.com>
Date: Sun, 28 Nov 2021 11:55:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Teamtalk on either Fedora or Slint?
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I am just curious, is there a teamtalk client for Linux, and if so, how 
accessible is the thing? I know if you are in Windows, you have to 
install an accessible version of the client, and on the mac you can 
forget it.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

