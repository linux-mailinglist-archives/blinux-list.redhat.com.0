Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF4B681A2C
	for <lists+blinux-list@lfdr.de>; Mon, 30 Jan 2023 20:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675106296;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vq5pYZEH9psV/iGV2KRbE8O1YMKQX8D/p/7cGIABKL8=;
	b=Tp0KZZXrMJgnfWMMtG/+oeIe0t8rdFGA8P2cJzzEbSpVIcITW5XevUIz0toFKdJPF+hHfV
	80gPNElUXOQkgjPgPUbgNcG1iQk1R8qqSd5ZFa4hLmbmfWSSKFfpPJP8yU90QhAjIqQh0h
	nXGDrbfAt/V8/89oHrVgjJhfTzVhAII=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-147-EVGDlzwMMuq3vK4soIyWLA-1; Mon, 30 Jan 2023 14:18:15 -0500
X-MC-Unique: EVGDlzwMMuq3vK4soIyWLA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D96641C0040E;
	Mon, 30 Jan 2023 19:18:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0D487175AD;
	Mon, 30 Jan 2023 19:18:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 945A11946597;
	Mon, 30 Jan 2023 19:18:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: Twitter alternatives for the blind community?
In-Reply-To: <mailman.2400.1675097672.8169.blinux-list@redhat.com>
Date: Mon, 30 Jan 2023 11:17:56 -0800
References: <mailman.2126.1674833824.8175.blinux-list@redhat.com>
 <mailman.2028.1674835913.8171.blinux-list@redhat.com>
 <mailman.2120.1674865746.8168.blinux-list@redhat.com>
 <mailman.2005.1674869055.8173.blinux-list@redhat.com>
 <mailman.2264.1675091170.8172.blinux-list@redhat.com>
 <mailman.2276.1675095093.8172.blinux-list@redhat.com>
 <mailman.2526.1675096943.8170.blinux-list@redhat.com>
 <mailman.2400.1675097672.8169.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2283.1675106286.8176.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

TL; DR: mostly trying to clarify and perhaps resurrect the original topic...

Although I (accidentally!) caused this thread to take off in the direction of "blind community" and now "blind culture", I've mostly kept out of the ensuing discussion.  However, I'd like to jump back in, if only to clarify and perhaps resurrect the original topic...  Let's begin with some things that Kyle said:

> Yet one more reason I am not a member of most blind communities. That "expensive technology" never should have been so expensive. Gouging at its worst. ...


> ... There is a "blind community" and possibly a "blind culture" as well, but it's a fabrication of governments and marketing firms, not a real community that has grown organically.

I certainly agree that many blind-related products are hideously expensive, making them unaffordable by most individuals.  So, they are often purchased (if at all) by organizations: employers, government agencies, non-profits, etc.  The reasons for the high prices are varied, including small markets, IP protections, and excessive profits.  Kickbacks (etc) may also be part of the process.  This isn't limited to blind-related products, of course.  For example, many medical products have similar issues.

There are a couple of promising ways to get around this situation, if one is trying to produce economical products for the blind.  One approach involves Open Source development: this tends to dance around the IP protections, given that there's nobody around worth taking to court.  Another tactic is based on producing items that are of interest to both sighted and visually handicapped people.  This expands the potential market and can thus amortize development costs over larger product runs.

I'd also agree that governments and marketing firms have had a role in promoting the notions of "blind community" and perhaps "blind culture".  Various non-profits have also played a big part in this.  In many cases, their motivations are well intentioned; in others, not so much...


However, this isn't the whole story.  To pick just one example, this mailing list (like several others that I know about) wasn't fabricated by governments or marketing firms.  Rather, it's a "real community that has grown organically".  So, this brings me back to my original question:

> I wonder what Twitter alternatives (could) exist for blind users.  Obviously, there are mailing lists (such as this one :-), but these mostly appear to be quite specialized, eg:
> 
> babamm@groups.io
> blinux-list@redhat.com
> raspberry-vi@freelists.org
> seeingwithsound@freelists.org
> 
> However, I'm wondering if there might be any Fediverse sites or forums that might serve a more general audience.  Comments, clues, suggestions?  

The Good News about this specialization is that it tends to keep the discussions focused.  Although "Linux for blind general discussion" can (and does!) wander off into various topics, the participants are mostly blind Linux users.  So, for example, the list isn't going to be appealing (or even particularly relevant) to most iOS, macOS, or Windows users.  

The Bad News, however, is that a given topic might cross OS (or other) boundaries.  The current thread is a good example: there's nothing particularly Linux-specific about my original post, let alone the ensuing discussion.  So, I wonder whether there should be a place for wide-ranging discussions of blind-related topics.  This could be a Fediverse site, an online forum, or even a wiki of some sort.

Obviously, there are problems that emerge when you start trying to create a large online community.  Clay Shirky has spoken and written quite a bit about this; in particular, I'd recommend reading "A Group is Its Own Worst Enemy"
(https://gwern.net/docs/technology/2005-shirky-agroupisitsownworstenemy.pdf).
 
That said, there are numerous examples of successful large-scale online communities.  For example, I regularly browse Hacker News, look things up in Wikipedia, skim occasional Facebook groups, etc.  So, I (still) wonder if it might be useful to have a broader channel for discussion of blind-related issues.  And if so, what form should it take?  Comments, clues, suggestions?

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

