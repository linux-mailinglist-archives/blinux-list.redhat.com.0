Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CFB723AD8B5
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 10:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624092803;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fkXSYEUEQ04SYDxUwF0yCoecX9K0xwQKOpe0wppPKjw=;
	b=IStOON7XJKTqNoX0sUm6yOK7rshGUjARe2KHOQ0RcpL88bve6Zm7Xws96wq59uCA6z9u0W
	UyIesHXL1kZKDZzaO3qqUHj/j8YdPwH4Ch5C6C9jtpoIXNOT/pfaDf+5AZEWobgYag4K4l
	AKx8hVFA/qAowOxxkGkm0aX5k2QXf0s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-83-f9hEgj3EM9Wk-4iRchiekg-1; Sat, 19 Jun 2021 04:53:20 -0400
X-MC-Unique: f9hEgj3EM9Wk-4iRchiekg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0215E362FD;
	Sat, 19 Jun 2021 08:53:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D731160864;
	Sat, 19 Jun 2021 08:53:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 608CC4EA29;
	Sat, 19 Jun 2021 08:53:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15J8prUZ008947 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 04:51:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DAABE1009138; Sat, 19 Jun 2021 08:51:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D633910D14F3
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 08:51:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BB54185A79C
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 08:51:50 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-397-zw7hKpr3PVeuwIJ26xG_AQ-1; Sat, 19 Jun 2021 04:51:48 -0400
X-MC-Unique: zw7hKpr3PVeuwIJ26xG_AQ-1
Received: by mail-lf1-f42.google.com with SMTP id d16so13394581lfn.3
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 01:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Zg3Ku8dpzK6ERfKY0U2VCfYMu4aWvNfswsyi00QcgGE=;
	b=JYOPfNKhBJguNk/Pav1TJohhupkLJYHIKh7i9+qnBGd/mHrT9u351e5PlykEO4JsTs
	ev3hNp751cR56GM3HQR4HF4s40sekLiBCy2l8nulp5iEUK/xOPy1y+O2r5CTteey72eZ
	fgzNgxwRo7byt73K72YWTzQPN7gPptjussLYfJYvNtt1wE6Vy+gsGjsZ6WHfwvAukih4
	eFRFJnwTPG12jH6Y5NCfjwyM7c069YLMxPKbUkpT8NVzo2WlRtD/5CWGrfvumtuHKHej
	b3UBMrG9NylBbAE9auy1b0zWNO84P6Ya40q17s9Ydf+xXdmIlt5x31dwsOyBtrVgPbS4
	c8Kg==
X-Gm-Message-State: AOAM5324tQ0WhdhtuDkK5LlZO+PHetfYktQA2RqR6BvHV82NEL3/nhUg
	uRM/0So8LBXiLS956E/nUSRN9+UKG/yJ6rmS0rc=
X-Google-Smtp-Source: ABdhPJwMds8DmgkRM+W31aLivqzi1UBqBzGHZxRJoko1hlEPrv0yy+Vnka6yE0WF+KDmvzNSuMgTJQ==
X-Received: by 2002:a05:6512:398f:: with SMTP id
	j15mr6336096lfu.7.1624092706206; 
	Sat, 19 Jun 2021 01:51:46 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	u13sm1163301lfq.201.2021.06.19.01.51.45
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 19 Jun 2021 01:51:45 -0700 (PDT)
To: speakup@linux-speakup.org, blinux-list@redhat.com
Subject: espeakup 0.90 is released
Message-ID: <cd3947be-63cb-f8df-d22a-714dcee24c33@gmail.com>
Date: Sat, 19 Jun 2021 11:51:44 +0300
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

hello everyone.
I am pleased to inform you that espeakup [1] has been updated
to version 0.90. [2] a tag is signed with my pgp key. [3]

[1]: https://github.com/linux-speakup/espeakup
[2]: https://github.com/linux-speakup/espeakup/releases/tag/v0.90
[3]: 
https://keys.openpgp.org/pks/lookup?op=get&search=0x6C7F7F22E0152A6FD5728592DAD6F3056C897266

-- 
Sincerely, Alexander.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

