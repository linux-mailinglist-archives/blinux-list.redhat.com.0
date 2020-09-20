Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4DD9927140A
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 13:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600602649;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LD4zGffzTsYwCLW2kUXj978pJsYLjLkzCh1TtxozYoI=;
	b=HYY5sTQ4SRKVsur8fws7Qi1nvwvPz6TRkjN7qnR+/5bycfOY9mybWo4wehyR4doXKu6DrQ
	0c0kVSiAQcsDI5DWNFi9ktfKwzIsRO2W3qRbh2O2F/kJxI756kI3e7upvXLHlvjsgQBS70
	bCachLMOVKOfX21X1iXLYk4qOyiD0t0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-n_7yKogKPCqjfs3ogF_QdA-1; Sun, 20 Sep 2020 07:50:46 -0400
X-MC-Unique: n_7yKogKPCqjfs3ogF_QdA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 65CB3802B6E;
	Sun, 20 Sep 2020 11:50:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A720A1002C01;
	Sun, 20 Sep 2020 11:50:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 038DB44A47;
	Sun, 20 Sep 2020 11:50:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KBlpte018745 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 07:47:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 42ED3201C0DC; Sun, 20 Sep 2020 11:47:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CAB22028DC0
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 11:47:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0E41185A78B
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 11:47:48 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-223-zZEKt2icOB-iKQEJRkAIkA-1; Sun, 20 Sep 2020 07:47:46 -0400
X-MC-Unique: zZEKt2icOB-iKQEJRkAIkA-1
Received: by mail-wm1-f42.google.com with SMTP id l9so9798222wme.3
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 04:47:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=VjKnL0W5PkIcd3eK0CrPMOLOYBWvVipVcpPrX436zEI=;
	b=IZz8NC5s+VwUBvJmasSIRgDw8TymsL/z5oMOk7qFIS2UndfXqoiRlxGHd2y2DM/ALC
	yYvq2mvLuU5jb1/VmlQvLkVBuJgAKhzthdiTbcjLCpfKaJj3HMJ1fs30DemTE5InLQIc
	WC5F+zcZjdGS48P0zlMnIzpLw9DnzBjM92fh82NgNadDFJOLBlYTnKUwUNOicW0lNU92
	mQ+zDy4/CzelwucZ0B6urQCSi/PbZEC7ivjiGDU5m1458+yIMqag3gl/oq0DgrOEqzo4
	rLexBDb100dGq0IehZsCzMyHkihL22JByVMP1DncsKYgJEYKq/nn0u+2KFnQc+p3FF7S
	3Jag==
X-Gm-Message-State: AOAM533e/JijqxQR5idJCg7ELs20BzOH7ewV7XaCamCTlhZlYcntPFTQ
	G69BqCnVI6Yqj8bkmiiAMEGpElYCHFoyVw==
X-Google-Smtp-Source: ABdhPJyt3RswBlCbKvrVMTqzr2wm5JaZppgZ82JKrY3lKz5YY2xk+GagZjCjmz5e7VUi4XSbFund8g==
X-Received: by 2002:a7b:c751:: with SMTP id w17mr24371250wmk.97.1600602465127; 
	Sun, 20 Sep 2020 04:47:45 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id
	s11sm14489213wrt.43.2020.09.20.04.47.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 20 Sep 2020 04:47:44 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: ebook-speaker/UTF-8 long files
Message-ID: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
Date: Sun, 20 Sep 2020 12:47:43 +0100
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
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

So I just ran into this and was wondering if anyone else has. I've 
converted ebooks to .txt with ebook-converr and wanted to run them by 
ebook-speaker. It tells me to wait since it's a UTF-8 file with long 
phrases and give sme numbers, then does....precisely nothing, boots me 
back to the terminal with a bell sound...

Any ideas?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

