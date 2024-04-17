Return-Path: <blinux-list+bncBDYPVTOXSQEBBTXK7WYAMGQEMBW5ZHQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id C026D8A7CD2
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 09:08:00 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5aa2b311cecsf8183578eaf.0
        for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 00:08:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713337679; cv=pass;
        d=google.com; s=arc-20160816;
        b=H9N+C7kl+IBWJ+5y5WCuyliQrgv9jnL6s6FnZmOXjsBgtdgNboBaIEWOyAEuh5gwzC
         HrEQ7IWXqWeIr6zXQj1hrPwAQA6r9WNvyY0F67uWQJwkICpIHadO0wfa2fhLtmMe/8Xd
         Ij2dqekZ+Npypkk2BlPNDpIN/WBjHWPJZo8pAHyE7m1iU/B/tyhXv1Ku00JXKnaLqBEZ
         pH2tg0gjerdvGfE6V0IJI3fKfqu4+GxR2KK56MaDjjZbCrhKBOSuil5UwFCKZL53Zc62
         qJ0p7vUcNpbq8G+HLuZ87Xy1BMOGd9D7Fr5UcwBTQsIdjgrfOS+mZlRHN99sZ4tMj1Li
         YSCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=8gsxcXaitcSWYCkkliJl2jNtRnfgNtMabL3AZ/uzJyI=;
        fh=5Ev8je52ApoSBUOhxC/LI40HSRV4/kxY+wcItLQoQ+Q=;
        b=oxC93VyfIV5owsmjiaox8LlLMvSd60Ia5+9PBnWk3tVnxG/gVVz5igoMYfDMVQS5Oa
         vg7U4eec7tRX1Q3BPlkJBY7Q5E25aBqaU4Gb5vQiRyIIaIEaPNHUqGEEBkLj/IFco9A6
         8atl3Hz/KLIMCz5sOG+eF3vTpO3cDgdrxXXclMP8pDVZedKClnzKKrdqFRZ4KeMfhnIS
         CwzPqaxdK9MJn3NbiXKcKKfwFnxJbDFCzMwt8jyg8r5fXEOYZfHgPZj8Efrp7MHXgHOC
         GZGUBSk/5p+N2VIgsVbo6cxdl9O9q0nKOZ2QjwkMQlHUtEPsGXeDHbYLdOskgpPABRMp
         sI8g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713337679; x=1713942479;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8gsxcXaitcSWYCkkliJl2jNtRnfgNtMabL3AZ/uzJyI=;
        b=LodP00FSApQx/4rjG9RhXPoTi/Y1+AKjcUNkrlpkLniFt+ihsINoSDss3dwRcdMj3i
         HJld2MQQzi9+t84kKH9qPvVGqFoExnXjn8BLRzZvXt4YbjNKn5O+HDK6Kpq4YA83cPQj
         o6b1LhqH/l+Fb/dx5ENkAUGi7g+2sXgcAHyJKHOr55gCJjJb8lCsUD6AumAEzCWYLtqk
         REE5a3BotN66qx61/1Es/D+pXSYeX5WDo0sWVv1fP1+AjBw0e9mwG7ZeA4203/BNJ+0H
         uUbY5yxJwafdL3qI5drOY7iwCT7O9g42voy2l6PAF3CfEG7u0M/zJJE1HJjszL7azDV5
         AFdA==
X-Forwarded-Encrypted: i=2; AJvYcCXtduKDcE7CLTEZD2PRgVivNi1ocHjki0uGcq6lTgyEJhTTw2TMpOy+Kd3PQkF4wU2q0S41+cVlgjHau8OZXwaaQBJ+NVLPq+PB
X-Gm-Message-State: AOJu0YxDWlnONJAj8bCguS96rVhTXQXF46zJm45lQCN8NOkRDUHN8Q8v
	O981J1jONALGMWCdt8Rg5o7HmCafg7r1IUa94WetmG429KIy4kMxFo56TehIZZg=
X-Google-Smtp-Source: AGHT+IHKEG0/3bn/NcFoZ/2lsBx8F5W3q7RLmjE3CQrAJS+FI0ULogNwEAPRbS0O8n0fqiUNTFmw8A==
X-Received: by 2002:a05:6820:98e:b0:5aa:3e8e:e1f with SMTP id cg14-20020a056820098e00b005aa3e8e0e1fmr15805370oob.5.1713337679453;
        Wed, 17 Apr 2024 00:07:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:a9cc:0:b0:5a0:3387:2adb with SMTP id h12-20020a4aa9cc000000b005a033872adbls5034676oon.2.-pod-prod-05-us;
 Wed, 17 Apr 2024 00:07:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU+C13Usvvaxs7JQyiOcCeVkwGMfllevULsm7IHBH+JHl57gfMxAnG5iLKsQAJFadrDbWnACt/g9hf9DOsXVAz796Zr2KhLpVSqvsZO
