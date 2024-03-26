Return-Path: <blinux-list+bncBDYPVTOXSQEBBLFCRWYAMGQEFJGQSVQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 9073188D18A
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:50:22 +0100 (CET)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-4d4388aa670sf1656219e0c.0
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:50:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711493421; cv=pass;
        d=google.com; s=arc-20160816;
        b=GyrdSDSRZGjIHKxz34WfF90YNLyRcdBOFKOt1IX/GHnWUh+T4oXrYm14EU5np9gBhC
         kw5jav6ps8w3fjjAu7FNzIAwLz6gNmddwfgAuYDuGx47wh/CG07ti4WZgC9nYabGP0uE
         viSHfYjbUXIZFIpJ2V+NwOQk/zch9cHRcFOvtyW2pQeYNWc0WtoHIbbdgiPCDEz4v21h
         INtLAe3qTXZLnlkl/gn5xhF5zt+dQi9hEOef5jSs9picDiJagi5rAdurG4TWpO52M6Ne
         ayJMS3iBx9kQfBJ5obTJij8t6pZxPLmBDegQ+v4hA43tO2BiUmV2apIVsnDhNhL/qm3i
         PzJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=HrdlbUIR6p/OZ/nT/wDvCD4iQ/rIf1XNpCbrt3eDA8Y=;
        fh=MinLS2gxqfgD7/QCtNTkdVHIatELYJGQxUhCynFVTMs=;
        b=Gn0JlV7inz5OraYFvcWmUJbqWHh8pKeXOPZDHEtTLScH3OZSXZ9Cu+XuHtlPlo7lft
         /kKbmIC1te2zaU/HOljbvcvKLCQSW0Y+sonI3L4RIFjbFoM6BdyqZ//V8N4OsG/80Ew2
         85ta0HxmG+RIYRYExMl6ughNHberxlyGHoI2yHZosVlgjATT+M3p3pAKA/h07eQccyAR
         55RPlGVqw+ak9WkjeojaAMmRS9vo4HdsUGNVnjTRiI+TVmQ0AtT4i7VNyJVMK2fQ5yR2
         nOFxUvSSXXw+q7pE+GeyJNQnIz0E/gE867WPR2oh40zeQEaVQxngGV3rLjCzXnDcYKjO
         WYIQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711493421; x=1712098221;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HrdlbUIR6p/OZ/nT/wDvCD4iQ/rIf1XNpCbrt3eDA8Y=;
        b=BrZ7Cq9kbM4MVDxspCVgY+jtJH1MQw7doCVeyZH6ZxavKQvbqUgvfwZY9q6wCbJwgT
         RbKQC2IAQ2B+XHjOXTSQTPvytnl2LxnFtHAnrilx07/7Bq+IXD1LePwg9qkmbE9D0fNV
         lFibzleQysmhYFChawvBOdRCSAm0C2maksr7NJlsPm26ZeCWUoTvQRSGIAHpMPRHtPW3
         9od3toEG27ggFgtsTb+3R5vs079Mrw82Nxwfa8F3EwI8GujTn2C7nr6LYVvK4AJm3dWq
         51YIyxfUa4WorLBG5rtXii4OIAlCKEN+lsBGPGyA9QD5SqRVKELye+7rsBdS5B0ZDElb
         PicQ==
X-Forwarded-Encrypted: i=2; AJvYcCW2BV7tszVybyIKqCIcPg0W4mD0cLKorThSZxL4Lm4J+YuEdCDChS8L9++xdCHr0CKQrOndlXMilHAyJsLiJYdgwT5LvLJfG3/v
X-Gm-Message-State: AOJu0YzN1O3W7U3xrwOCEvJ3PdIhXj9fGbdND7C/n1LsCg4/KCD7X02B
	D3AsFTVRmWXFl5LErr5iI8o2hs0/XmxZ8RzlsqUy+MbtLQxh4XiK07bQ7830r7c=
X-Google-Smtp-Source: AGHT+IFhzvLKEUL+jsOWTuKOlZZhYGQu4RorgiaZbtXi1F9q8H9GGdWnEVcM/JBUjW60GfKE+wD2VQ==
X-Received: by 2002:a05:6122:2026:b0:4d8:72fa:6723 with SMTP id l38-20020a056122202600b004d872fa6723mr8711457vkd.15.1711493420694;
        Tue, 26 Mar 2024 15:50:20 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ceb:0:b0:690:c950:c414 with SMTP id iv11-20020ad45ceb000000b00690c950c414ls8718612qvb.2.-pod-prod-09-us;
 Tue, 26 Mar 2024 15:50:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWGEkWI7Iljax642pJEZVyWw9D08aO6wdtdbDg0lfk4nv/cqduVIA0AyjIOCoNrWFk4E9drREMxYjRDxDu8HfxLK9sZIdqT/doL8lZ6
