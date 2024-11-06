Return-Path: <blinux-list+bncBDYPVTOXSQEBBF4SV64QMGQENGTVMWI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 717FC9BF799
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 20:52:57 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d17190cb4bsf2351176d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 11:52:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730922776; cv=pass;
        d=google.com; s=arc-20240605;
        b=IA9XvcQyxwVmZIm/6sLPo6Pq/hCE9X8UmHaAWeymywvfC3w7nKVGH/ch8s7L6XX+2E
         3HQgpKLBHKPXA/C7Sacg7R5PIVdF1gTB+3NGckTOpTqczbTGRzVtzgY+KqOC0B3vE0FQ
         Vvd1PoLINMBfzkNSQEsmGwU7lo832UIBH+BGP/Pd3kwCixjhR6CPzSZGVal7fujRRSeO
         zwN/pxN+ZFY8KkuPLgOEKli2xsUmPHihOPNyAAx6EgYRf9FMz9hs9fFXBhRK3Tw0P4No
         zCLc/O9ES50vJ7eG6bPWk+/d8N34W6an2YBdJIkcC+ATtdFjwq3RIhqajLJdgjcocV5J
         lmWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=h1mGs5dSYkDk9xqqvgXiZeD6G0F+A4h9qNf4v3IIAco=;
        fh=074UDX3L2Lx1KmerXd2E4YqbTqCGoAhuF60w8axro2E=;
        b=ViuIs/K53CfztWWYRZBXJ/m5TOKy/E5tR1Czqi/zB1/akXanR1SkufA1FBwP3Yy36b
         sqFdkAIiLiTTdaNfwLPDYzwMlOwn5oSqj2wd4+xUbOO1UOCq25QvnkhnltOXHLa4Dws6
         psUaBzstH+qbv0NAorxjHvq2YuWioqG+od8NbV65Mwx3+2O2B63njkwy6Xaeim2JqmEi
         2oBeXxwtd3R/ESifaw+ZNdkI3wdh4IJEoNVonhl7HV4bOpMbdPbLav75q9oYnbjAQojC
         J2iy84aJTXfbxj5SvpvBrNqHBYmdzqRp9qlsEDEp2BaDRv4K2sSmvonnJjuHox71sulH
         YrQA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730922776; x=1731527576;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h1mGs5dSYkDk9xqqvgXiZeD6G0F+A4h9qNf4v3IIAco=;
        b=OkgYLCOuJJEd7jwuuR+i9iVUBq1LiWx0cZZNzECQX7PxI8k13GMNBUvMN3PxLtquoa
         VgcAGiGqnF/LcTw9IBWT2P0vzOfExVVSodiiUz2O84OA33oR5Cr1C5vCgRYpK2TA87fa
         Jy+8Hvrq+cTKTSI12t/AvXJi8Jygj4ClM6KKYeisWqBwgBqsZV8BhsBnxhI/afpaBlS/
         t8sDDr98yyeTDEUXbcFqJhSkRH6lwPk6WB+lz5nZ0nbRnHZ7swIW87wg/DZ4RhVp8pKQ
         5y6s2ffNlucZBOx+e5wOqt95U4KmRhRKNlJrD9BCgc+Qoex9Z4tVOjIQD2e/DeynUOoc
         QBMA==
X-Forwarded-Encrypted: i=2; AJvYcCUZAmi2OX+0T0bJwTuvmvhWW5RYR2I+AEqQfs78ygUy+r80FCtTO4NZfjUc3nz0M62W1axkdg==@lfdr.de
X-Gm-Message-State: AOJu0YxBqobBQbb5+6hMVxPokz+anAr3EgE0u1ySN18gSJO2tWvrDH2n
	+MDvJE+lag3qXi47wr/2CJ09UtGCLFL2yTck8ke/sa2XmWMpAqEQ0afd+EqNjUA=
X-Google-Smtp-Source: AGHT+IH59B2Toxo6s9ZNsjXOvDAOHPXubG2tN007oOua3GsF6FlHlp78K6Wxzz6Me8w+IX8oZe8YZg==
X-Received: by 2002:a05:6214:43c1:b0:6cb:ee7b:7ac4 with SMTP id 6a1803df08f44-6d1856743e9mr525777086d6.3.1730922776141;
        Wed, 06 Nov 2024 11:52:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:ac1:b0:6cb:d466:e169 with SMTP id
 6a1803df08f44-6d3935585d6ls2587836d6.2.-pod-prod-08-us; Wed, 06 Nov 2024
 11:52:55 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWZNbIgX5HKxXOi8RDrCYjPGx9FY9tO6oXzfduXKaNTO0k5Aku3iwttPmmkyhY9mAIPKxuYKTd6aik24A==@gapps.redhat.com
