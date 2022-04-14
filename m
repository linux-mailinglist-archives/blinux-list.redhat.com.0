Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 961E3501E20
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 00:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649974517;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W53jAIC6a3BLW9Y5tfaiQV7tcDDBvUZ1gRZHiZbYcIE=;
	b=h0fNpp85ams6F0M0y/zjlNN7eRU57xXaqLWZoUkTsHEkazUfvTWbs2pkW4HHyp/eIlDp+A
	CbUp8upLLnbdzYENMVc9J4GqtTQq3IQ39VcBSwtQrE8Pm3Pdls67xFsKQN7ZNAA5Yb5QVo
	rF7fr9wPCccv5TbX318IqYQHuAe4hcs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-226-Df-rYA3rMk6QpKHwKHTYgg-1; Thu, 14 Apr 2022 18:15:16 -0400
X-MC-Unique: Df-rYA3rMk6QpKHwKHTYgg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5EBDA800B21;
	Thu, 14 Apr 2022 22:15:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9F37F14583D2;
	Thu, 14 Apr 2022 22:15:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F2EB8194034E;
	Thu, 14 Apr 2022 22:15:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 18:14:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: mailing list privacy, etc.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.8531.1649969333.111209.blinux-list@redhat.com>
 <mailman.8699.1649970342.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.8699.1649970342.111206.blinux-list@redhat.com>
Message-ID: <mailman.8718.1649974508.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

If we get spam, which I mean that happens regardless, from
> online account leaks of your email address, to going on dubious sites and
> submitting your email because you got a text saying you won $500, spam is
> gonna happen. If your mail provider, or mail server, or email client, can't
> deal with spam, usually by you marking an email from a sender as spam and
> the program automatically marking further messages from that sender as spam
> too, then that's a problem with your setup, not the list.


You were not here when this happened, so you are not understanding the 
problem that occurred. Every time anyone would post a message to this 
list, that person would get inundated with hundreds of pornographic spam 
messages, not all from the same sender, and even the major email 
providers like Gmail and Yahoo couldn't keep up. Hundreds would come in 
to one individual's mailbox, and 30 or more would survive all the spam 
filtering thrown at them. I wouldn't say that the problem was with the 
list itself, or even with its administration, but I do know that it 
wasn't bad spam filters that were to blame. Yes, spam will happen no 
matter what. It's just part of email. But this was truly out of control 
and something had to be done quickly to fix it. I'm not necessarily 
arguing that this measure still needs to be taken in this way even now, 
but it was the best solution at the time.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

