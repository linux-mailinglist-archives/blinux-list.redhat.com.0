Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D861617FC7
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 15:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667486526;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GnNnQAJI6vIX6sdxwVUV4a216FSxO3FnQEFJOdOBFkI=;
	b=AFHXBCpRetDybC3FaQAniE4BZxkbrnaU7RIEl1DRjETxYl5ngZHJZIwJxkWAGJ2KQadKWI
	rGdlUhRWutgVVQt/yHh2jJcJ9Se2aaU8Yb0slUgakXIw0swKpvn25q/ZZjEbUzeXYvr21v
	Zztq9UVfacUUCiaMPjXu9nchqB3Vb9w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-98-z4fgtqnDNOmJtQB02oi9Gw-1; Thu, 03 Nov 2022 10:42:03 -0400
X-MC-Unique: z4fgtqnDNOmJtQB02oi9Gw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 12CA3857F90;
	Thu,  3 Nov 2022 14:42:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7D53CC15BAB;
	Thu,  3 Nov 2022 14:42:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4289B1946A66;
	Thu,  3 Nov 2022 14:42:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Re: Javascript for text mode (fwd)
In-Reply-To: Your message of Thu, 3 Nov 2022 10:19:52 -0400
 <mailman.4513.1667485195.3003.blinux-list@redhat.com>
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
 <mailman.4503.1667475991.3004.blinux-list@redhat.com>
 <mailman.4358.1667481898.3007.blinux-list@redhat.com>
 <mailman.4328.1667483150.3005.blinux-list@redhat.com>
 <mailman.4400.1667483225.3008.blinux-list@redhat.com>
 <mailman.4510.1667484422.3003.blinux-list@redhat.com>
 <mailman.4513.1667485195.3003.blinux-list@redhat.com>
Date: Thu, 03 Nov 2022 15:41:47 +0100
Message-ID: <mailman.4523.1667486520.3006.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jude said:
Don't be surprised if python ends up running web assembly in time.

You can run any program written in any language as a Web Assembly.
I think you want python to get rid the JS from the browser completely.
I really doubt it because JS is so natural language in browsers like shell
in Linux. Especially that the JS has a superset called TypeScript invent
in Linux. Especially that the JavaScript has a superset invented by Microsoft
called TypeScript and this is widely used in modern web applications.
This superset is a language quite similar to C# and compiles to pure JS.
It increases code readability very much but I think that it is better to know
the core thought the JavaScript itself.
But... If it happen I will congratulate the Pythong programmers because
popular languages produce very much junk code. This is a good purpose to
decrease JavaScript popularity.

Greetings.
Artur

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