X-Received: by 2002:a05:6122:1cd:b0:4fc:e3c2:2c71 with SMTP id 71dfb90a1353d-513e91fcecfmr2081580e0c.2.1730922775232;
        Wed, 06 Nov 2024 11:52:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730922775; cv=none;
        d=google.com; s=arc-20240605;
        b=gEFKSJunfuPd2eMttXMbrs+mm6mzerm8GYT/0vD7nXjLLmpcagVoTujGSfM5EOJJhk
         qgqmi5Y71h9AWe4psNOPxJZiQsmVmdcgHpcHvATMGKqgQHDOoSTMeBJQFCTR5fzA5w1o
         si9vEt5O5Fj6CngVhF5mBc7pFXylyehCFz8uZm32MaqTkDYeEf4J8wXlt0FrcRlUjRD6
         Uirb6YAhuSbCBLSQZwLVwOXllDnf88V+pU8BDRsqWHe7rMEoK4vJfQ/Z1hEpXAVZNEmC
         alcZTn6KiizsPh7AIVULpnPkVBkVb/j89KP93FubiCVvQNwm2qTBgy28iVTPuHPRM86P
         2SXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=uHheFSCHdio7XIIWOBE2zajRAXNchPnHA5xLOewn4GQ=;
        fh=Ppud5brXcO7Ii9GUjWP5Bn7eOaZbOlsG2+9D/2yFPDM=;
        b=UIUYuZq9evEHVDjEyTR9oHOd7fRAx704h5SFMrQmDbuC7goUcvrnfy2beg05UC0NuD
         hHXiYjHATIoclyQ6215Mt/PCIScrxS2vYCEYemeCWkek3/+IujTJqwzlnaomFf77Jj/f
         2x/YL/kvNo1cT1SYn38hchQgaKaj3tE2N1wvoY/4c22JPvZ7vO5A7Xbc7cxhsaloq/9O
         Xfzt9JUw650dyXFZEvwvvCadknRmcQY/ZkAF/dxMgu2FMoAPATvtw5r40b12cYx+5CzR
         YFEz2dyFYjuLSGZrAIMQwnqqO82Vftc9IrvLYuC7M4+n7qhMDJ1iFiLtltqnmpXN0J/i
         y+6A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b2f3ab1350si1868985185a.569.2024.11.06.11.52.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 11:52:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-247-RX-ozg5aP9qbYR2sUUSdTg-1; Wed,
 06 Nov 2024 14:52:54 -0500
X-MC-Unique: RX-ozg5aP9qbYR2sUUSdTg-1
X-Mimecast-MFC-AGG-ID: RX-ozg5aP9qbYR2sUUSdTg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3EB3719560AA
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 19:52:53 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 384511955F42; Wed,  6 Nov 2024 19:52:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 35B341956088
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:52:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A704519560AA
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:52:52 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-653-Nzul-RZoO46Y2EOAJwI5VQ-1; Wed,
 06 Nov 2024 14:52:50 -0500
X-MC-Unique: Nzul-RZoO46Y2EOAJwI5VQ-1
X-Mimecast-MFC-AGG-ID: Nzul-RZoO46Y2EOAJwI5VQ
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4XkG8L3Cmsz4Vdn;
	Wed,  6 Nov 2024 14:52:50 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4XkG8L347nzcbc; Wed,  6 Nov 2024 14:52:50 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4XkG8L33XtzcbV;
	Wed,  6 Nov 2024 14:52:50 -0500 (EST)
Date: Wed, 6 Nov 2024 14:52:50 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: mattias jonsson <mjonsson1986@gmail.com>, blinux-list@redhat.com
Subject: Re: chromebook and tdsr
In-Reply-To: <19303070cf0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
Message-ID: <76f641fd-3254-ad09-f137-584271143787@panix.com>
References: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com> <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com> <48b60262-4cc5-39c5-7269-a6585c352296@panix.com> <19303070cf0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 46D0iN7ASLhENmPq04wzf5CeOWRw5-LdeZaiLB_fxrk_1730922770
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: DpJW4jPuUlZVyVKmgMoshcMtHNFbwkiirZXTLYwd870_1730922773
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

Edit tdsr config file in the ./tdsr subdirectory.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 6 Nov 2024, mattias jonsson wrote:

> so how do you change tdsr settings
> or do you prehaps dont use anny of tdsr commands
>
>
> Den 6 november 2024 20:42:48 skrev Jude DaShiell <jdashiel@panix.com>:
>
> > meta key?  chromebooks have no meta key.  They have a command key just
> > above the shift key and I don't use it or need to use it when running
> > tdsr.
> >
> > --
> >  Jude <jdashiel at panix dot com>
> >  "There are four boxes to be used in defense of liberty:
> >  soap, ballot, jury, and ammo.
> >  Please use in that order."
> >  Ed Howdershelt 1940.
> >
> > On Wed, 6 Nov 2024, mattias jonsson wrote:
> >
> >> jude
> >> how do you use the meta key for tdsr
> >> you cant set the alt key as meta key?
> >>
> >>
> >> Den 27 oktober 2024 18:50:32 skrev Jude DaShiell <jdashiel@panix.com>:
> >>
> >> > I'm using the package in the debian container environment with 96gb of
> >> > space so it has enough room to swing a cat. tdsr for whatever reason
> >> > needs
> >> > to be started once the penguin shell is opened with chromevox turned off.
> >> > For whatever reason so far the command to start tdsr cannot be appended
> >> > to
> >> > .bashrc without generating trace back errors.  My guess is the command
> >> > just before the command to invoke tdsr needs a couple ampersands attached
> >> > to its end so tdsr will only start after that command has run to its end.
> >> > I've tried it other ways and had to power wash the chromebook to clear my
> >> > mistakes.  If I can get the sound card to play a tone at the end of
> >> > .bashrc execution that would be helpful too.  The shell comes up slowly
> >> > even with chromevox disabled. I'm using an acer spin #713 I bought a few
> >> > years ago since my main linux tower died and went to the recycler until I
> >> > can go and buy a replacement for it.
> >> >
> >> > --
> >> >  Jude <jdashiel at panix dot com>
> >> >  "There are four boxes to be used in defense of liberty:
> >> >  soap, ballot, jury, and ammo.
> >> >  Please use in that order."
> >> >  Ed Howdershelt 1940.
> >> >
> >> > To unsubscribe from this group and stop receiving emails from it, send an
> >> > email to blinux-list+unsubscribe@redhat.com.
> >> >
> >>
> >> To unsubscribe from this group and stop receiving emails from it, send an
> >> email to blinux-list+unsubscribe@redhat.com.
> >>
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

