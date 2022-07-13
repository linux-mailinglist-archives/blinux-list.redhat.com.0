Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 186CD573ABF
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jul 2022 18:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657728136;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=atDGJBjGUGoQYyMvCpnIZe3s5AktFAvtJh5WUeRGhxg=;
	b=Kocbvq+FbjsY+jZGB7x4gX9lhZIQTc5ns9ArQ4OI+SyZVw28B2qofAAEMw50+zh3H3wnlP
	SzcPusvslaW/fmx1lo2lttLiZ65nwRu2u+kpfbm2tFl4V/79DP41LaXW7nN5M1xFJDkB1f
	fIXH9C8faOApZZ7J2KhjJ2S+rp29Oh4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-5-4YOlovl0N42gMQtS3eJZJA-1; Wed, 13 Jul 2022 12:02:14 -0400
X-MC-Unique: 4YOlovl0N42gMQtS3eJZJA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D22AB38217E5;
	Wed, 13 Jul 2022 16:02:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6D67F400DFD4;
	Wed, 13 Jul 2022 16:02:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0260F1947074;
	Wed, 13 Jul 2022 16:02:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Jul 2022 12:01:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: wich is better mailing list or usenet newsgroup
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.33231.1657706289.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.33231.1657706289.111209.blinux-list@redhat.com>
Message-ID: <mailman.33408.1657728131.111204.blinux-list@redhat.com>
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I can't speak to the whole newsgroup thing myself, as I never figured 
out how exactly it was supposed to work. I do understand email and the 
web however, so these are my go-to resources when looking for 
information of any kind. The email list is probably the best option, as 
I just subscribe to the lists I want, and I see everything posted to the 
list. If I don't want to read a thread, i.e. if it's not a topic of 
interest to me, my email program allows me to delete the whole thread 
from my mailbox at the press of a single key, leaving everyone else's 
copies untouched. Those lists that store archives are especially good, 
since just like a web forum, I have the option of searching through 
previous postings, even those I have deleted, in case something came up 
that I need to find again. Usually a simple Searx will give me the 
answer from the archive, so I don't even have to try to find the archive 
website for each list. As I understand it, newsgroups are not archived 
on the web, and from what I could understand of their functionality, 
seem to be pretty much walled off from the rest of the internet, making 
usenet rather useless to me personally, unless I'm totally wrong about 
how it works.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

