Return-Path: <blinux-list+bncBDGI3AUYYYCBBTED6G6AMGQEK33DZDI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id A65B6A2390D
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 04:21:50 +0100 (CET)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b93c7ffaeesf385236085a.1
        for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 19:21:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738293709; cv=pass;
        d=google.com; s=arc-20240605;
        b=Y6KrKzmB2d1yzlNREpZAY+JvGqlshZ/BKR9OcQlUMfaszbueyFREYmAGUIG7/qt/Sy
         NGrCkj8ZxyqujFD76QoJLvp5HpF1ib5y2R44geneCS/i8XbvDnwpjogjq8heE8cAKW+y
         RHBYkLC5TWy9/eo72RrWaXXNljTAG92Nie1BWsT3a0DwBTn4KOnigg2cIlrhAwBINSZt
         m5yyl6UD7nafqrpNEsao3pX3AWao0lSH2nvMLohzWStjUJNxwPXw0dY0IML8OMYsQsTR
         WX74T3ihb+1HeXtAljRj5fCaFpofIGN0F4i/2545s/vXftsi3f89Yk/iLyIe5zeMSuyo
         Yy3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=jjoCcDReO+97pIE68lOgNJ9a+GKrTg2rb2cSLiNRNF0=;
        fh=ZsHcEkGNINmEXGK91sm6FzSU96BlZyTK2Y13M32KX8c=;
        b=Y8wf95kPfMwpagc0XSN0l9o636b5/3J5jZBn4ELL4Dv5N3hxzGVY6PpMsKrTn9n6vT
         6jBKRj3/gOkfUL7rRmcpcvFUaS875TBr3dH8yfVXI0U9AnSs+ArkYyzOCNgAC6dqkccT
         S8BGKVPRpOIDBdbT/LsfLOqstn1fMnOhfjGVWXqQ6dY5bvMacsFWQQzvZAQYnSMepMy7
         O/GJp1NJZZiOoIpzNnCBnMu1buqJbqHsI+ztMugEnSHo6oMBu6LRCOpAcB/08ii07jMy
         TpQy51PPGAfS0ToedpwSE7ZQw7F0qJgYYgaWMn86ygyVPuN6nlw760yiwQGU+43hX11m
         JmOQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738293709; x=1738898509;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jjoCcDReO+97pIE68lOgNJ9a+GKrTg2rb2cSLiNRNF0=;
        b=MzNZO/YLCZgpXpjzYMisAHZB/ZQrQx110ebgBvWwkR/h4Ip1TnJo86HPqPZaS92mbJ
         cVJsz6rydMev1HppDtjGq6u+Zck4I3p0OXBK1ZvSc/Je4Rjx1HNquXRQA7FuSZ4tE6AM
         8VtoIdDWdo/qetJjGq2Zu9MWJe2TITVlDsuo4LAsM9hRewgQhjDjD4Odqehj17SoWLHV
         Aj+OrU2x5pwd27xYA1hvXWHq5IlZk98pMLPLvl3ml2BA2NBoIRFN+DEysWBeMMqiWjSw
         CpFXyT2qMkVwMojqJw74mJzJ7ANjSPctxldynp2hHrKJLiFu22nXx//8AzTRxqkJr4B8
         LiPg==
X-Forwarded-Encrypted: i=2; AJvYcCV5coYIkMu+r3P0InlTrrpaiCMvjgJCbr0CmVr8CTd77Ha0OcmRJ4Lr2mm/oXMSK8uxTuE7gQ==@lfdr.de
X-Gm-Message-State: AOJu0YzYBQLMymwlx384623cqCSL7OBHyznAkvM5o1ODs8JbKbN66aHM
	/M3Q12mlqUlP/rqlfylnZ4Le755lCEY2TMx6mVYfQv5eCNLVKbkXqscdm05TD00=
X-Google-Smtp-Source: AGHT+IF00wHn6174626aABdMjppyyCRI+Bjc+j/j/taJQnLrPmBbqCpoVe0NzZpz8BfC/XKoILlVSA==
X-Received: by 2002:a05:620a:29ce:b0:7ac:b95b:7107 with SMTP id af79cd13be357-7c011da696amr342087285a.12.1738293708867;
        Thu, 30 Jan 2025 19:21:48 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:a015:b0:46e:55ee:a375 with SMTP id
 d75a77b69052e-46fec6f781fls3489901cf.2.-pod-prod-00-us; Thu, 30 Jan 2025
 19:21:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWv/0OTs1fnowlDfnMAfm3Zf1ahhczJyGReV9qil1qAeoOh/y0dV5LEOwBc2/Z95uOI5vZRCSJHtpH/2A==@gapps.redhat.com
