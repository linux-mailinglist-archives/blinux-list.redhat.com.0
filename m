Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0172C758745
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jul 2023 23:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689716033;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nqQhuckbC+GShTtlmGfIWnuFhZ9H/S7iRxJJdT8jxIk=;
	b=cTLYQHRVvEnRqFQK1BNYZDFvZL2/aEmSwKF/uBtRhNfuvp2QDx0TeRAH2Lp5MHRqmezajp
	gqQjhqcuyehQHMwflpulhRUb3MT2Oygps6JyCf7NEJ5fM0a4AsIrKEkgJcQXOXo1KO/Do0
	w3JZK1pFHARAL8NBlxZMibuImEd3BCg=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-353-jBKGYeuGNxOv9amIdh4Ceg-1; Tue, 18 Jul 2023 17:33:50 -0400
X-MC-Unique: jBKGYeuGNxOv9amIdh4Ceg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BFB33815EE2;
	Tue, 18 Jul 2023 21:33:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 565324087C62;
	Tue, 18 Jul 2023 21:33:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A8ED419465A3;
	Tue, 18 Jul 2023 21:33:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Jul 2023 18:05:10 -0300
MIME-Version: 1.0
To: blinux-list@redhat.com
Subject: Console E-mail client for my need
Message-ID: <mailman.489.1689716021.687810.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi, I'm setting up an environment on my new Gentoo installation. I'm 
thinking of setting up an e-mail client at the console rather than a 
desktop client like Thunderbird, because console programs tend to be 
more performant and stable. On the other hand, I prefer text reading on 
desktop programs, as there are more convenient commands, e.g. the famous 
continuous reading command found in Orca. Thus, I thought of choosing a 
console client that allows me to open a text editor like leafpad to read 
plain text e-mail messages, and open a browser like Firefox to read html 
messages.

Upon searching, there appears to be only a few console clients still 
maintained, namely Mutt, neoMutt and sup. Sup is curses based, but 
NeoMutt seems the most active, though it probably requires a lot of time 
and patience to configure properly, as it doesn't have any interactive 
settings wizard; one needs to carefully read and change files manually.

Can someone say if it's worth trying? If so, what screen reader works 
better with it: fenrir, orca or speakup? Am I missing any other good client?

Thanks,
Cleverson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

