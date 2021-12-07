Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 318A346AF60
	for <lists+blinux-list@lfdr.de>; Tue,  7 Dec 2021 01:49:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638838192;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YWrrAAV4H8EvCaBztAqWK7/Lt3VqhgvDSFompbTgc/M=;
	b=DRRPhMK5rdQ0AsgMTyLu9q0Hledg/zsaxMxNnBxsuTDdfQzOn4+v4AqxzwgZLEvRSedDTe
	LxNyrpu/NV6hkk5oF+zHqQcnE84OsF1MUPgeNRjTg/DUuRgSdX+Wcjs1N1SJzealSqSNS2
	dMv/h05/DqC6FhtPgxeAQZYg6PZaDdE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-531-EbJd5l9WPh2vE43mQ0Rc2g-1; Mon, 06 Dec 2021 19:49:48 -0500
X-MC-Unique: EbJd5l9WPh2vE43mQ0Rc2g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4229D1F2DC;
	Tue,  7 Dec 2021 00:49:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E0B74ABA1;
	Tue,  7 Dec 2021 00:49:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 80B391809CB9;
	Tue,  7 Dec 2021 00:49:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B70nKnh016293 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 19:49:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 302CE51E4; Tue,  7 Dec 2021 00:49:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29E4351E2
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 00:49:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE38F8015F8
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 00:49:12 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
	[209.85.214.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-49-B856-uUdPByGPfUW6M-_9Q-1; Mon, 06 Dec 2021 19:49:11 -0500
X-MC-Unique: B856-uUdPByGPfUW6M-_9Q-1
Received: by mail-pl1-f180.google.com with SMTP id n8so8241854plf.4
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 16:49:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=KYlafNJKpARTXUYgrUyxGItbJ5mXHWUY73e3n2HCwEc=;
	b=T48CAesKGRONzz2eoGxYWEC3nVUaKU1CktVtGnHpc/NOgddFXjZ8TrbXNtczuskO3B
	KA0WxwpmZX5mWlW50PLzpqFAINv+uTjfjnw/L8wRAi3ivvIwLLVTzBtO89dpVGE7Jr8N
	GN+lEVNDLsTcRNwzDGnzVoPqF8f16D79QWJOL9yW7IIP/pHCN8FpBhH9RWNP4q0P02cq
	BvY7vkMgaYjf1ZXDxCUbr3uA/I3dhKZAVfpetPSwPJzTDjyyBwe+FSULLiB6vo+zWMjt
	wU/cTV/547xp7daW1XQApaHOufr3gugm1LlSQ1yz9AdHgwtQzSOZERKPXUD4UPQ53OvM
	iAgA==
X-Gm-Message-State: AOAM531yxLEnr/VN0vnOW75oT97fJOS1xGYlj9+M3B2lO4tgdV1Zy8fG
	uczeW31SjJSH8LoNeSkXtcVCjvLYxGJvTQ==
X-Google-Smtp-Source: ABdhPJz2rk8EXuYT14+PVTZl5TdWCUi9mQE5MIlTHHDfnOtEGiQ/qZqDtesjH1DxxghlnK6LRE0T3Q==
X-Received: by 2002:a17:90b:f81:: with SMTP id
	ft1mr2565266pjb.136.1638838149632; 
	Mon, 06 Dec 2021 16:49:09 -0800 (PST)
Received: from [10.211.55.4] (075-113-161-023.res.spectrum.com.
	[75.113.161.23]) by smtp.gmail.com with ESMTPSA id
	i67sm13417904pfg.189.2021.12.06.16.49.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 06 Dec 2021 16:49:09 -0800 (PST)
Message-ID: <4064d1ee-3bdb-32be-938f-cc0242974857@gmail.com>
Date: Mon, 6 Dec 2021 16:49:07 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
To: blinux-list@redhat.com
Subject: I have some questions about braille TTY, running alongside orca.
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

Good afternoon, my subject line and someone says it all, should I run 
braille TTY alongside orca, or should I use the braille facility built 
into orca to drive my braille display? I am running Ubuntu 2110 and a 
virtual machine. Although orca is running, I can't understand that 
robotic voice anymore. That's why I am extremely interested in adding 
support for my braille display. The second question is because my 
braille display is one of the latest, and greatest. Is it even 
supported? I use a human where Brailliant BI 40 X display. I normally 
run it in a new USB mode when I have to use an assistive listening 
device for the computer. This is especially true if the listening device 
must be Bluetooth, because in the host operating system which is Mac OS 
Monterey, it appears that you cannot run Bluetooth audio, and Bluetooth 
braille together. If this happens, speech is extremely choppy to 
unintelligible. USB braille when using Bluetooth audio and Bluetooth 
braille. I suspect that this is something to do with my machine.


Since whenever I use the guest, I use braille in USB mode I'm thinking 
supporting this should be substantially easier than if I were to use 
Bluetooth for instance. Does anyone have any thoughts, and/or 
suggestions on this issue? Please be aware that I am dictating this to 
the computer, so there's something that I have written above, please 
reach out to me and asked me what I might have meant. I look forward to 
clearing up any misunderstandings that might come up as a result of the 
above written text. Thank you all very much for reading this.



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

