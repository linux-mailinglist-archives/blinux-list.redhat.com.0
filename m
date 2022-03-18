Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC2B4DE0CF
	for <lists+blinux-list@lfdr.de>; Fri, 18 Mar 2022 19:11:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647627093;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PMAHTzzGcRnmPfZBnCCVfykfTnrfOT+j89SdhJPm9aA=;
	b=DMArzWQCYhJf6O+09sUuecAEg50dVojUjc/wxT05B5FcJVSXgSkclVynNp5DjlOrrroaRI
	flxpz+U3wRHHV8CnM4B6ZmVePWP/YffDsIqUbOfGSfOXdghTAnJzDacq0ieZjLyC7nlBHV
	HZL9hroAXibZNfcT3A5VfM7ZU0VhYto=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-636-LLJlLb1HPZaRhw8YUaYU6Q-1; Fri, 18 Mar 2022 14:11:26 -0400
X-MC-Unique: LLJlLb1HPZaRhw8YUaYU6Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7267E80B710;
	Fri, 18 Mar 2022 18:11:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BDCFA2156712;
	Fri, 18 Mar 2022 18:11:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4AF701940379;
	Fri, 18 Mar 2022 18:11:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 18 Mar 2022 14:10:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: OT: alexandria.org
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2881.1647623735.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.2881.1647623735.111207.blinux-list@redhat.com>
Message-ID: <mailman.3091.1647627076.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

This does look rather interesting. I've been using sites that run 
searx-ng for some time now. At the moment, because it's a metasearch 
tool, I seem to get better results, and it has settings for infinite 
scrolling (none of that next page crap) as well as opening links in 
separate tabs by default. It also has headings for each search result, 
which I find easier to navigate, although alexandria.org does allow me 
to just press tab or shift+tab to navigate between results. It doesn't 
yet include settings that will allow new results to appear just by 
scrolling without having to select a page number, a throwback to 1995, 
and it could benefit from allowing me to open a resulting page in a new 
tab automatically, although I guess I could just use the function that 
opens a link in a new browser window for that. This does look a bit like 
presearch without the annoying keyword ads and the whole crypto thing 
they're trying to do, making alexandria.org a lot more clean and easy to 
use. I also find that searx-ng seems to have some issues with titling 
search results correctly as well. I think the best thing about 
alexandria.org is that it's not just another metasearch, which means 
that it doesn't search Google and Microsoft and the like to bring search 
results, it instead has its own crawler. This means that right now it 
will give very few search results, but over time it should evolve to 
become better than anything else currently available. Just give me the 
header navigation between results and the ability to keep scrolling down 
the single page to see more results instead of having to keep track of 
pages where I only see a very small number of search results at one 
time. Yeah I guess Twitter spoiled me when they started allowing me to 
just go down one page instead of having to click to page after page 
after page if I wanted to see more than a few things at once, and then 
Google and DuckDuckGo started doing the same thing, so now I just expect 
it as default or easily configurable behavior. Call me simple, but I 
really like just being able to press h h h h h h h h h 250 times to get 
to that one search result that isn't at the top of a proprietary ranking 
algorithm and without having to find the next page link or keep track of 
which number I was on. But since alexandria.org is as new as it is, I'm 
sure this is something that can be looked at in the future. For now, I 
mostly care about being able to find more things that are related to my 
search query, and that will take time also, since it's a real search 
engine instead of something that just searches search engines and pulls 
down all their irrelevant results ranked according to their mysterious 
algorithms. It needs a bit of work, but this is indeed a great find.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

