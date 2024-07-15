Return-Path: <blinux-list+bncBDWLFR556YFRBHGJ2W2AMGQEGJZLOSY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3C59319F5
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:04:14 +0200 (CEST)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-e03623b24ddsf8665524276.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:04:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721066653; cv=pass;
        d=google.com; s=arc-20160816;
        b=RZi1B2CPO/I5bxZX9smN54ADw/XjfmYnGZDkGbQ/omd+12AmPbIkeWcQAEjaTRW23s
         UsQJ3J5Do/VMEJMIG97P5Tqx4JcEe5Zq9GMVH+qYTDr7uqcEHfDXPeXMBWUKAw2ffjDr
         HTReAdAVXYEAgm439l6gYA4Njzq36QIDvqxVC6n+5J+iouL4Bc+3pSSJ+d5ZiW0C+wHR
         xyHGtRuCcz9yvXOTLfReY6gbsg1eq4Esi/r9nV4BmrMCTdrKvT5AW3cyxEqADipmayh2
         zq3uSdCpJZT9UaUno32x62AdBhLkR5pWLncMdg530kOJMsmPiK0F4YTH80/Q2mGnOXyi
         QozA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=r7sKvWGAIrGpDGKUjm1Gri8wjQCPa+vm9p3GhhHcyeI=;
        fh=d7kdawSzmvIMPAH2tl5GkajhNP8CFADJSSmho++Sgos=;
        b=MTE2CrTGQ55HnC9uR06/pXr40eymRuDVmLSz+o85swVCzWIRQlUJCCday2KWkXBYEz
         RbygthAvuOlPMqLPLc37/2sEpDSqDt8ey3Ht14CIZzkvJP/7xB97C4VJnYJ5RkVmSrc6
         yP7Xv2yKPW1cuCWOKWyU2pJtxTCDhEEFsq3kgZqGqJJvCY2i7B8CzvBDtHyCniC9r97Z
         viCMkI+PrNH0pR5dYJjRPHlT40u9CImTfuU378zuXtt915qr9fGISrX02Ub9f8rAjN5r
         +WPMoqfy13LgGnNFQOzrzzdtUKDDEekv4+hf0Ws4GL9m/eMqSFap0tsvEUqoGPRRo5h0
         sI+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=r.d.t.prater@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721066653; x=1721671453;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r7sKvWGAIrGpDGKUjm1Gri8wjQCPa+vm9p3GhhHcyeI=;
        b=OgX1/1ZoX5WoUmrZncYGZDElrjgdzezOsx66U3pHAakXo+ReGv6knAil8EuvXdbqMl
         4PfBB24QIfQwIlueD5kHahw3Dh7cQI6SW+zOh1Uob13PKMhvK/72sPsp46qTh6w7+PV/
         RAJUEj085R6qiw+RX8VhiZ4YJE/wcNL25ZGN4BOrPoFQ8T1VTKAuUXpnd4RJY8y7xw2m
         h4ZOhTB4XyM+ys0eUpPUDJ3TD7vzbIoST3i9TsCeZEDhRfKoxN1HkjBxjtFfRS3RLfWA
         I+GqhYmLCxRWKB9t1jZEDycG39BmdvSHNOgNYgv5XnCn/trz8byaDtJoLrf0s0SQHFeP
         OBfQ==
X-Forwarded-Encrypted: i=2; AJvYcCWFreb6fy6SwVuG8Fa5kw746Le2LfyiDjm8vR7YdISX9gOYVNEfeCgzWCT9r5W660/eFk0JCo75vRrKXrpnVeibOnjjJYcxG+Gc
X-Gm-Message-State: AOJu0Yz28iJgAgczxSZLtVzIm1exT33jfaLG5iUUk8Dini+vxVKv+/FN
	UxkTM6eKNDlYtPemSB22EM4Th/2qFeYnOg7Cc4HNfnJTu9Apj+DVfp/ocRulAzE=
