Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A424591AC
	for <lists+blinux-list@lfdr.de>; Mon, 22 Nov 2021 16:52:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637596323;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JgMrvcTBGGoX8n5t91CoRMQWqS9tjQKbWEXzvj2KvXQ=;
	b=cuyPv5V3fgBGpNJz5lE3O+z0jBDhwZxzrTiBdsPQawzvQeuAuD2CfjKDtovuS9tcxUwRxU
	LZrMCT8A2ZtdIwzg1LxU9WgF4fZM6Z4R98JepM2t7WDayzN72O5iiezCPRkCP/9UccBmEK
	JsVPnllsd4RJUWVM5+o3Xs6xGbUjcgs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-93-aaiKE7rbNF-YFTXatRsr6Q-1; Mon, 22 Nov 2021 10:52:00 -0500
X-MC-Unique: aaiKE7rbNF-YFTXatRsr6Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D9DA1018F69;
	Mon, 22 Nov 2021 15:51:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A8AE60862;
	Mon, 22 Nov 2021 15:51:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ADD4D4EA37;
	Mon, 22 Nov 2021 15:51:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AMFp1iL022370 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Nov 2021 10:51:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3A57E2166B26; Mon, 22 Nov 2021 15:51:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34B3E2166B25
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 15:50:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 101A68B5AEA
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 15:50:58 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-557-D26-TxMjNSe-JzsiVT6-dg-1; Mon, 22 Nov 2021 10:50:56 -0500
X-MC-Unique: D26-TxMjNSe-JzsiVT6-dg-1
Received: by mail-qk1-f175.google.com with SMTP id 132so18563132qkj.11
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 07:50:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=YDa+Bwl8IGlonp2m5FLKJgNuhZnGWICuG1Zh/LvKdxk=;
	b=mqSv+6xjkk04upStzFBnuKhNq7nVRnmkcQzyhmHWJ15skX550i1+1AXk6nSOii88zb
	nhcvOVh5D1sqiPbI+UhWGryKE6OoJ5k1TkBanadRZw2djio+Y3m7xHe/pmg8peypaZmH
	uguS73aL2SDxFbX6e1cYXmO8C9aykdwdVx3AERAjZlQXkNfAl5x77yP4OZIQ2G3Y4Lle
	jxN5yj94r/g9tVZduR7U4KECX4o2Zq49vckwlCyKe1sGiebq2qfaUDAEVb3h/AFZSFFH
	hyIGFxCNNf5vX3+XTRVV9752wd3VX5yHaMyPl78bTwXKoi9xXA7dwIvYi3Uv7/85LA3N
	Ew7Q==
X-Gm-Message-State: AOAM533gnqNYI3Wu9aCSxQuIkSZIzVTB1ZLldnj3Wzn0rvknGIqcCZl8
	J0Q6lPSKDQgxPQshlWrTAQHhHXhz7wpEMIeG
X-Google-Smtp-Source: ABdhPJxMO78zhW4MhuASMfHv2u8BTqaWV2BQAHitJrtImQqnmsk5gz+qthLD+tGzcQ9xRxtxUAyQOA==
X-Received: by 2002:a05:620a:461e:: with SMTP id
	br30mr49719212qkb.363.1637596255684; 
	Mon, 22 Nov 2021 07:50:55 -0800 (PST)
Received: from ?IPV6:2601:152:4000:330:3957:55d2:f35a:6f99?
	([2601:152:4000:330:3957:55d2:f35a:6f99])
	by smtp.gmail.com with ESMTPSA id
	w14sm4756401qkp.54.2021.11.22.07.50.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 22 Nov 2021 07:50:55 -0800 (PST)
Message-ID: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
Date: Mon, 22 Nov 2021 10:50:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: looking for two gui accessible applications
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello friends,

I am wondering if there are good applications for downloading from 
youtube that works well with linux! I am looking for something similar 
to Ponte's media downloader which works well with windows screen 
readers. Is there such an app?

The second application I am hoping to find is a good weather app. I 
tried to the weather on the terminal and did not like it at all. So, I 
am hoping to find a better alternative that works on the gui.

Cheers,

Ibrahim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

