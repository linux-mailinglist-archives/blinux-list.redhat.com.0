Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5971E741295
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jun 2023 15:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687959329;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PNCwUisdRsMmXbUWJ8Ogmyd8OEubCH7YkVEADzAkZH0=;
	b=CDrWdjWgwQF1pBPSi6F3HvCNZs2oB9t9liM80d4VA+D+r3OweqSMJji+i0tk8r47mBd0W0
	+pYq2mrKHZMvQoy/eaeTPjZECFzqCI1em8NDmeZPhYePUSshcsT06kZrYiok98dFepLgeu
	7Jkj5Y5ZLYwRFqXAFYC8EuxcCkKxe+8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-247-Zy0GMGrnMHqic_trLQXR4A-1; Wed, 28 Jun 2023 09:34:55 -0400
X-MC-Unique: Zy0GMGrnMHqic_trLQXR4A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C9995830DB5;
	Wed, 28 Jun 2023 13:33:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BCBF92166B26;
	Wed, 28 Jun 2023 13:33:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 13A4A19465B6;
	Wed, 28 Jun 2023 13:33:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 28 Jun 2023 09:12:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I run a .bat file from basica
References: <mailman.543.1687903612.3098365.blinux-list@redhat.com>
 <mailman.893.1687952260.3098370.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.893.1687952260.3098370.blinux-list@redhat.com>
Message-ID: <mailman.862.1687959222.3098365.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


.bat files run under the DOS operating system, not Linux.
You should be able to run it under dosemu, but I've never even tried to get it up and running. So can't help you there.
On the other hand,  it is plain old text so you can easily view it with cat or less or your favorite text editor.
Depending on what it does, you might be able to write an equivalent shell script that performs the same function under Linux, or not if it is too DOS specific.


-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Career Advice, at https://www.scifishorts.co/authors/rudy-vener

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

