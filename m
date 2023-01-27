Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 043E967EE03
	for <lists+blinux-list@lfdr.de>; Fri, 27 Jan 2023 20:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674847131;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lMk9kk5HQOYCBmA1k3/bfKh0W9RmWYK6WOvPrBeC8eI=;
	b=czD8atzXaVyNUlCyz+kS6+k6DWhOaN380/xTBtMFHxb+GvrFqkLbA74vVdH+GYxJilwv/8
	hk7TweO1DPzEOSN8efQuPDd/c8o2sTellNPBcvMCzrfp83eKcrb/53zZkKW9Ja7jGElAk0
	MqBaTVGdvUh8h5KsEOS3dq0wsit/LgQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-385-ZOFF_UFiMzCz8zoC94dSpg-1; Fri, 27 Jan 2023 14:18:48 -0500
X-MC-Unique: ZOFF_UFiMzCz8zoC94dSpg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1367A85C06C;
	Fri, 27 Jan 2023 19:18:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E1F9A492B02;
	Fri, 27 Jan 2023 19:18:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2756219465A2;
	Fri, 27 Jan 2023 19:18:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 27 Jan 2023 13:58:43 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Twitter alternatives for the blind community?
References: <mailman.2126.1674833824.8175.blinux-list@redhat.com>
 <mailman.2028.1674835913.8171.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.2028.1674835913.8171.blinux-list@redhat.com>
Message-ID: <mailman.2103.1674847121.8168.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The pity of it is that twitter used to be blind accessible. Once upon a time I could use it
with command line scripts  and access it with the lynx  (the cat) browser.
But all that changed as the web evolved more and more towards hiding links behind javascript machinations.

The problem with finding any kind of alternative to twitter is one of public embracement. Who will
use it except the blind?

A better solution might be a blind friendly lynx accessible interface to the general twitter system.
Call it blitter.  People can access twitter by first connecting to blitter.com and from
there, send tweets, read hashtags or do whatever else needs doing in the twitter universe. All through
their lynx, w3m, or any alternate browser they want.
They could even set up command line scripts using lynx -dump or wget.

Doing something like this would cost time and money.
But if someone   with enough interest in doing so is sufficiently motivated, perhaps they could
get a grant to fund it.

Just a thought.

Rudy

On Fri, Jan 27, 2023 at 08:11:43AM -0800, Linux for blind general discussion wrote:
> was: [TechTalk] Twitter Bans Third-Party Apps (fwd)
> 
> I'm neither blind nor much of a Twitter user, so YMMV.  That said...
> 
> I wonder what Twitter alternatives (could) exist for blind users.  Obviously, there are mailing lists (such as this one :-), but these mostly appear to be quite specialized, eg:
> 
> babamm@groups.io
> blinux-list@redhat.com
> raspberry-vi@freelists.org
> seeingwithsound@freelists.org
> 
> However, I'm wondering if there might be any Fediverse sites or forums that might serve a more general audience.  Comments, clues, suggestions?  
> 
> - Rich Morin
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: From the Journal of Jeremiah P. Sutton https://www.scifishorts.co/authors/rudy-vener

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

