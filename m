Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FA4604C19
	for <lists+blinux-list@lfdr.de>; Wed, 19 Oct 2022 17:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666194535;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=m1U0KskNBdh7VYcJiVdLSNXUIaBJ/vTGohRdcxszU1w=;
	b=UHGTceBjIej0MJpDAnTiKJmvMZRsSScfXBF8PnPq0xUcjfktvRdjtL3POY24oVlI/xBN3A
	rHQTsXOSsFjUDkz22DS5TxyBbKiwWpOZKHPxGQRVsLLMqrcDEfvN0Q8m/h0nHyKpdBMGZY
	4d6e0xbLdGFI55Y16da2qKbCb2gp0YU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-544-1W1MRe0PPKqioqu1iodpNQ-1; Wed, 19 Oct 2022 11:48:53 -0400
X-MC-Unique: 1W1MRe0PPKqioqu1iodpNQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1CA4383329D;
	Wed, 19 Oct 2022 15:48:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 10E71492B05;
	Wed, 19 Oct 2022 15:48:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B556219465A3;
	Wed, 19 Oct 2022 15:48:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Wed, 19 Oct 2022 08:47:06 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: How Would I Fix These?
MIME-Version: 1.0
Message-ID: <mailman.1472.1666194526.3011.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: Well, this morning, as usual I ran an update-and-upgrade. Certainly 
alot of packages coming-and-going. This machine has been up 91 days, still in 
Debian SID kernel 5.18, although the updates are now in 6.0. Anyway an hour 
afterward, I began seeing `alot of these mail errors. Getting clobered with 
them. I receive mail through an imap through fastmail.
From: Mail Delivery System <Mailer-Daemon@chime.lan>
Subject: Message frozen
Message 1olB28-00CLcA-08 has been frozen (delivery error message).
The sender is <>.
The following address(es) have yet to be delivered:

bounce-65022_HTML-646632331-83081-514007347-393633@bounce.g.s11.pdmailservice.com: 
Mailing to remote domains not supported
Back again live, I even sent a group of these to spam, but I guess since these 
are not real messages, it may not do any good. exim was 1 of the packages 
updated. I am probably receiving 6 of these every 5minutes. I must go in 
alpine-and-run an aggregate for frozen. Anyway, has this ever happen to any of 
you-and-how did you fix it? Thanks so much in advance.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