X-Received: by 2002:a05:6808:10cb:b0:3c6:faf3:5ca4 with SMTP id s11-20020a05680810cb00b003c6faf35ca4mr16600236ois.15.1713337678279;
        Wed, 17 Apr 2024 00:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713337678; cv=none;
        d=google.com; s=arc-20160816;
        b=TLwYUksyLvju5ZmnkiWIaf7b/HScdcEhbLiKjeupRSnE9NRF5hFfEy3RcJ/BoIFpPv
         WFGjyZcWPQ8m14q9BvrdcPyS3Xe090IhGWBrUrDGnC72KYbSWeqlGgbmR4Gcjes4r+X0
         mbdO7nOqbP9oPQANGkbmcfXvF3NWKtkqZvuforIHefpVSpjcBMaDPev0jv0JIDDFvv9G
         lLsk7HxPXZw3S6QWhdOG/Em426rkqRHy/G/LgsGzlcjolilSNLpcCrw5XCtStEG8TdMy
         fv4m79crn0Ew2wqsYwIg4iOhPCy4IyHaV0xfUfd/rxB1+MpYIn9z6u8RIJSwc0Dyaluy
         Ta0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=J8yMlPdQNLX4oHgoMKRSMiyWDqqxZuMROylMt/plOTw=;
        fh=qThZ7K/J/69b8USiUm3Qe2Iv9aVfYD+DdwEi8qXp0mE=;
        b=v+ko1zVoZ8LBqGP0JSyCTHlim8POdyCclrTtudPqHjTe3kuU8srfeKGDDLzFPatlCc
         CTkELT5tu0JZfIgMG/UJWtvswrGkniG1EsUBtdK+z6hE+JFe0TvQPIvVZkAtxrijLotS
         RrB7+WvBhaiGgsCosnMHzzzkbD25NJqUZmhH8mSCwGvqrPbYT4d8NhLuL90LsjYfAp3z
         7iBXePNWNnYPlWcGWWj/s4fDm9N+BBVkhANWTAWr3gKyJ3X99o3Dlo9P3fJ1rH1cNH67
         COZ0K0cDMTvLc8qgLGVVSY+z/g6VAwlc3x7Im1OyfWUyM0ZvoGKAgkyfoq/cCR72Iswe
         6aAQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ey15-20020a05622a4c0f00b004370939f381si6548948qtb.198.2024.04.17.00.07.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 00:07:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-646-fR2N6qSxMROJn6N5UR08Qg-1; Wed,
 17 Apr 2024 03:07:57 -0400
X-MC-Unique: fR2N6qSxMROJn6N5UR08Qg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDDDE28C97F7
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 07:07:56 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DA2151BDAA; Wed, 17 Apr 2024 07:07:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A200051EF
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 07:07:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4AC141887315
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 07:07:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-694-YeGnm_pWPBG1UgnIX-DFeg-1; Wed,
 17 Apr 2024 03:07:54 -0400
X-MC-Unique: YeGnm_pWPBG1UgnIX-DFeg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VKBnF1mFnzlJH;
	Wed, 17 Apr 2024 03:07:45 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VKBnF1T0Gzcbc; Wed, 17 Apr 2024 03:07:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VKBnF1P3GzcbC;
	Wed, 17 Apr 2024 03:07:45 -0400 (EDT)
Date: Wed, 17 Apr 2024 03:07:45 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Chime Hart <chime@hubert-humphrey.com>, blinux-list@redhat.com
Subject: re: change timezone
In-Reply-To: <Pine.LNX.4.64.2404170154350.1758311@users.shellworld.net>
Message-ID: <dd26a0f3-64fd-72c5-78ee-6ff91af7ed72@panix.com>
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com> <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com> <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com> <Pine.LNX.4.64.2404170126290.1757988@users.shellworld.net> <338ebe44-738e-82ab-7226-bbafaeb467bd@panix.com>
 <Pine.LNX.4.64.2404170154350.1758311@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

Karen,

Servers rarely are mobile.  The only way computers can get geographical
information is if they're connected to the internet and timesyncd or nntp
is pulling geographical information from a current location.
Servers live in data centers and large buildings and server installations
usually have several on a server rack.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 17 Apr 2024, Karen Lewellen wrote:

> Jude,
> Now I am confused by the laptop lacking hardware comment..freely owning I
> might be missing something here.
> Every computer I have ever owned, laptop or desktop contains a battery that
> has the role of keeping some baseline functions going like the clock.
> Sometimes  its failing is a hint at greater problems, like a motherboard or
> battery quality..but it keeps the time.
> Some too can draw time information if requested.
> Still, the ability to set time and date are so  basic to computer use I am
> kind of amazed it is a complex program in Linux..why?
>
> Especially given how many Linux distributions run servers and other data and
> information related services?
> Karen
>
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