X-Google-Smtp-Source: AGHT+IGtV/7fYPqumMmpOje035y/pr/ypyMCafJSoDtF4rPJmJy1CgQuMCq9LRG56m7bJeTW+zurPg==
X-Received: by 2002:a05:6902:2b07:b0:e05:61f9:1592 with SMTP id 3f1490d57ef6-e05d3acd0f6mr340475276.8.1721066652955;
        Mon, 15 Jul 2024 11:04:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5886:0:b0:6b5:e488:61dc with SMTP id 6a1803df08f44-6b74b43b420ls68738536d6.2.-pod-prod-08-us;
 Mon, 15 Jul 2024 11:04:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXHFDGMN2vi2s87NoTkpSoBdXO67cCw0z7PE4oEnYgBGO0sTDb6HvZM1qO3iZdOIxR5nkhmrLW5yh0IlPi6QUy1VVzemOdrr8r8SQy2
X-Received: by 2002:a05:620a:27d6:b0:79e:f9a4:e0f3 with SMTP id af79cd13be357-7a179fbc9c2mr62857685a.74.1721066651933;
        Mon, 15 Jul 2024 11:04:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721066651; cv=none;
        d=google.com; s=arc-20160816;
        b=uNnMRX3MkoVx/0Xi3f5dRFAgUZRwVjLVHkyStKAmsPqRx0EioJpaUn6iRouSAZp3Ol
         7elEd7LZIfBOV/O0Y058oVdVzKDS/k7iaKSv/3I5tN+keHHLIyYUiSNdjVVCBD+a1gSJ
         qiNSQkmN4rymDcBJ5wdNe9Ju0W5LJEBz/dmZwTBXS9SYhDK927yBooAfUJDuiv40/ilk
         81sVbSS3g4GhHo2+CrMwYpbgvEDzUp+vvSzWQoIDsxJjJ1kIjSMIsL0nkwJT2EDZFaKd
         v1jUE8Faj0M+4T9ecU4z71M6aL7PgXJ8dgjVyKRBzHDQ7xkA8ydgUfHvOC9ZABe6yvji
         c/0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=bwJWsH+13ysLEB+QmbuCpDLR6mcdG8SA2XOQ9X3ISLg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=nG7X8NYIbu5OwaXTYPnhkfHR/pHbnlok2Ps6cwXa8FPMu9i6YBqgHXuTOC+T/Nejij
         jdWPAVraqUgHmiq7Um/6onkDpF++BTyAJn9daD1uygzw8QdoyxmnhaYU7vIIxVZjT7qo
         ZPuPi/amXoxMP3r860nApNSZtZ4+1qkZyeJsuM5bpsK6JmkyM/AEnbary6UUKc3Eu0aS
         3pZ0q8W7YKeZkn6Qj61siYffe1zu2SLbSd8jHFDzw3BF69sjfkPMAyV4xhbCl2Nvz8/Z
         2ZSo0e2OmaWzHSH4jGwPxhQWVAoeVl149/rxE5tDOQrGMuLra8K1rGQn4AVa6xfLQOp3
         4pAQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=r.d.t.prater@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b77e228si56739261cf.156.2024.07.15.11.04.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:04:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.219.175 as permitted sender) client-ip=209.85.219.175;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-159-cvocbew9Mru8SMsYAIoF2Q-1; Mon,
 15 Jul 2024 14:04:10 -0400
X-MC-Unique: cvocbew9Mru8SMsYAIoF2Q-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BF35219560A2
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:04:09 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AF2FB300018F; Mon, 15 Jul 2024 18:04:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ACA07300018D
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:04:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 475301956048
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:04:09 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-47-w58frnJ1MHaSnehn6T7haA-1; Mon, 15 Jul 2024 14:04:07 -0400
X-MC-Unique: w58frnJ1MHaSnehn6T7haA-1
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e05a4d6e443so2140950276.0
        for <blinux-list@redhat.com>; Mon, 15 Jul 2024 11:04:06 -0700 (PDT)
X-Received: by 2002:a05:6902:c04:b0:dff:2e22:a188 with SMTP id 3f1490d57ef6-e05d3acd37cmr527342276.1.1721066645934;
        Mon, 15 Jul 2024 11:04:05 -0700 (PDT)
