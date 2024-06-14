Return-Path: <blinux-list+bncBDYPVTOXSQEBBCEVWKZQMGQEEIXWVIY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E14909232
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:23:07 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5ba793ceccasf2121988eaf.2
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:23:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718389386; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDSGlS8YlvERj1//Raxqjsk0SfMW8Xfj1KB5sJoUNqHu97zELz97sPG9zui674xBN8
         WDseYnD+lGGNBLM2gu8bWgc8l/A+dHnyuo19vHWd4rCFumRSkLGo+9jkaBx5od6TakA1
         M1lfTovcZjTxB48dA8/2qlAifglxZpAmg7j4tylxNo6vqeaGc4pWpY+IIercEREAwnkj
         p0GBqjTuc5acXVEpCy70SLAdk9M5jx6lwbwfEdPOrp8rpluYCyt56eVDAClfByk5P5QD
         Ho/OmmdatpKlknAJlLuWAe2mqRdxoJ1gNwHWq638Z7fczvjivs0ahO+/dC7rKF/0BjRu
         oSDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=c4B0xX4Iay/c9rDnBE7+ifn5hfQ6QJi/F9FbVF8vLss=;
        fh=3K32nT3IoF0Kq5g+pxbCiq1ZSFbzg4Zr5A8Ys6FhRfA=;
        b=R1tB6NgVA0g/9zaLq4h1MJPFQ1qkcFyMiAj/8oRccjFePzYuw/6j9sGcm5KMOK+tTg
         BfiXoVABIMDrxbdNngUwPCt1MqRRy8EAahlCMF3ooXUqo6Jf283fXAh+ulPpPso+uZvQ
         lqI/DqQz4SpCtdwNhBQl3BFuQllpqe7+CFnS+IqddrjSPntFtKBccULuD6yY+lXakrfV
         3HSK30PrAMT1+0IKbObG9uUn746iUQqIcpuKOXsDA6KDoA+9kEma6TW4ktp0XSU3YWaN
         lvpMZCcSGJcknDJLNtqmnDxolz0ZbltxPtgyS3j6q7qChfLMH5tVW+P0Y+M4PX5YP1eP
         OyoQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718389386; x=1718994186;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c4B0xX4Iay/c9rDnBE7+ifn5hfQ6QJi/F9FbVF8vLss=;
        b=aABP2d8okAdozlIFW5Z1QE2Hk2fNw5OpQn5zC2gK5H2jvXpWcwXTmsaVWtFlR7LSu9
         rUWBQNJvcspa0UPs4vTXf4+s8T7yESt3j8WMJiBoHKRuSRj6HDhFv8ItlT6nx2W39oL/
         Y3CkV3P2jtcs7X5zsArUcJPy80viN2QdXbfk7yOu1RM+ghWxeaTWcQIc3xfJzXGydgbH
         iMAmkddL5IHmtIfRJXEgD4OkcLqXW1uSrsciD/LzNAqf+4++8GgFiXj/Y6pC1LC+i7D2
         STWYjQJaOo/vvTPmJXtjyBkBUT3jbfv2iAaB7hq4Kn7akxAvF58nP99J7B6TBcsWfPs1
         a1Pg==
X-Forwarded-Encrypted: i=2; AJvYcCXvDY3lNWkQXVBVVa5jY/rw4gM/clnmPG82vm7NQDVgz513vvJX9EpirciNcfSh3SjA8+xxP3Dmp39rO7NEz1NJJDUBx5Frh/oT
X-Gm-Message-State: AOJu0Yw4sEN1Y0zGmnUirbCRWw7qMUNaqQMekovfDSUb8Hpgjf6bF/M6
	/GrAvrd3RLU1gjOgZXXgpyTtCo2lj440AC/nzZmeUHeZ889Fru+yXzCLPRtIpEA=
X-Google-Smtp-Source: AGHT+IFmB4ginkKdXeHH3BU3EMndqYDB1DiEqY0bVdSb3NflI3hEFHJeV7Ce9Jpl+V5dgc371tfZGw==
X-Received: by 2002:a05:6820:1ad4:b0:5bb:294a:cb62 with SMTP id 006d021491bc7-5bdadc6e103mr3992558eaf.4.1718389385266;
        Fri, 14 Jun 2024 11:23:05 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:907:0:b0:5aa:44f9:9b11 with SMTP id 006d021491bc7-5bcc3ce31d1ls2038735eaf.1.-pod-prod-05-us;
 Fri, 14 Jun 2024 11:23:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVpG8OnlQYRi/n9tXZr/VuvbZQ/PsxlnsOrGRXAPOpNfm8UJBzfIfHIQwWfwaoczNVsAywxXxOzydHODD+Ob3efy2w4uOrV0BCfcCET
