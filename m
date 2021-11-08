Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C6084449BBA
	for <lists+blinux-list@lfdr.de>; Mon,  8 Nov 2021 19:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636396590;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZcCTjDKIYDTaR6AjEllZVw/9z7xvXWpI0PrBSp67e8s=;
	b=MqoHvt2SiMqhArkWX73WgGf3mtY9DcIoG9ZUJtOvHBnIjti8GmConnY3qVmMzxBStzlO4s
	qMb1OWw4NBTnFH2ZOiSqreJSPsL365nOv6b4e4cxhkpyDJFTRJsL282wTFriVw2thEM5aY
	YRj86GnnoIh34TXC4m19FSuAaVSTlAk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-525-R7m1laHvP86zNFPaj6VZFQ-1; Mon, 08 Nov 2021 13:36:27 -0500
X-MC-Unique: R7m1laHvP86zNFPaj6VZFQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45F641023F53;
	Mon,  8 Nov 2021 18:36:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7909410495BF;
	Mon,  8 Nov 2021 18:36:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6F9734E9E2;
	Mon,  8 Nov 2021 18:36:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A8Ia1Ak016335 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Nov 2021 13:36:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id ECFA82166B2F; Mon,  8 Nov 2021 18:36:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6A842166B26
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 18:35:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 04573185A7B4
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 18:35:58 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-559-mLr1mjzcM72FlKU6QpF8vw-1; Mon, 08 Nov 2021 13:35:56 -0500
X-MC-Unique: mLr1mjzcM72FlKU6QpF8vw-1
Received: by mail-qk1-f172.google.com with SMTP id bj27so14740750qkb.11
	for <blinux-list@redhat.com>; Mon, 08 Nov 2021 10:35:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=EtsOjwtIkuJNnxPJVV7KIuq/gl7PtK0zl19xSd+3Rzw=;
	b=EM+laTVXDFFZzBZe0dzC7zlCp2M8GcpYPQWjEEAlddekhoGPzptbP3Ypc2GX2XUjRU
	c4FQKDx59QmWQIpBaD2LBtsDOFV4+v9i9D45X563GPccmdxHOCaH3ZDKhAj3NFfhH3Om
	BSKLTNSFPCOuvXYttwfZsc56HqsJ/rCivNVrX3LzM9cfoF92Id00qj4q2AoFmt/1LTNC
	WW4lZAvpj7tv+Rhqnia2e+hAmMokRWz9djS1lz+6v3qNXpTjqTItv/7bUQh98SB9eDvZ
	FITy2iepyQ3bypsQT1FfCWnqTblBwwF2rl8xeRqgLa6lMPV8wirFrzcNylb+EkXJ3pvE
	JuzA==
X-Gm-Message-State: AOAM530hBwpNVRymTG0Vdl9+WQJ7uNsiEPOMYVrHMiSo8A63t/JMilrl
	6HXSWMnj6zQ073IxdmcQT0rJw70WwjJwOg==
X-Google-Smtp-Source: ABdhPJwdu9YVB3B1fOJVrGMPR7UU7k12atM4780qBDn7hLmlOjFtASPRsPg5TQQSeOVTHQmB74aUag==
X-Received: by 2002:a37:b7c1:: with SMTP id h184mr981004qkf.65.1636396555301; 
	Mon, 08 Nov 2021 10:35:55 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::f])
	by smtp.gmail.com with ESMTPSA id
	de26sm8187664qkb.81.2021.11.08.10.35.54 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 08 Nov 2021 10:35:54 -0800 (PST)
To: blinux-list@redhat.com
Subject: Does any of you use a Whatsapp Linux client?
Message-ID: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
Date: Mon, 8 Nov 2021 13:35:53 -0500
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

Hello folks,

I am wondering if any of you use an accessible Linux client for 
Whatsapp. What is the best way of using Whatsapp on Linux if no 
accessible client is available?

Any ideas?

Cheers,

Ibrahim


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

