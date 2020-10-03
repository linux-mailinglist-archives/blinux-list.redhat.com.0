Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 93FEE2824DE
	for <lists+blinux-list@lfdr.de>; Sat,  3 Oct 2020 16:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601736964;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l2lUj2bKAYHjNKN6SbWLhRmL8qdZZIdrupnGwvLac0c=;
	b=fckNRBkbJRwkyJklgcm9rAJyVHtcrPWe2scPFTeKItJ//bZUJAMTH2Qy+w8ZXUufonG+Qp
	fMJqgmiv5QRwCrTlKgVwgOfoftskdrPjvsdlUjg9IhNMaa29KPqlPzFKZB4XK2y5eLBfRi
	OLSuzMPXGswgWEqJoMK5BAt1qyCzxc4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-56GTfAXHMuaEB8rCDo5g7A-1; Sat, 03 Oct 2020 10:56:02 -0400
X-MC-Unique: 56GTfAXHMuaEB8rCDo5g7A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0405B803F4A;
	Sat,  3 Oct 2020 14:55:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F6491002C07;
	Sat,  3 Oct 2020 14:55:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CF01144A46;
	Sat,  3 Oct 2020 14:55:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 093EqkWC029617 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Oct 2020 10:52:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BB62BF4ECA; Sat,  3 Oct 2020 14:52:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4C09F4ED9
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 14:52:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48B42858298
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 14:52:44 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-564-5V41WYVPMj6Qg3zAjJatzw-1; Sat, 03 Oct 2020 10:52:42 -0400
X-MC-Unique: 5V41WYVPMj6Qg3zAjJatzw-1
Received: by mail-wr1-f45.google.com with SMTP id w5so4900145wrp.8
	for <blinux-list@redhat.com>; Sat, 03 Oct 2020 07:52:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=oKNTvoRNirEbpM1iuBmk2kJ/IhS3Tbz+EoF8GZ4iegI=;
	b=B1I339BIQk/mJi3UaMzD0/y/U2QXnL22K3tZfsTZSIDdPr9ai/4DTGPZcKqnfMQu1j
	KgcLMlwy51gEkLMZy7pDudIQwqtI1AeREUT9tdWYMrF5FkSUI4xiNhPICnMhWT4gh9c5
	0Dhc1E7cKshG3Um43BMd0ktnway0i4XjrePOnKgRsFs2qdIRltlMiJuvlgBSKWsIegGV
	QwT3CSe1GcQIbxKVgRZeyRVr8drnYZMgTVTHuhqsMglgo0L2Ao2Z0qfJSbL18dBZx1ew
	hOqs5ipUlmgGO7iBRdvGuMmQvoOmJ9Cxe2FqqCRURt3C2BbNWOSX7Ogb0LVsDihiyEpr
	p3lQ==
X-Gm-Message-State: AOAM532nysv8pvi5AHoDuSDngxwzkMwwH13oZumCWQI1xFLlXHPD6gHr
	aIQ7RgW0syTMToGgKVLfqe0bNNI568EikA==
X-Google-Smtp-Source: ABdhPJz1NxPpjf5rl64Bk+WezWIm/cJK2ec7CAXkOspY/wp5rw1l29OsIV9/nkFY+ZMQbLOs9XjhiQ==
X-Received: by 2002:adf:b74b:: with SMTP id n11mr2431277wre.274.1601736760301; 
	Sat, 03 Oct 2020 07:52:40 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id x2sm5663562wrl.13.2020.10.03.07.52.39
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 03 Oct 2020 07:52:39 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Linux screenreaders/MUD clients
Message-ID: <a9510efc-cd13-1c43-d09a-453238dfe566@gmail.com>
Date: Sat, 3 Oct 2020 15:52:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

Hopefully this doesnt set off a flood of messages :)

Aside from TinyFugue and Tintin++, what other clients for MU* are out 
there that support Orca or console screenreaders?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

