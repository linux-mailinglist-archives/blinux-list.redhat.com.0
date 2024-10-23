Return-Path: <blinux-list+bncBDYPVTOXSQEBB5ON4O4AMGQE22FRFCI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 595219AC9AA
	for <lists+blinux-list@lfdr.de>; Wed, 23 Oct 2024 14:07:19 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-460e1786265sf55426801cf.2
        for <lists+blinux-list@lfdr.de>; Wed, 23 Oct 2024 05:07:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1729685238; cv=pass;
        d=google.com; s=arc-20240605;
        b=PjoR0WRx+tn4IJ8cWGMqvp4OZp3qUVC5ugPb9zw8NsEFtwJ4GPWgmDN/R3H+MAxdyZ
         of3lhR2RpysuHqKbbcTGU6LT4nQmPIoj/BSnhN5g35wMtpzmo88KXa5mBBujHDKxrMui
         0GfO2dnIX9f+CC8+SjHcs10VbATvZpjsTYuSfn4C5I0EJsLG2kZLYvOcPOXmLmT/wo8e
         fbzIgfZwVahhUMUst7rDkb2ZqS+kY3iPgLqrsMIbXafR6smas+SEc+kkKUwpuJFd0gDx
         MSKwj79ChxdrGzyjfuzHZDxYbH2UWkb4V5YK9VI2Nqi0cLU98UMiPw9Wa/Jrfd8SLkGP
         c6+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=P+nzpY4F7XmQEUohJGeU4bLbw1CLE48z/p/P9Lqtjpk=;
        fh=kSJ78mwDUOdCvfa01CvSD9v3txELUKf6ubSF/bLMjps=;
        b=l23S6Wt7yhtzporNX2zNG1T057eRC7LmKrkfLjVy4IcBi9ydQnEIsB8lPXQy3MYxsc
         RjGQp8b5ihiwDQVN40/zcWAmjtH1YY6Xe3xeweFHadUctoLJAWeiCJtDwW/LZSV/1Qem
         yZC4+mP7VyBDs9G86NGprqR+fwa1MS4FeyxI2Rc+uj6coh/PIwnj0loo2E/d3FtPGK01
         WCjArH0GLvTPsylpIKkz/yLYt+75tzyk78pR/LYC57eg5uVWzgAiJGiFfwLxbMYqzFvA
         GDu9d3mzBNura4xWsUaT5FXK65BxlFj6g96P50INe94j0W/iTMheyb4A42nV+Rgu925p
         PELg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729685238; x=1730290038;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P+nzpY4F7XmQEUohJGeU4bLbw1CLE48z/p/P9Lqtjpk=;
        b=dSmFqkxd4H/cNyywQzYqmXkhg1baCipbakMuTL/uz6F8j8Se/N3xG1QizjViT/vxdV
         F9z8vTfp4x0Qex6awrcs5+4VFmaj3EFNttarsgQJTgezSTn92Hsri2ZUPv3hJSnJr/6m
         6Z4e7keQLT+S+LUdw5MMnnvskHzteo98ULQ/KJ1veb0CEBitD6Q+Dle+VcsWp3EgMT0k
         wuxwx34NBRzzHFmIcXy/rK379ZNIpB47rU1kq48oWI5jQkQDP/YOzlkpaXBSCFulW0Zr
         pZgm+D3Ac1X/FkjO6f8+VxHxcSW9cK64meZq9e44uK7rIjZB9T50oc8jTjse8pQyZ8w8
         Or4g==
X-Forwarded-Encrypted: i=2; AJvYcCXd7oe3Vq9KafKLNg2CFDyQ6ux7J7G/wwQZW6d3bNWwfMzmo0Qd3BBBkMVTfeui5nERINRCSw==@lfdr.de
X-Gm-Message-State: AOJu0YxcXD1qX6eLdA6YyrPlh6gyU4vhLhdEa568Al2KLwkF+tn7dJn1
	s2dZdfg4Mimtkdd1W5Gr/acmKhnadKn5y4h9edT3Dj9EqstCGwe28GBTKqI64aw=
X-Google-Smtp-Source: AGHT+IHNbatPRW5QCewlZElQAyY6/xd/Y+FcEb8ayH1+P+GGta5ZyX4nORAid3VV0Kze8kt3U7Ygbw==
X-Received: by 2002:a05:622a:2cf:b0:458:3a65:1d0d with SMTP id d75a77b69052e-461145a5964mr30959831cf.6.1729685238134;
        Wed, 23 Oct 2024 05:07:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a48:0:b0:45f:597:8c3d with SMTP id d75a77b69052e-4609b46e48als48604981cf.0.-pod-prod-07-us;
 Wed, 23 Oct 2024 05:07:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX7Pe7w931jJIWRGPFBeD/lKq5vOJKx77UbKbcR5PNAHoIbzkg7BoInGnQ/50Sm3AjfLW55oTZvU0EAWg==@gapps.redhat.com