X-Received: by 2002:a05:620a:4625:b0:7ac:bc66:5efb with SMTP id af79cd13be357-7c011df6c80mr330696685a.27.1738293707606;
        Thu, 30 Jan 2025 19:21:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738293707; cv=none;
        d=google.com; s=arc-20240605;
        b=f26RQIeezUbubP+8IO/u+p7yOXKG1pMA0t2OpGOJGP3IlSRZ0F5Xp+jgc2bj8nBZmx
         YT/2vH0KM9gd1Ru09Je2pe5NlXlwmF/RIo63UaZTLbczUvfZV7tIHAtLjbQCdsp+fs7X
         rxtQdzBhJoESk++GfQBgzxY68bW6A/kmSkZbjryP2s0XkFy1w6v43jV52mmje0ZRMENy
         CrCuraYwM632gF8gtEJ2+W6TLaa4xbJnoPAT71nhtdjcDFTxqEXVcgcOpv0nlYWXVoRs
         oDbPU1WrZO1+zFq2NHXzNgTjnTYb6xRc0fbyvBys0qaPMaJzsQPMlpyAt2cR6HXdgGAw
         b2jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=ChjqbTCb39Gqi5sqYE2c6d6aTVvHX7bCAape0ixlFtc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=g+xV5i2+mZi3I5Nddp1qtnBP/nAPju5JVSfrh8SHYOka0rLgtYQ3xoHCLSeJkRBG0u
         hBaZss3yN627XSF8rGtkUgHPB+DsV3TwP5kXHlW3QFGxDW0I2c7pfR55dnC5I9KYEHeC
         nY3KhCGjNWC57mFDtW+Wdkg2dlCTMvw9bei2AhZiD6OIy4KCeUilax+Q6iRDi5UYlR1O
         0gIzb81sKe7l1DgO7vJGyKf71xCwgnMzAHOJwaonKd42zYytETkm2U89BqbzUzBYvgvG
         5RcdIhUIP/eO8H6FGUfIYXsdhmc1MSCAydWXv7a9rLKj9UTooeNO6sb/LLSvyqYCpiy2
         wALw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf1d0bd6si29255361cf.345.2025.01.30.19.21.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 19:21:47 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-263-m9MiLObnOGSjRVccCs1HyA-1; Thu,
 30 Jan 2025 22:21:45 -0500
X-MC-Unique: m9MiLObnOGSjRVccCs1HyA-1
X-Mimecast-MFC-AGG-ID: m9MiLObnOGSjRVccCs1HyA
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 05F4D19560BB
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 03:21:45 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id F39BF1955F3B; Fri, 31 Jan 2025 03:21:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F0FBD19560AA
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 03:21:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6E4C81800373
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 03:21:44 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-368-iP_lUUf8O0SCk7cGWtOJqA-1; Thu,
 30 Jan 2025 22:21:41 -0500
X-MC-Unique: iP_lUUf8O0SCk7cGWtOJqA-1
X-Mimecast-MFC-AGG-ID: iP_lUUf8O0SCk7cGWtOJqA
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Ykh506Mybz4D9F
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 22:21:40 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4Ykh506BCQzfYm; Thu, 30 Jan 2025 22:21:40 -0500 (EST)
Date: Thu, 30 Jan 2025 22:21:40 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: orca+mate+firefox tutorial suggestions requested
Message-ID: <Z5xBxMu3BPezPy4V@panix.com>
References: <Z5vtzSncAsVlFYgN@panix.com>
 <CO6PR18MB4419F1C4560EF412CC589495C7E82@CO6PR18MB4419.namprd18.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <CO6PR18MB4419F1C4560EF412CC589495C7E82@CO6PR18MB4419.namprd18.prod.outlook.com>
X-Mimecast-MFC-PROC-ID: 7VweE25L9exhvRZS9xz382h_iJhBGSYs0Xyx9oYJarw_1738293701
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Y3iLm0ReF8j2zoTHwyZiMn4Pz_U_jYBECrJw_9uxbh4_1738293705
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Thanks. I'll check this out now.


