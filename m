Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E42F558C53C
	for <lists+blinux-list@lfdr.de>; Mon,  8 Aug 2022 11:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659949487;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fUEJ/wmq0ldvnizfOlll12HPhNwbpwQX236OAYe+C6Q=;
	b=AqRgH6l16vnkjVximvnQIYCELcaL6UQjQBogdT9HJ8ulaUBAhdGJRqfp4cTuA2rJL5q8Be
	J6p0gwFGX21QilgKHL/1Yo5lkGyIS4Iz8z4nsFcYRx4BS8SC+mvYxrfrAlHd5Uh+5RZCIw
	zQm6JmA9dXsPXgq9Gb/F+MF06sO7/T4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-BgtcrDYcMgWdMF7bATiT4w-1; Mon, 08 Aug 2022 05:04:44 -0400
X-MC-Unique: BgtcrDYcMgWdMF7bATiT4w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BD153833286;
	Mon,  8 Aug 2022 09:04:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4A79E40CF8F2;
	Mon,  8 Aug 2022 09:04:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E0E551946A5B;
	Mon,  8 Aug 2022 09:04:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 7 Aug 2022 23:05:25 -1000
To: blinux-list@redhat.com
Subject: Re: Console based email and Gmail, any luck?emai
References: <mailman.40282.1659945837.111210.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.40282.1659945837.111210.blinux-list@redhat.com>
Message-ID: <mailman.40404.1659949477.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> I'm trying to get Mutt or Neomutt to still work with Gmail post nuking of
> passwords, but...I can

I believe IMAP is the best choice for getting from gmail to mutt.
I describe this here.

I read that you go to your google account, enable
IMAP, generate an app-specific password, and paste the
password into your muttrc:[1]

    Select your Profile icon > Manage Your Google Account > Security > App Passwords, choose an app and a device, then select Generate.
    You can create and revoke app-specific passwords as you change the apps and devices you use.

Here's the gmail IMAP server info.[2]

    Gmail IMAP server address: imap.gmail.com
    Gmail IMAP username: Your full Gmail address (for example, example@gmail.com)
    Gmail IMAP password: Your Gmail password (use an application-specific Gmail password if you enabled 2-step authentication for Gmail)
    Gmail IMAP port: 993
    Gmail IMAP TLS/SSL required: yes

Check the mutt docs[3] for where to enter the above parameters.

You'll also have to specify the SMTP server for your
outgoing mail.

1. https://www.lifewire.com/get-a-password-to-access-gmail-by-pop-imap-2-1171882
2. https://www.lifewire.com/what-are-the-gmail-imap-settings-1170852
3. http://mutt.sourceforge.net/imap/



-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