X-Received: by 2002:a05:620a:1995:b0:7b1:7d5c:8f9a with SMTP id af79cd13be357-7b17e57bb54mr255687385a.28.1729685237035;
        Wed, 23 Oct 2024 05:07:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1729685237; cv=none;
        d=google.com; s=arc-20240605;
        b=QLYVaUXiOxXGx1y8/GuUBzrNiGusIIrsHcHsR7195LokRp3JVssileCg1JbmXNL7/9
         Cp/MBkYtZG4NLcN9rIFbZP+RGG/Fb+JPfGf/YvKIcWTU2L4bLn0tyonEVZ7GsXaAZR7G
         +ex+1Xv34uk1H9IzMyBu/1kUkZAV+RqsaqE2cy7TY1bUwVusdlKwQ79olhEHzhYyrqhi
         DeWWSobWALb+tjPhjhW2kqcN0UzWOqYfupe/f65PNh7bvXAcbvOenGqF3tMr3jRntqtd
         31KWkcIx1HgfG0IGbO83zbfKwCMGDlxv1U0ivgZXUDsehaLhGqM0xEHOti2z8BnwlZJF
         0oAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=xihdTzRfchOWcS4EsyzNMYRe5tP8CgWA6gB/OtR6hys=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=QoLCdZ8eRseBPewO5hqJmmExIFM5ZjlZOyqwmOh8gqahdD8lwIq0NB7H/MgOf483o3
         kA2eQD9cTJXkMmWggWj7OcN8ISehzriFrdVtr1lsc522MyFU0p18O+Voo9bVMULdL9YD
         ahPjRKR/uWhJfLCrpbGDjjMAaZUEyN9rJL2n3TNY4lNXIV399ObAj733EBzIObFYr+z4
         L9rF3c+gyCXb18HEVRDgz23miX0dMBVz3yeRzWjpJ5xxbQWO/gbLyWXvXQJ082S6EsTZ
         cV2Wbe3jk5T5Vis5CF7cYbeA80tYRHojqXCUgjaChua8q9wYh81NtfceaqrtbDpwGHNG
         ZXIg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b165ab2076si869839085a.697.2024.10.23.05.07.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 05:07:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-688-C7HSkSk1Pv2GJcor_bW8Ww-1; Wed,
 23 Oct 2024 08:07:15 -0400
X-MC-Unique: C7HSkSk1Pv2GJcor_bW8Ww-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D0B831955F45
	for <blinux-list@gapps.redhat.com>; Wed, 23 Oct 2024 12:07:14 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CB90D195607C; Wed, 23 Oct 2024 12:07:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C95001956089
	for <blinux-list@redhat.com>; Wed, 23 Oct 2024 12:07:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4514B1955F07
	for <blinux-list@redhat.com>; Wed, 23 Oct 2024 12:07:14 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-367-g3MlXE0cNN-HD3om5IcY6g-1; Wed,
 23 Oct 2024 08:07:12 -0400
X-MC-Unique: g3MlXE0cNN-HD3om5IcY6g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4XYSTW59JSz4bjr
	for <blinux-list@redhat.com>; Wed, 23 Oct 2024 08:07:11 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4XYSTW4T7Zzcbc; Wed, 23 Oct 2024 08:07:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4XYSTW4QxCzcbV
	for <blinux-list@redhat.com>; Wed, 23 Oct 2024 08:07:11 -0400 (EDT)
Date: Wed, 23 Oct 2024 08:07:11 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: Re: makedeb
In-Reply-To: <cc7b86ae-67c8-0c8f-1eac-c665f40d5283@panix.com>
Message-ID: <34427bed-0078-d5aa-4153-ca8e25107c28@panix.com>
References: <cc7b86ae-67c8-0c8f-1eac-c665f40d5283@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

I found the rest of the instructions for makedeb and the command lines are
bears!  In any case I figure to save them in a script and copy that script
somewhere so it doesn't get lost.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 23 Oct 2024, Jude DaShiell wrote:

> I'm trying to use makedeb to install pipe-viewer on a debian system.
> I got makedeb installed using the bash command on its site.
> What I don't know is what to do to get a PKGBUILD made for pipe-viewer and
> the man page isn't at all helpful in this respect.
> Any users of makedeb here who can help?
>
>
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