X-Received: by 2002:a05:6808:180d:b0:3d2:2780:1c8f with SMTP id 5614622812f47-3d24e8a6f9fmr3600170b6e.4.1718389384185;
        Fri, 14 Jun 2024 11:23:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718389384; cv=none;
        d=google.com; s=arc-20160816;
        b=cTY2t4xf4MiCAub2rZ3cB9cFD0SUItxuw+X5dxKpzfLN2QFMms5YLSbGVi7lCd6+K1
         h7qB0v+tntoUNdccokpyalDlITGoQeRB1u5/2mUJLwxouyExU0QtAV2zjA/JzsEF4Yj/
         qEJXpdb/f7e0PFFvvCxvUvalr2ye9cRjp0LdFG/m60MqkG/16LMIXSA+ahDg/jBlrtxV
         aazXdRUfwGMa759Be1Zf9piJplNhmG1L6gE0+NXTaLFW6GQI6wRxiM0/bkA/u7Yagd7j
         kuD6+/uPR07m1l34q4xmufSE0ZjZ1a7C6rWua3xPm+Y5oDtuE2lraDq6xXZ/lj49Pb7M
         IzZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=C1pm303BQTkUr+qdP+QpQmV5kaVvrdq55Xv9a3a641Y=;
        fh=RcB08v2SS9qljmT773JX0JekmX98z7D03YxqzkDMfog=;
        b=i65FSUyGPlNswUKtzZh/1eCEUwy2mU0HlnjPMCY9XN/k/nle5tt1UR5Ga0HZm7XUZG
         Io/n9UmQrUceU1dT8VHS1ivvotIfBrwuEXa7XiuKVRUEKfYBOLxr9CBlacv6/LNxPc/c
         ZWtlZLKg0JqKld/xCO5otK6IgwPo7KEyFm+vIbX7YGBebzZjdwBcSJ3njkDISQYf4j5x
         jMaHMhcpr7mmhef9WAPMYtmrePxsGHOeNiaQr8+0vCvPP1LWsQC1lhiCMve60t1t058X
         D0ylqa6NIh2m3HjXCb8vnLId+3qPqgqGOwz0a+k1+6kR+qJaJWC/yjHs2kCy9IiichT9
         s4/A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-441ef3b9d8esi43292951cf.53.2024.06.14.11.23.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:23:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-296-TGmauMhFO9aOBTU0vp9E4w-1; Fri,
 14 Jun 2024 14:23:02 -0400
X-MC-Unique: TGmauMhFO9aOBTU0vp9E4w-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A07911956086
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:23:01 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 90E461955F2D; Fri, 14 Jun 2024 18:23:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8E5F719560BF
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:23:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1156C1956096
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:23:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-626-mxtg-lxzOZ2wR6Dlachyug-1; Fri,
 14 Jun 2024 14:22:58 -0400
X-MC-Unique: mxtg-lxzOZ2wR6Dlachyug-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W171Z4pglzpxh;
	Fri, 14 Jun 2024 14:22:58 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W171Z4L1Qzcbc; Fri, 14 Jun 2024 14:22:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W171Z4GpnzcbC;
	Fri, 14 Jun 2024 14:22:58 -0400 (EDT)
Date: Fri, 14 Jun 2024 14:22:58 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Kyle <kyle@gmx.it>, blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-Reply-To: <4079353b-e4d8-4284-a50e-64d46bcfa5ed@gmx.it>
Message-ID: <654eac5f-da84-18ec-6dc2-d080207e33cb@panix.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com> <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it> <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com> <4079353b-e4d8-4284-a50e-64d46bcfa5ed@gmx.it>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
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

I have no problem using ddgr with my aliases for that service.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 14 Jun 2024, 'Kyle' via blinux-list@redhat.com wrote:

> Oh I'm used to the page. I do see the reset button you see, though mine
> says Clear. It looks like you can use that to clear your search box, but
> I usually just delete my text out of it manually. The default button
> though is the search button, so if you press the enter key after putting
> in the text you want to search for, your results should appear. I do use
> Firefox and Brave with it though, so your mileage may vary. I
> specifically like the heading navigation, where every result has a
> heading of its own, but this doesn't work in text-based browsers
> unfortunately.
>
> ~Kyle
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