On Fri, Jan 31, 2025 at 12:48:18AM +0000, cstrobel crosslink.net wrote:
>    I stumbled on to this Mate tutorial.  It seems to have been written
>    with Accessibility in mind.  Using Firefox with ORCA is similar to
>    using Windows screenreaders with Firefox.  You can press ORCA-h, the
>    help key then F3.  It should say something like 110 shortcut keys for
>    Firefox.  You can arrow down and get an idea of what is available.
> 
>    See[1]https://en.wikibooks.org/wiki/Using_and_accessing_MATE/MATE_basic
>    _concepts
> 
>    [2]Using and accessing MATE/MATE basic concepts
>    The most important element of the desktop is the dashboard.By default,
>    the MATE dashboard is the horizontal bar that occupies the top of the
>    screen. On the far left of the dashboard is the main menu, with an Apps
>    button, a Locations button, and a System button. Located on the right
>    of the dashboard are the quick launch icons, followed on the far right
>    by an integrated clock.
>    en.wikibooks.org
>      __________________________________________________________________
> 
>    From: Rudy Vener <salt@panix.com>
> 
>    Sent: Thursday, January 30, 2025 4:23 PM
> 
>    To: Linux for blind general discussion <blinux-list@redhat.com>
> 
>    Subject: orca+mate+firefox tutorial suggestions requested
> 
> 
> 
>    I finally got orca and mate running on my linux system and now have to
>    learn to use them. Can anyone suggest a tutorial geared to blind users.
>    Who
>    don't use a mouse?
>    Assume I know absolutely nothing about the GUI interface. Which is
>    absolutely
>    true since
>    until now I've only used the text console and have quickly determined
>    that trial and error will get me nowhere fast.
>    Thanks for any suggested tutorials.
>    --
>    Rudy Vener
>    Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in
>    the wild: [3]https://www.amazon.com/dp/B0DPN1QGGJ
>    Latest Limerick - California Pipe Dreaming Of Secession
>    [4]https://limerickdude.substack.com/p/california-pipe-dreaming-of-sece
>    ssion
>    Website: [5]http://www.rudyvener.com
>    To unsubscribe from this group and stop receiving emails from it, send
>    an email to blinux-list+unsubscribe@redhat.com.
>      __________________________________________________________________
> 
>    From: Rudy Vener <salt@panix.com>
>    Sent: Thursday, January 30, 2025 4:23 PM
>    To: Linux for blind general discussion <blinux-list@redhat.com>
>    Subject: orca+mate+firefox tutorial suggestions requested
> 
>    I finally got orca and mate running on my linux system and now have to
>    learn to use them. Can anyone suggest a tutorial geared to blind users.
>    Who
>    don't use a mouse?
>    Assume I know absolutely nothing about the GUI interface. Which is
>    absolutely
>    true since
>    until now I've only used the text console and have quickly determined
>    that trial and error will get me nowhere fast.
>    Thanks for any suggested tutorials.
>    --
>    Rudy Vener
>    Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in
>    the wild: [6]https://www.amazon.com/dp/B0DPN1QGGJ
>    Latest Limerick - California Pipe Dreaming Of Secession
>    [7]https://limerickdude.substack.com/p/california-pipe-dreaming-of-sece
>    ssion
>    Website: [8]http://www.rudyvener.com
>    To unsubscribe from this group and stop receiving emails from it, send
>    an email to blinux-list+unsubscribe@redhat.com.
> 
>    To unsubscribe from this group and stop receiving emails from it, send
>    an email to [9]blinux-list+unsubscribe@redhat.com.
> 
> References
> 
>    1. https://en.wikibooks.org/wiki/Using_and_accessing_MATE/MATE_basic_concepts
>    2. https://en.wikibooks.org/wiki/Using_and_accessing_MATE/MATE_basic_concepts
>    3. https://www.amazon.com/dp/B0DPN1QGGJ
>    4. https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
>    5. http://www.rudyvener.com/
>    6. https://www.amazon.com/dp/B0DPN1QGGJ
>    7. https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
>    8. http://www.rudyvener.com/
>    9. mailto:blinux-list+unsubscribe@redhat.com

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

