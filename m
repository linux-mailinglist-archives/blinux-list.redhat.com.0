Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B97C2617E4F
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 14:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667483221;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/9JEoeLJFE4w1w25fX6KHsa4y8rHnk8Yj9YgCjDEtSE=;
	b=bo2N0Vv+lU2kiW2WL6VFMhEM8P91dZ52sEDZwKCE9JX2U/tQc/hx6Bo8Gb8m6D1BLS0QOR
	uMDVM4cI9wFNhszGtUn50XhvkEV7zEDqIy55E0k3/QOF/D50w0xPCmHatkL1PNP3Gk4x9C
	9ccLRXeERTqvgXpjCspSt1RgzUeqrYs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-RrxD_5KDNc2kKCi9CRMkIg-1; Thu, 03 Nov 2022 09:46:58 -0400
X-MC-Unique: RrxD_5KDNc2kKCi9CRMkIg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA3F8811E84;
	Thu,  3 Nov 2022 13:46:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9A7102024CC0;
	Thu,  3 Nov 2022 13:46:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8D4C71946A67;
	Thu,  3 Nov 2022 13:46:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 3 Nov 2022 13:46:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Javascript for text mode (fwd)
To: blinux-list@redhat.com
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
 <mailman.4503.1667475991.3004.blinux-list@redhat.com>
 <mailman.4391.1667476678.3008.blinux-list@redhat.com>
 <mailman.4275.1667481137.3010.blinux-list@redhat.com>
In-Reply-To: <mailman.4275.1667481137.3010.blinux-list@redhat.com>
Message-ID: <mailman.4516.1667483215.3006.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

For w3m, I did find w3m-js mentioned but that's both abandoned and i'm 
not able to find a link to it with a few seconds of searching.


Elinks can apparently be compiled with js support, but I'm not sure to 
what level it owrks.


Chrys was mentioning a while back about the text web browser, though I 
don't recall if it was this list or in off list discussions, but I got 
the feeling money is needed for it, and I'm not wanting to put up thens 
of thousands to make that a reality. Few hundred, maybe, but not 
thousands, or tens of thousands though.


I'm curious to what extent elinks can be compiled with js though



On 11/3/22 13:12, Linux for blind general discussion wrote:
> My understanding is that dialog's stated purpose is for creating
> simple dialog boxes that can be used for user control in bash and
> other shell scripts.
>
> Even if some of the major console browsers rely on dialog for making
> part of their interface, I fail to comprehend how that assists with
> the task of patching in support for JavaScript and other rich web
> standards, much less gets around the issue of the maintainers of most
> console web browsers seemingly having no interest in modernizing.
>
> And I suspect that's the second biggest problem here(the biggest being
> web designers who use JavaScript everywhere and for everything instead
> of only when its truly necessary): Its not that implementing
> JavaScript is hard, its that the people who decide whether it gets
> implemented don't want to implement it.
>
> Now, if anyone knows of a good, small, and reasonably fast JS parser
> that's good about ignoring the useless eyecandy bits and converting
> the rest to html or plain text as appropriate, that might actually be
> useful for adding JavaScript support in an unofficial build of Lynx
> the Cat or Links the Chain without having to write such a parser from
> scratch.
>
> Sadly, with how edbrowse is built around such a completely alien
> interface paradigm(ed is a line editor, and edbrowse inherited that
> line-centric way of doing things) to other console browsers(most of
> which have a more screen-oriented interface), even if it's code is
> modular enough to easily isolate the JavaScript bits, they might be
> written in a way to require significant alteration to work with screen
> output instead of line output.
>
> As for Browsh. It kind of defeats the point of using a console browser
> as its just a console frontend to Firefox, so you've still got that
> behemoth and all of its GUI dependencies installed and even if the GUI
> bits aren't running, you still have the core of Firefox running...
> Plus, you still miss out on Orca's navigational hotkeys, and the last
> time I tried it, it was constantly refreshing what was printed to the
> screen in a way that made using a console screen reader with it
> basically impossible.
>
> As for eLinks, is there anywhere to get a .deb of it with the
> JavaScript turned on? Or is it one of those off by default, so its off
> in the vast majority of pre-built packages and might as well not exist
> for users who don't routinely compile from source?
>
> And while on the subject of JavaScript support or lack thereof in
> console browsers, anyone know where w3m stands? Not that I have any
> attachment to it, but its the console browser that comes up most often
> after the homophonic triplets.
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

