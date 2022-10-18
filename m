Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E336603149
	for <lists+blinux-list@lfdr.de>; Tue, 18 Oct 2022 19:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666112577;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ejeFhnYDjIw4XfGpCoy7Nss/kZRm0Rr0rIj4ef4z+QI=;
	b=Ps5e6+VOHRJDzGTEEzrD2brCF4twBPjxfVZQ6KQ0zHqGmT7UB75bBOqT4VjTFlqcnyhTkk
	LLce4BuIPuiFHuihpw2sIan+YNYqP+5AR+RTMYGVhNUB8+QGDVlO2WdgK7WT1QABv6LuWC
	RHqQJrkcZ7EYvJokZkDC0dZTXb4tCPo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-FjYhxwY8MfaFfBpROhwPPQ-1; Tue, 18 Oct 2022 13:02:56 -0400
X-MC-Unique: FjYhxwY8MfaFfBpROhwPPQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17C5C85A59D;
	Tue, 18 Oct 2022 17:02:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5ACBAC15BA5;
	Tue, 18 Oct 2022 17:02:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CDEFA19465A2;
	Tue, 18 Oct 2022 17:02:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Oct 2022 17:02:45 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Turning off screen in Linux
References: <mailman.882.1666078921.3006.blinux-list@redhat.com>
 <mailman.880.1666101707.3003.blinux-list@redhat.com>
 <mailman.952.1666105929.3007.blinux-list@redhat.com>
 <CAO2sX31cRKcio+HHhbb40Hs+JNSQW9VUmQnZz2xFjSM4zjA+Ew@mail.gmail.com>
 <mailman.907.1666109020.3003.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.907.1666109020.3003.blinux-list@redhat.com>
Message-ID: <mailman.914.1666112569.3003.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  On one of my older phones, I can enable a "dark mode"
option which turns off the screen completely while Talkback is on.
On my daily-driver phone, it lacks this option.  So it seems to be
all over the place.

-Tim

On 2022-10-18 16:03, Linux for blind general discussion wrote:
> And since Tim mentioned phones, I recently put a cheap smartphone on a
> line no one in my household is using to try and learn Talkback, and
> the plan is to keep the screen as dim as possible(ideally, I'd have it
> completely dark and acting solely as a touchpad, though I have my
> doubts there's a 0 brightness/touch-only setting for the screen.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

