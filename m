Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 356E44EC8C8
	for <lists+blinux-list@lfdr.de>; Wed, 30 Mar 2022 17:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648655503;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ESmxQaWRTi7DNR+Xc2kYo8YA0grVvTTMCXnzawREr3w=;
	b=BQL7fyhik3L9JOw6ZipiUiBlYw3RN97r6gIo2AqmXdL3R676ItIU9X6umIHdF0lUDv9nKK
	RfW8K2ZAY3oL7dZaY0uMiF3nYWI6hnGmS+w2JHl47yRj8ZgPG1W/ho+jmOa0V4jSSXBe3w
	8hO0EcdjFsmVrz5qtHsPqiFCzjR8+jY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-xR5Io3YfO5qjaNhxwY9Dgw-1; Wed, 30 Mar 2022 11:51:39 -0400
X-MC-Unique: xR5Io3YfO5qjaNhxwY9Dgw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D4309185A794;
	Wed, 30 Mar 2022 15:51:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A2EC457E405;
	Wed, 30 Mar 2022 15:51:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1BE8B1947BBF;
	Wed, 30 Mar 2022 15:51:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Looking for a multiple editor
In-Reply-To: <mailman.5401.1648653094.111207.blinux-list@redhat.com>
Date: Wed, 30 Mar 2022 08:50:59 -0700
References: <mailman.5591.1648651427.111206.blinux-list@redhat.com>
 <mailman.5401.1648653094.111207.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.5456.1648655466.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For safety's sake, I _strongly_ recommend that you:

- create a working directory and two sub-directories
- copy all of your text files to one sub-directory
- put the output files into the other sub-directory
- do a test run or two before the production run
- save the input files until you're sure all is OK

- Rich Morin

P.S.  sed is actually rather programmable, though it's rather like an assembly language.
If you need to do fancier checks and such, you might want to consider using awk.


> On Mar 30, 2022, at 08:11, somoene (?) wrote:
> 
> This sounds like a job for sed.
> #!/bin/ksh
> 
> for i in `ls files.*`
> do
> cat $i | sed -e "s/Mike/Joe/g" > /tmp/file$$
> mv /tmp/file$$ $i
> done

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

