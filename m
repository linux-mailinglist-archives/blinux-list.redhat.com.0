Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 464BD9C69B
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 02:13:16 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8C450307D844;
	Mon, 26 Aug 2019 00:13:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F0E15D9D6;
	Mon, 26 Aug 2019 00:13:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 034612551C;
	Mon, 26 Aug 2019 00:13:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q0D9Y8013694 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 20:13:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AF5B35C548; Mon, 26 Aug 2019 00:13:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx28.extmail.prod.ext.phx2.redhat.com
	[10.5.110.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9DE15C28C
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 00:13:07 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 902788AC6F7
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 00:13:06 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id q8so10569436oij.5
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 17:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=iGBBfuv7KpkCpAsGoGM6psxxHqfrq+GWWGJPq1F07Pw=;
	b=JcNcUr/y8CNTVXxFX6ayTJjn8uiqtqOvJrbAr2HhNqJUATa9viaOvP8oOZbm8euO6U
	xorhBS7XuU1sdILN8uneufj5OMIMcBGkounJojwwLpjdMyV9tdYsjRR6AVI3de6A4ey0
	FItVhXsVHei0+DZF6AAnApkwTnu0XPG8TBOiD1260dB7Y2PXeLXzdeGDO98TMbcEwPm2
	QyWEfh1B+/qb0uig3TU4BqyNonkujmpqVtNmZPq0wclWk0dvHSQdWaIaH9YZWi7S/FgP
	uBaRc8Ern8OEpKS76ZjosR1Sg/RtXIx74FlDit712EB1lTMYhMLFm5Xv6C6jU2OadxtH
	lX7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=iGBBfuv7KpkCpAsGoGM6psxxHqfrq+GWWGJPq1F07Pw=;
	b=iOZUKjRDHoSgwyAZPTKnyEfAGLUP4HPpwIX6VzyRNF8kz+NjLqTnJn+XZ+AjvbOQEj
	TD50S3ww9UGjifQ6Eywmom8hHAGPs2Uno9D55z75pye2bgpUDcOhIrcchzI3rMjs7y2P
	YoFXEJZotwSWNnIKU6S7I/iqD4b5GzB35oISDM0bBRCZhbWJiHy2uJ7Z108AXREdi/rS
	SkY3MhC7BT/SbWhor3Uq5+n6GvH/J3NtHtimmV5gqAqZ1s1uiqQnJ3FhfgtvKFVkVPZB
	cQEx+MJbXHpOX8BgPHi6dOIK6DT5pNFs0OsnZ8DPrBSycy45MyYyWOvUlMWPAbYwS3Ct
	Y5wA==
X-Gm-Message-State: APjAAAWSji0QATBRpeClldMFRav4F5x7DdzXhSRJvrWBhsAQDO0Il/3f
	6hU7dyQ3mK7poJ3BLM8WottXiPxE/tQNC+TF7bN73g==
X-Google-Smtp-Source: APXvYqyyEhvJKxaGZDJLIrIXrz45X7AU2dGDByuAJn5p3zsBYjEH/pnchOMBkCVEFQvLJYuDWDg3Z1mixzWqwUekMdI=
X-Received: by 2002:aca:c58d:: with SMTP id v135mr10252180oif.42.1566778385830;
	Sun, 25 Aug 2019 17:13:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 17:13:05 -0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.1908251933090.10144@server2.shellworld.net>
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
	<Pine.LNX.4.64.1908251933090.10144@server2.shellworld.net>
Date: Mon, 26 Aug 2019 00:13:05 +0000
Message-ID: <CAO2sX302GFCv+K1uzUE6NqFiaJb96ppT1=J2woNoWOqi9bdjQg@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 00:13:06 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 00:13:06 +0000 (UTC) for IP:'209.85.167.175'
	DOMAIN:'mail-oi1-f175.google.com'
	HELO:'mail-oi1-f175.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.175 mail-oi1-f175.google.com 209.85.167.175
	mail-oi1-f175.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.69
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Mon, 26 Aug 2019 00:13:15 +0000 (UTC)

Admittedly, I have no clue why the Amazon log-in page would show up as
being 15 pages long in any of the text browsers... nor do I have any
idea why you're being hit with captcha.

I window shop on Amazon pretty much daily, place at least one order a
month from them, yet I can count on one hand the number of times I've
run into the monstrosity known as Captcha dealing with their website.

As an experiment, I just cleared all my Amazon-related cookies and
tried logging in again.
1. I opened Amazon from my bookmarks.
2. It used ctrl+F and typed in Welcome to find the link to the
simplified home page.
3. The resulting page had little more than a link to the sign-in page
and the top navigation.
4. I followed the sign in link, my e-mail address and password were
prefilled with focus on the text box Orca identifies as e-mail or
mobile phone number.
5. I tabbed a couple times to the submit button, no captcha, log-in
succeeded on the first attempt.
6. Got that in-between view when I went to my cart, but a browser
restart later and it was like I never cleared my cookies.

Maybe I just got lucky, and maybe there are accessibility issues I
missed because Orca isn't limited to what's litterally on the screen,
and why you keep getting hit with captcha when I didn't is certainly a
good question. I've never tried accessing Amazon from a text browser,
but I have come across other sites that work really well with Firefox
and Orca that don't work so well with the text mode browsers I've
tried, and I can't entirely rule out that it's just because I've been
using Firefox longer.

Granted, I could totally get behind a legal ban on Captcha, though
perhaps the question here isn't how to get around captcha but how to
prevent Amazon from hitting you with captcha.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
