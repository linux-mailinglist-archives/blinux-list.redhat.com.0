Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5EB51669A
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 19:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651425700;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3wF+92BWaIrm1Gjd+0CRsebvYJa5N3ROcrlTyanUPqs=;
	b=YYYw1Y/jgnWLDNN7maCAVEtMnqs5hA6GioCXZTk7Gk2c8zRvbTkvtWD87or9z4HDqmxw5y
	6cEeFRqLL6xT8W9ujO7YnfgqJbxUfRMmEIIgO0tuF/BjuIKYMbsKWcNUlCFum/IUOtyjVq
	kenUnffhugaC46Xxr0yebkXlLiRbj1Y=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-335-04q2nELOOjSdYx_OXuZfPQ-1; Sun, 01 May 2022 13:21:37 -0400
X-MC-Unique: 04q2nELOOjSdYx_OXuZfPQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E6E5A1C05158;
	Sun,  1 May 2022 17:21:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 62AFEC28103;
	Sun,  1 May 2022 17:21:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B11391947063;
	Sun,  1 May 2022 17:21:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 01 May 2022 17:12:11 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Ubuntu Mate sudden freezes
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.12166.1651425693.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello list,

today, I'm experiencing a very strange problem.


Basically, after certain kind of action, the whole keyboard seems to get
stuck. The type of action can wary, it happened few times while reading
mails in Thunderbird, but it happened twice also simply after I left my
laptop untouched few minutes (not enough for the desktop to get
automatically locked).


When this happens, i'm unable to do anything, not even Alt+F2 works to
restart orca or anything else.


One workaround I found is to close the lid and re-open it. Then, on the
login screen, things again magically start to work, and I can login.

Then, it typically freezes again after some time. CAn wary from 2 to 30
seconds, or may even freeze right away.


Sometimes, things seem to freeze even on the lock screen, though,
closing and reopening the lid seems to reliably get them back to life
(at least for a while).


I'd like to ask, before I start thorough investigation, is anyone else
experiencing similar issues?


Ubuntu Mate 20.04 64-bit freshly updated, orca 43.alpha.


Best regards


Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

