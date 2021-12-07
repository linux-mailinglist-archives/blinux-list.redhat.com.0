Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A632046C157
	for <lists+blinux-list@lfdr.de>; Tue,  7 Dec 2021 18:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638896832;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CPfb6ir7CgkVtE8gLgBpgL+Eqk8SXPcPQSWdd0SG8l4=;
	b=IY4dh8NRUUCOBwCyqMPgjt00yNxGlfqlwaI4Guoy/Fiw+/AWmodLA+kPNZ2b5b0uyO2iVY
	A6O4ufj8vPzdXJHB7y4iSo4PVqdqduX1wv6T8vY2QIXX+AFMnXf/0yAML9kZtF1j2bWMGn
	JqBfKLCDzPNkrnttf4endMRMFY/0etk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-176-FFlN8HzEPbaEtQqXdmK1Pg-1; Tue, 07 Dec 2021 12:07:09 -0500
X-MC-Unique: FFlN8HzEPbaEtQqXdmK1Pg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9BE331023F5B;
	Tue,  7 Dec 2021 17:07:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADCBD45D72;
	Tue,  7 Dec 2021 17:06:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22FFA4A7C8;
	Tue,  7 Dec 2021 17:06:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B7H6c3o032350 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 7 Dec 2021 12:06:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 99F82492CA6; Tue,  7 Dec 2021 17:06:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 95067492CA5
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 17:06:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A19439D30AF
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 17:06:38 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-264-YtOmhL9aO_GGyofpC7n48Q-1; Tue, 07 Dec 2021 12:06:36 -0500
X-MC-Unique: YtOmhL9aO_GGyofpC7n48Q-1
Received: by mail-wm1-f52.google.com with SMTP id p18so11317256wmq.5
	for <blinux-list@redhat.com>; Tue, 07 Dec 2021 09:06:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=6mbaYg1hP2BexdlS9gj8yVnhHi8dSjsQLyKTtUgOamM=;
	b=etcvqsmhIqQg40Vy+ymg2B7rPoWdS5VmVlg95XyhdJ1YIa6u85zP/0YeO+le+RMYrQ
	ct3saNJD2Jkdqgbo25l8TFnM29zf7oP1aGZzPTGVLHjK3k9PkjJ0mjZF0dXlwUzc8PB5
	UKAg2zl2Vd/hCC85wETFUvif6jZU7lCSbEb0969Wafuma34515DBaFauBJTnkre1eO4k
	t6oI5w7u9Tsh3g4K+kKXN+9MqOdPKlxNVJNGQ3XNX8vmg5MA/j39JmgbvHKErtF9Z7jl
	CgEJfaZjkupY39mTY8RPQdkkQpEuhK7pbP3xCZcFREX6hitK9+RMQUcfwidzR9St5lcQ
	VXbQ==
X-Gm-Message-State: AOAM532F/lVA58M+NxTlu+PS60OJLCpKxgJxzHY5Y3pSM+hcWnRi0KBC
	22KzsSZqhYvYyV83g0QpE8lInCyoEBwUM1oS
X-Google-Smtp-Source: ABdhPJyROlkbKwfRBxmzM0mkzUn9VnIHT8sTAWYzwZ4FhcvaTzt6fk8le62SOBJk1j7rLn/TmoRGxQ==
X-Received: by 2002:a7b:c7c6:: with SMTP id z6mr8509343wmk.173.1638896794545; 
	Tue, 07 Dec 2021 09:06:34 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id h13sm244751wrx.82.2021.12.07.09.06.33
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 07 Dec 2021 09:06:34 -0800 (PST)
Message-ID: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
Date: Tue, 7 Dec 2021 17:06:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Other lightweight WM?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So I'm wondering...

What other lightweight Wm are out there that are accessible?

Don't get me wrong. Ratpoison is kind of amazing. BUt I'm wondering if 
any other WM like i3 or Awesome or BSPWn are accessible too with Orca or?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

