Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAE99C16A
	for <lists+blinux-list@lfdr.de>; Sun, 25 Aug 2019 05:26:36 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D779C881344;
	Sun, 25 Aug 2019 03:26:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B1D9A17B4C;
	Sun, 25 Aug 2019 03:26:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A7B93CBF;
	Sun, 25 Aug 2019 03:26:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7P3QIar020400 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 23:26:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 45C861001B12; Sun, 25 Aug 2019 03:26:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx26.extmail.prod.ext.phx2.redhat.com
	[10.5.110.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EC2D1001958
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 03:26:15 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9B2B2800410
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 03:26:14 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id b25so9831907oib.4
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 20:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=Ry/DBVtYBx4sb+6FqUQ7KhuY9n1CjUOxgeP4Q1/oVUg=;
	b=cdDNiZ1dpjAqMRCrEyzkNN+fvuWozNyY1Pu4oRJg+tpQ1AqXamXCCeuvWcd+jy37xN
	21oACl3o2LmXdqgz57FyqVe/0cKL8gBJjod7NrHa3ignBOwSBspc9G8YZYQGovGjGYa1
	JrQfUKCRgd+Dy+8SOjHdXLbJR1b1KI1JSwmyUTiWce8K7R9FjF+oXNAh+WBRLjHlqJYm
	ClqR5Wejd6imQWrrgz9G5YQHlgfDBLFF8xn7gK3r50JJsuXG/xnvOSeksKd6gXH4hh7x
	lHdJzfMJweFcJyUg0Vkvu+FZ91bNBLi57zNFuckIS6dUzbvLNvr3Ppiaed+iRz24sarG
	nExA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Ry/DBVtYBx4sb+6FqUQ7KhuY9n1CjUOxgeP4Q1/oVUg=;
	b=bFKcq/yChcJtGBMJL0bzjbI2aFnsoV+y2ZMOaKxFJJH3atHMbnClGviQhJbgG+KGF/
	VoMOrdijwm319h2R06RR1hoJNZ2O48DNZ/NkRYeOwLV2k2DrZ/VZGs8Uhr/rSm6FXM16
	SNv8r4ORhhMgXNxIAVt2PIN92yDbNNpzLEZJ1ae/6fZKPqrlYYUXyf0d3wGlslTnCEpW
	Anl6GevCpbUq5pVTD6GR2VEeW9jxmOMFV6x1spLUKymeofcOp2kt5MwU/OZlrFDoWvVa
	KxpF/jjr980Gh5nGYiiuQjB6R9WUnvrRDYoLvYP6kiaiMARY18z2x/scfliED4QXrroC
	9I5Q==
X-Gm-Message-State: APjAAAX5ROfuw1BroyQhc9teXJcuExIeMSVqGZYSFsIIuLKe2jkVSUrA
	mPKmxmF72WJS4ujXaCFH0iUxQGaZ
X-Google-Smtp-Source: APXvYqxOOA76WzCDg7RJ3TYdzWvK7IaZ1sDii/RZyE3Lk1MDaTtKmv6yv+KJ6Cx54+k5a7zR+VhvXg==
X-Received: by 2002:aca:c449:: with SMTP id u70mr8361414oif.5.1566703573726;
	Sat, 24 Aug 2019 20:26:13 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id p11sm2626436oto.4.2019.08.24.20.26.13
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 20:26:13 -0700 (PDT)
Subject: Re: amazon?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
	<Pine.LNX.4.64.1908241501480.31524@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
Message-ID: <7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
Date: Sat, 24 Aug 2019 22:26:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.67]);
	Sun, 25 Aug 2019 03:26:14 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.67]);
	Sun, 25 Aug 2019 03:26:14 +0000 (UTC) for IP:'209.85.167.172'
	DOMAIN:'mail-oi1-f172.google.com'
	HELO:'mail-oi1-f172.google.com' FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.172 mail-oi1-f172.google.com 209.85.167.172
	mail-oi1-f172.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.67
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Sun, 25 Aug 2019 03:26:35 +0000 (UTC)

Congress has not attached web accessibility guidelines to the ADA, 
guidelines were not established under President Obama and President 
Trump's administration is officially not pursuing any such guidelines. 
https://www.boia.org/blog/is-website-accessibility-required-under-the-ada


Amazon is not covered under Section 508 of the Rehabilitation Act, as 
the Department of the Navy is.