X-Received: by 2002:a67:bd0c:0:b0:476:f819:8da3 with SMTP id y12-20020a67bd0c000000b00476f8198da3mr6123249vsq.14.1711493419982;
        Tue, 26 Mar 2024 15:50:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711493419; cv=none;
        d=google.com; s=arc-20160816;
        b=D2UXgyhy1sPZCIVmRvQdRDVr5yNw11RLDQGryuf6ECgitPNg1OgUdkTS30OGFAQ2la
         rAx4GBz7LGjjhl4yYZJUJPDICmWi8S850gsafMc+VtcIQxlSoDV0WhOpfto93Ra+Zy5l
         M2sLEeUqZyhDXAU1w5VdFmKXs19Vs/J+4KktrUycNc2Gr5N1YZ+tAwRBsQ8P5w2zjYND
         Y6NUdPSTdAMNTy40aG9blMKde99RHLWFqMUZzVM2xCErrSNzJYhPLE2CK9z6rHZk6k7Y
         6sowfJHvNtpYkuaBR1ihnuN453WeOFNZ3rvgBgH+i01sSI688ifqrw+fSwdd8qwpLi3T
         Z1Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=kE9QOAVsw7rIX5Zy4VLrkjPaC2h+SvgZhfAVH3NxKVg=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=uybYa3Pa8ShbXTIwZbsEKZVnLlRL2Jb5HhNayKBeCiGCxjetfYnk5aD5i5Et9SCmfX
         6YUr3iYVlF9Y6uoGCX5lSh8ddjIkkZIcFe8mRZWmxVj48WSBF2eqZjhfEF1k6FqoHxOS
         3EKNCPgLIsTfPZoU2w8wA3W6zHmQon1AIRdxTCjMl/XMXTums305QMTitldYrfxS3qvx
         cNrdxerWGRmAIt0CSoC7e72aVQAe1nvM/6dKHtCowWPgblexUrvSoWqksw3sujA2EPiS
         1YdcfzQmIuxVj1h/fOXsQFV8WOx+/J/DzyxWwPl/KCumg1cgw0tC3wEgd6mYFXQUvc6w
         pNzA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id z4-20020ae9e604000000b00789e1be95fesi8443000qkf.670.2024.03.26.15.50.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:50:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-203-_vcV46gYOcWmHDnT3A8qXQ-1; Tue,
 26 Mar 2024 18:50:18 -0400
X-MC-Unique: _vcV46gYOcWmHDnT3A8qXQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D4A83C0CEEE
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:50:18 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5A813492BDD; Tue, 26 Mar 2024 22:50:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 213C2492BD4
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:50:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C2C9F185A781
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:50:17 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-132-4AsGNj7dNgyPThoQZdSeGA-1; Tue,
 26 Mar 2024 18:49:25 -0400
X-MC-Unique: 4AsGNj7dNgyPThoQZdSeGA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V44jw1ykZz4PTk;
	Tue, 26 Mar 2024 18:49:24 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V44jw1LMxzcbc; Tue, 26 Mar 2024 18:49:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V44jw18RzzcbC;
	Tue, 26 Mar 2024 18:49:24 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:49:24 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <Pine.LNX.4.64.2403261845530.1398748@users.shellworld.net>
Message-ID: <d0ac31eb-92de-eebd-a89f-86d499e76535@panix.com>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net> <e951fe77-674d-45f2-a6e8-556493c84318@panix.com> <Pine.LNX.4.64.2403261845530.1398748@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
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

Unfortunately tuir once installed does not work I checked it and the
program crashes every time.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 26 Mar 2024, Karen Lewellen wrote:

> Thanks Jude,
> Sure that will be informative.
>
>
>
> On Tue, 26 Mar 2024, Jude DaShiell wrote:
>
> > https://opensource.com/article/20/1/open-source-reddit-client
> >
> >
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> >
> > On Mon, 25 Mar 2024, Karen Lewellen wrote:
> >
> >> Hi All,
> >> previously, reddit worked well,  at least for reading posts, in both lynx
> >> the
> >> cat and links the chain.
> >> Now, even elinks produces a blocked error message, my guess is that the
> >> reddit
> >> community is not aware of Linux and these tools for access.Wondered though
> >> if
> >> another tool already exists that might be a part of a shell infrastructure?
> >> With appreciation,
> >> Karen
> >>
> >>
> >>
> >
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

