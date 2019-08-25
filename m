Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7649C685
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 01:21:22 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A916E3091786;
	Sun, 25 Aug 2019 23:21:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81455600C4;
	Sun, 25 Aug 2019 23:21:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B9182551C;
	Sun, 25 Aug 2019 23:21:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PNLI0K012837 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 19:21:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 291911001B12; Sun, 25 Aug 2019 23:21:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx08.extmail.prod.ext.phx2.redhat.com
	[10.5.110.32])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2413D1001B08
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 23:21:15 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BC422C057E9A
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 23:21:14 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id t24so10768098oij.13
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 16:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=89/awQ/VSMwTu1oUYDgp+EWFlBBKhufR+V9QB2iXhyQ=;
	b=NI2COs3/8rXd0M2mDwYGxoAsAhU5m5oNAF1S6jsHq0LjmRxl7nywwSQ0cb6CYg3vzF
	Dx2MJg/C0PwNQtgqm/zs3wb8lsKR/tJw0vyzOuY/wzP7L3WZE+avFeanZZ26Wd4VdsQ8
	nVQHSvjgHsqmEaXd2pz6zMdYHQLefU5dUobos67qNkz7Eb4xPJy9PM/Mh8UOyox9vxsW
	mHClWrZJFWPVyDODhBoq/T/KqvPULj4gHbZavVANiG2XWAn5beUTtq6bZ42jArroklyh
	LPAQngxFDVdjzNVMSXiAgyw1vFANxrBD70rlxV9sxDLDUkHEiqexbKYxHsYUPszCnLPi
	no4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=89/awQ/VSMwTu1oUYDgp+EWFlBBKhufR+V9QB2iXhyQ=;
	b=tXQ1QI9zp3WB1hs40S1kyx132Cj3pAOQwJoRoB9qhkGgjqD/aL9Q8ak1gniWkWTwu5
	RW48j4jyGfja2nmFaSRNCnNYNuj9rc0dWEc406cb5hU1OziXlGDa3+xtW5lQWOzvwarD
	up5Tvjt3dnQyk5sa+P9/6C2aMNkuodsxRq5PIyTKmrXq00ZAHMUt9Ia9Y/qvrhze7819
	u/xEz1XiwUT3HQu1W/twKNf1tEUHXxRtkaxx3nY243/t+EoDo8nHhBdiXEVt7Hxo+zqv
	HqPOjyiT7hDH0Hsxvr7+fn9yYmyRKrx8z7OPf3TWnfYVPjalh1VP5zKbUj/IH9oRjWmF
	YniQ==
X-Gm-Message-State: APjAAAWhs8ck70HQtCx7AdqEtqmUvn54HTALWyp6ke2PgPXZKHZS5WLW
	r2zsfbIyQiJdgpfUvw7LDd8Er6U8
X-Google-Smtp-Source: APXvYqx9fTcKPl5lWTPGLZXkpoB1WfJwSTNUBpZGkyoKIYymjSGvh2KeqzPgONgQMCeIarzjuRYxZg==
X-Received: by 2002:aca:1714:: with SMTP id j20mr9670648oii.135.1566775273914; 
	Sun, 25 Aug 2019 16:21:13 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id c5sm3428324otl.29.2019.08.25.16.21.13
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 16:21:13 -0700 (PDT)
Subject: Re: amazon?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@192.168.1.131>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
	<20190825.213109.635.20@192.168.1.131>
	<64b28f07-c53c-1943-b5de-e27bc6222f24@gmail.com>
	<CAO2sX31Df3_6iHD8bF41e3E9A0D-0vJs1Xs4nTouVk4RV5uJUQ@mail.gmail.com>
Message-ID: <b179b7b3-ec76-1c40-4ea6-794b7c1f4062@gmail.com>
Date: Sun, 25 Aug 2019 18:21:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX31Df3_6iHD8bF41e3E9A0D-0vJs1Xs4nTouVk4RV5uJUQ@mail.gmail.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.32]);
	Sun, 25 Aug 2019 23:21:14 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]);
	Sun, 25 Aug 2019 23:21:14 +0000 (UTC) for IP:'209.85.167.176'
	DOMAIN:'mail-oi1-f176.google.com'
	HELO:'mail-oi1-f176.google.com' FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.176 mail-oi1-f176.google.com 209.85.167.176
	mail-oi1-f176.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.32
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Sun, 25 Aug 2019 23:21:21 +0000 (UTC)

Microsoft has been recommitted to accessibility since their new CEO took 
over. Narrator is a viable screen reader now, and you can install 
Windows completely eyes free now. I've also heard their magnification 
software has improved a lot. They have apps on the App Store designed 
especially with the blind in mind, such as Seeing AI. They developed a 
way to teach programming concepts to young blind children called Code 
Builder. They have a corporate Chief Accessibility Officer. They have a 
Disability Answer Desk. There CEO has made accessibility part of their 
mission statement https://www.youtube.com/watch?v=z3SP6X1_wuc


What I had in mind when I made the post below though (which was pruned 
from this thread) was their 2019 Super Bowl commercial where they had 
disabled children playing on the XBox. They didn't do any of this to 
pick up a few sales to disabled people or even because of a threat of a 
law suit. They did it because it was the right thing to do, and they're 
also cashing in on the positive PR.


I'm not saying Microsoft is perfect and that they don't have a ways to 
go making some of their software more accessible, but they're a good 
example of a company who could shrug off caring about the disabled, but 
instead they've changed course and now seem to have a real commitment 
towards accessibility.


-- 
Christopher (CJ)
Chaltain at Gmail


On 8/25/19 5:52 PM, Linux for blind general discussion wrote:
> Since when is Microsoft committed to accessibility? I thought the
> whole reason NVDA exists is because Window's built-in screen reader is
> garbage and JAWS is prohibitively expensive. Also, I thought Microsoft
> was pretty much the poster child for shrugging off lawsuits and
> continuing to screw over their customers as much as possible.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Christopher (CJ)
Chaltain at Gmail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
