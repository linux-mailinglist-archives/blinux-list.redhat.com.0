Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAFD9C652
	for <lists+blinux-list@lfdr.de>; Sun, 25 Aug 2019 23:48:09 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CDBCE3082E03;
	Sun, 25 Aug 2019 21:48:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B76D1001959;
	Sun, 25 Aug 2019 21:48:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B3AD889CF;
	Sun, 25 Aug 2019 21:48:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PLm08A011382 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 17:48:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 154FE5C28C; Sun, 25 Aug 2019 21:48:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx25.extmail.prod.ext.phx2.redhat.com
	[10.5.110.66])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F3EE5C1D8
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:47:57 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BCFC810F23E3
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:47:56 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id v12so10711190oic.12
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 14:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=RtvHrSDepvCPKwVJ4o4HO4gFSrRQOSzIjuCd7+W1+ck=;
	b=pz5wPAZcguU7DOzZc0R1pOHqm6N/mWg76WnSJ1volZn/kT7YGUbILj5vJasbBh8WTy
	i7MgQEUQm2al4m9JFINPVEX5zK5hF3oZlp7YKv9IdN6ET2w06cFol+g0GFIb+I9lqz7m
	bLPyB3I3r804p1H4VvZu1sr7/uZwQYv7JZNpYTXSqZzmUaVeKsaVUVQxI78lep7sJc3a
	NqmD8bYhrOyTqZKa/VZH6OYJBBmL+U5c4mXDZcNlsky0h/xHOzDkFcPWEouWV0QOmwWH
	pG8KgaDipX6aAh6iwMesgrCvudSZNBVrD+p1CfMLWoLiwuPbiMS4EuHEiAKsV8k01ZHm
	7/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=RtvHrSDepvCPKwVJ4o4HO4gFSrRQOSzIjuCd7+W1+ck=;
	b=iRkH67I0L96uOky2krn5ID6FUC+WEMZu+YvU3CwhtQzx/oF85MX+4DH/d6b16dqBOt
	p52FeMhQ+5c5jLm5QaAmAni8MnDjdjeopaq6kmyCs8DSqgyMz8MmNlh3RsWYEvKX/B3W
	uM9FgNWUhZJj2bUo52MuIZxkckeXQEejOIPHu8yLKykpL9BglX6sVA+8MYHPvt3NJOid
	GQ+zjwUiJ8ZlUausOUk2IhjG1uFmJpvs6I9mYOmrrlkgZJAvw6cbCKnH1Uam7vqyqidn
	kRGuJ4QphcxP4v0yxWASZGqxXo9mVJJ4psz6Q4unZuus4zMDBr2diKix4ivuPsY+gcoR
	cAGQ==
X-Gm-Message-State: APjAAAUTLoqgredA3kUuHL6020ucwOsCCvcJXrNRVbL7LHaJGiKyQxm+
	Z/NtwwhQ94s/xDjYf2sCzLrqdzA9
X-Google-Smtp-Source: APXvYqzgtJWyN3UtYCvf1k5/aSSIgl+iFWtZtSmW9ZsQpfkgkcq26RX66TElFnMd4cx/AiC58bVjTQ==
X-Received: by 2002:aca:c589:: with SMTP id v131mr10561400oif.92.1566769675645;
	Sun, 25 Aug 2019 14:47:55 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	a17sm1876135oia.49.2019.08.25.14.47.55 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 14:47:55 -0700 (PDT)
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
	<20190825.212134.847.19@[192.168.1.131]>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
	<20190825.213109.635.20@[192.168.1.131]>
Message-ID: <64b28f07-c53c-1943-b5de-e27bc6222f24@gmail.com>
Date: Sun, 25 Aug 2019 16:47:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190825.213109.635.20@[192.168.1.131]>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.66]);
	Sun, 25 Aug 2019 21:47:56 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]);
	Sun, 25 Aug 2019 21:47:56 +0000 (UTC) for IP:'209.85.167.177'
	DOMAIN:'mail-oi1-f177.google.com'
	HELO:'mail-oi1-f177.google.com' FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.177 mail-oi1-f177.google.com 209.85.167.177
	mail-oi1-f177.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.66
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Sun, 25 Aug 2019 21:48:08 +0000 (UTC)

I don't know much about Guillermo Robles, who filed the suit against 
Domino's, but if you say they have money and connections, I can't 
dispute that. 
https://www.washingtonpost.com/politics/courts_law/do-protections-for-people-with-disabilities-apply-online-dominos-asks-high-court/2019/07/20/984c685e-a7fd-11e9-a3a6-ab670962db05_story.html?noredirect=on


I think we're talking about more then a few hundred blind people using 
Amazon, but that obviously isn't the point. Some companies want to do 
what's right because it's the right thing to do. It could help with 
advertising and public relations. I'm sure Apple and Microsoft aren't 
committed to accessibility just because it means they're going to add a 
few thousand sales to their bottom line. When companies won't listen is 
when the threat of enforcing the law can make the difference. I'm pretty 
sure the reason we have accessible Kindle's from Amazon is because the 
DoJ said that ereaders used by schools and colleges had to be accessible.




Christopher (CJ)
Chaltain at Gmail


On 8/25/19 4:31 PM, Linux for blind general discussion wrote:
> Somebody with money and connections is suing them.
> Amazon probably could've been reasoned with when they first started. They were small and still connected to their customer base. Now, they're so big, they don't care if a few hundred people don't use their site. It's like a four year old trying to box against George Foreman. He's not going to notice much lol.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Sun, 25 Aug 2019 16:28:35 -0500
> Subject: Re: amazon?
>
>> And yet Domino's is being sued because their web site and app is not
>> accessible.
>>
>>
>> I agree with you but that doesn't mean law suits should never be filed.
>>
>>
>> -- 
>> Christopher (CJ)
>> Chaltain at Gmail
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
