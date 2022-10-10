Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DE05FA201
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 18:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665419487;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9ykCQu/nXwNCE6fS5oExiz1eqE0Qzz5keLsga3wdWQ8=;
	b=IG7Fh9492tn6z1oRAXjDwjPR1mJB9CuDIignUPw36UBbFc1Cg87ByNvpLHAX+YsDHssgRR
	hUNDehMLZRQlalCxP9NsQeBc0WzHjfUFTjfniQTllGc4gXJrD1HNELAzLnqK3K1ID9Ukxs
	hRH49z0Oet+HCyeAvNzirPO3TRQE6To=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-FF16677TPkyjovXfKKhKiQ-1; Mon, 10 Oct 2022 12:31:25 -0400
X-MC-Unique: FF16677TPkyjovXfKKhKiQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C82329AB452;
	Mon, 10 Oct 2022 16:31:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EAE9A145BEEB;
	Mon, 10 Oct 2022 16:31:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7BD841946A48;
	Mon, 10 Oct 2022 16:31:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 12:30:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: TDSR?
To: blinux-list@redhat.com
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
 <mailman.6597.1665417915.6081.blinux-list@redhat.com>
 <mailman.6601.1665418715.6081.blinux-list@redhat.com>
In-Reply-To: <mailman.6601.1665418715.6081.blinux-list@redhat.com>
Message-ID: <mailman.7185.1665419482.6076.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Tdsr is in fact much like YASR in functionality from what I can tell, 
with the exception that it appears there is no way to change what voice 
it uses without editing your speech-dispatcher configuration. I didn't 
find any mention of an exception dictionary either, which was included 
in YASR as I recall, though it has been a very long time since I used 
that. That said, I see no advantage to using it if you already have 
Speakup running. I also don't see any advantage to running Speakup and 
Fenrir at the same time, and the primary advantage of Fenrir over 
Speakup, aside from spell check and other useful features, is simply 
that a kernel update won't even temporarily break your screen reader as 
I have seen happen, though such breakage does occur rather infrequently. 
That said, running entirely independent of the kernel does offer better 
portability, and also means that the screen reader can be updated 
independently of the kernel, which IMO is always a good thing(tm).

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