Don't get me wrong, I think the ADA extends to web sites, and I think 
Domino's will lose, but the legal question has yet to be settled. This 
would all be moot if the DoJ under Obama or Trump had adopted the WCAD 
2.0 standards as the standards applying to web accessibility under the ADA.


On 8/24/19 3:02 PM, Linux for blind general discussion wrote:
> I predict Dominos will have its clock thoroughly cleaned.  Precedent
> even in the Supreme Court isn't on their side.
> Congress made it clear what accessibility requirements are in the
> accessibility process and that happened in 2010.  There's about 16
> technical requirements and a Preamble to Section 508 and this was
> something D.O.D. got measured against in 2012 when Obama required a
> D.O.D.-wide accessibility report.  End result of that was the United
> States Navy was Accessibility Leader and the United States Navy was
> still left with serious problems and all other components had much work
> to do.  I know about that having worked for the Navy during that time.
>
> On Sat, 24 Aug 2019, Linux for blind general discussion wrote:
>
>> Date: Sat, 24 Aug 2019 15:53:37
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: blinux-list@redhat.com
>> Subject: Re: amazon?
>>
>> Amazon is definitely aware of Linux. They have apps running on Android and
>> even platforms that use Android as their OS. They support Linux in AWS
>> including their own flavor of Linux. I'm sure their are some staff at Amazon
>> who don't know about Linux, but that doesn't mean the company is unaware of or
>> doesn't care about Linux.
>>
>>
>> BTW, there is still a legal question as to whether a web site which offers
>> products or services to the public needs to be accessible. The ADA doesn't
>> have companion guidelines on what it means for a site to be accessible and
>> Domino's is going to court to claim that the ADA doesn't require them to make
>> their site or apps accessible. I think the ADA does apply to public web sites,
>> and I think Domino's will lose, but that doesn't mean it isn't still an open
>> legal question.
>>
>>
>>
>> On 8/24/19 2:11 PM, Linux for blind general discussion wrote:
>>> 1. My comment regarding Linux is based on direct communications with Amazon
>>> staff,? who have confessed not to have heard of it,and? who have no direct
>>> contact with their so called accessibility team when problems arise.
>>> 2. them properly compiled? elinks and links function with java script.
>>> 3.? Access is tied to interaction which is why even later editions of lynx
>>> can manage some scripting, submit buttons for example.
>>>
>>> 4. since adaptive technology is often a substitution for the persons eyes,
>>> hands, brain, and the like, what gives you the right to state that
>>> technology choices are not tied to physical mandates?? How does your stance
>>> differ from those who claim that access need not exist at all,? or that all
>>> those sharing? a label are the same?
>>> 5. the names of access or other individuals at amazon confirming your
>>> assumption here?? the legal stance is that if a site serves the public, an
>>> individual can expect equal public access...which is why? alternative
>>> doors??? are to exist? in the first place.
>>> How do you know what low graphics can or cannot do if you do not follow
>>> their development?? This is about keyboard response which exists in
>>> graphical? browsers like elinks and links.
>>>
>>>
>>>
>>> On Fri, 23 Aug 2019, Linux for blind general discussion wrote:
>>>
>>>> I don't believe for a minute that the accessibility staff at Amazon has
>>>> either forgotten or stopped caring about Linux accessibility. Realistically
>>>> though, it is possible that they have stopped worrying about the very small
>>>> number of people who still use text-based browsers and expect them to work
>>>> for shopping, banking and other modern internet tasks. The thing is Linux
>>>> accessibility in 2019 != lynx/links/elinks accessibility. In fact, this
>>>> hasn't been the case since about 2008 or so
>>>> .
>>>> Unfortunately, text-based browsers have not kept up with the rest of the
>>>> internet, and can't be expected to work well for most websites without a
>>>> major overhaul, especially since they don't even support the latest HTML5
>>>> standards, nor do they support accessibility standards that have been in
>>>> place for years. Even w3m doesn't fully support the w3c's own standards.
>>>>
>>>> Yes, I can see why some people may want these light-weight and fast
>>>> browsers to work with Amazon, and yes, they should be made aware of the
>>>> problems that people are having. But to say that Amazon doesn't care about
>>>> Linux accessibility because their site doesn't work with a text-based
>>>> browser is at best a gross exageration, and is at worst a grave disservice
>>>> to those of us who use Linux and a screen reader at the same time.
>>>> Imetumwa kutoka miti
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
-- 
Christopher (CJ)
Chaltain at Gmail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
