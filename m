Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A48244FDD5
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 05:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636949644;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/QiSDSQndNXAC0k+XuVeWT+rQzylBquN9j3IVU4rZRU=;
	b=VEEJGTxDWQBL5ZVu4TcPh29GB5vfeKxTFc9CHODx+Di0ItBNoOnNQ0sJeFefuxBpMiPDXq
	3Af/AXB33iZTxH/fnw+30fe3OKJ2vQkM9oct7mNGVzt3nQk/48++T3Nrkm0N1HmkEO7jV1
	PuvC+hmMO6cCw+XKIAEQGA1xpZnzf9A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-v0xrW5t3MQSBsl_py8Pk1A-1; Sun, 14 Nov 2021 23:14:00 -0500
X-MC-Unique: v0xrW5t3MQSBsl_py8Pk1A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28F94802C96;
	Mon, 15 Nov 2021 04:13:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7B521002391;
	Mon, 15 Nov 2021 04:13:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3DDAD18199EE;
	Mon, 15 Nov 2021 04:13:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF4Dntq027249 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 23:13:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BDE862024CAE; Mon, 15 Nov 2021 04:13:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B937D2026D46
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 04:13:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0AD811066559
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 04:13:46 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-488-OfeH4ZmVNqyUgJ_FQLmFeQ-1; Sun, 14 Nov 2021 23:13:44 -0500
X-MC-Unique: OfeH4ZmVNqyUgJ_FQLmFeQ-1
Received: by mail-qk1-f178.google.com with SMTP id g28so10979279qkk.9
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 20:13:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=uZZS1wI50hMvTa34SRsQckbz3eXPiuhqaA2ttC1CcoM=;
	b=bei8tbj488ougAQgciZKT7r30Puo4mocVOeqHPF8Jb3VRJHCdFsMD/TA1S7OvuG6/z
	i4x/a2QEkUekwYbxA3PJeBlEoBr6+9Qkwp9+2mTvwP7iMct0ifCELZUUbU532kGAxfF+
	EPvmwiuY4fovWcdbLyvQjibxf3FnSwJL5sCdhWmH5NUgc2l/mS8suLt3sSfHAmTFLb/Q
	pm9jwkihrIdHc5in+PMOBTUqX8A7XudDW3P2eTzEybwUtuODw6XE1KT7NPkSP3zMvHOK
	AcDaSn09vs07w7AU5GDzC+E2A4aY02UO11iffA01mufeX59+z2BbiDr7yVXEkMiFKT2s
	D8gg==
X-Gm-Message-State: AOAM531fsqKFQX/uMVq6dN2RF90lUyPUB+6YxKn3RiS5kK97tSkPs7k9
	JYC5LK29ANFlq4wG1Gq3OH86u0OLHsg=
X-Google-Smtp-Source: ABdhPJyV/DIh0yTZmAImRT615Ph8qJEbAgPbXzsjo+RG/yDVCCh3darN2Uy9FGRsXiqr+dFtanorpw==
X-Received: by 2002:a37:bf05:: with SMTP id p5mr28066444qkf.441.1636949623755; 
	Sun, 14 Nov 2021 20:13:43 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	z16sm6109843qki.25.2021.11.14.20.13.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 20:13:43 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
Message-ID: <2e84caa3-a3ce-d38b-b2e7-10d1d1b495bb@gmail.com>
Date: Sun, 14 Nov 2021 23:13:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm not sure about other distros, but on Fedora, my Seamonkey does have 
two menu invocations. One is the mail application and the other is the 
web browser. Both are located in my internet menu on my MATE desktop. 
Seamonkey mail will import mailboxes directly from an existing 
Thunderbird installation, and I am finding its accessibility with Orca 
to be quite good. Since I believe Seamonkey to be based on somewhat 
older versions of Thunderbird and Firefox, you may not see the calendar 
options, as you once needed an extension for that. Chat is also a 
separate invocation of seamonkey, so it shouldn't be in your main mail 
window either. The only thing that may possibly be considered a drawback 
is that opening a link in an email message in seamonkey will open the 
link in the seamonkey browser instead of the browser you set as the 
default. So if you want to open links in another browser, you will need 
to copy the link address to your clipboard. Other than that, I can 
recommend Seamonkey as a pretty good email application. It's not 
actually a bad browser either from my experience.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