Received: from [192.168.0.49] ([204.29.85.5])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e05a46fe2c4sm956874276.44.2024.07.15.11.04.05
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 11:04:05 -0700 (PDT)
Message-ID: <690a46b3-433e-4160-9114-1ae883bf381b@gmail.com>
Date: Mon, 15 Jul 2024 13:04:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: how many Linux machines do you run?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <a253881d-75a6-436a-9485-68b832938c81@gmx.it>
From: Devin Prater <r.d.t.prater@gmail.com>
In-Reply-To: <a253881d-75a6-436a-9485-68b832938c81@gmx.it>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: R.D.T.PRATER@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of r.d.t.prater@gmail.com designates 209.85.219.175 as permitted
 sender) smtp.mailfrom=r.d.t.prater@gmail.com
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

Well, I went from 0.1 to 2 in the matter of a few days. I say 0.1 
because a ChromeBook with Crostini (Linux container) kinda fits the 
bill, which is what I did for about 2 months while I didn't have a 
laptop. Both of my Linux machines are running fedora 40 (the Mate spin.)

My journey with Linux is long and arduous, filled with the highest joys, 
and the lowest woes. And all that dramatic stuff. Basically though, I've 
always had one issue or another with Linux, from not enough games, to 
Orca crashing every few minutes (that was about a year ago). But when I 
installed Fedora 40 this weekend, I used it all weekend with only a few 
Orca crashes due to crazy amounts of accessibility events making it stop 
responding.

Now, I'm not really a server person. I might could do it, but I've not 
used the Linux command line, nor its tools enough, especially more 
complex things like making groups, assigning permissions, all that. But 
I feel like everything is stable enough for me to start learning!

So, I have Linux on my work desktop, and my home laptop now, and have 
Windows on another laptop just in case. But so far, I've not needed it 
Windows is like 4 days.

On 7/15/24 12:47 PM, 'Kyle' via blinux-list@redhat.com wrote:
> I have one Linux desktop running Fedora-MATE-Compiz 40. I also have a
> Raspberry Pi 400 that runs Stormux. I configured that to be somewhat of
> a laptop for myself. I also have two VPS machines over in Amsterdam
> where I have run websites and yes, email. I cheated though. I use Hestia
> Control Panel to manage everything, which makes certificates, dkim,
> dmark, etc much much easier to handle. Back when Freenom was a thing, I
> ran my own personal email through my own server, and never had any
> problems sending mail to anyone or receiving it myself, even though I
> used a .ml domain that people like to say was used by spammers and
> scammers, though if I was a spammer or scammer, I would have bitten the
> bullet and just purchased a .com, as these are magical trust-rainbow
> unicorns. Yes, I was in fact able to set my reverse DNS PTR record with
> my VPS provider, and the rest was done through the panel, all except the
> dmark and spf records, which are just TXT records on the domain which I
> added at my DNS provider, which incidentally was different from my VPS
> provider. I also hosted my own websites there, which is quite a bit
> easier to do, but I found mail to be easy enough actually. The problem
> now is that Freenom looks like it's gone forever, and I haven't found a
> decent domain registry yet that won't either charge me an arm, a leg and
> my eye teeth, force me to dox myself to any script kiddie who knows
> about the system whois command or run what feels like a sscam on me. I
> feel that ICANN itself is a scam, as it's really the United States
> Department of Commerce disguised as a global non-profit that holds a
> monopoly on every name accessible world-wide on the internet, but that's
> a discussion for another day and time. In any case, unfortunately, I now
> must also outsource my email to GMX, which is really just 1&1. I don't
> do any tricks with relays, and for some reason I could never get Mutt
> working the way I needed, so because 1&1 still allows me to enable
> secure IMAP on my GMX account, I am able to get my email on Thunderbird
> on my Linux machines and FairEmail on my Android devices. One day I hope
> to be able to run my own email again, as I trust the security of a mail
> server I control over a large corporation any day of the week, and email
> really is easier to self-host in a secure way than it seems on the
> surface, and best of all, everything needed is free open source
> software. But my budget just isn't big enough these days to be able to
> buy server space and the names I would need to bring all my stuff,
> including self-hosted more secure than Google ever dreamed of email,
> back online.
> 
> ~Kyle
> 
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
Devin Prater

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

