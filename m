Return-Path: <blinux-list+bncBDYPVTOXSQEBBCV4Y62QMGQERPJT7UQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB7A948B3E
	for <lists+blinux-list@lfdr.de>; Tue,  6 Aug 2024 10:25:48 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b7a4c02488sf6868216d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 06 Aug 2024 01:25:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722932747; cv=pass;
        d=google.com; s=arc-20160816;
        b=hRnGJO5lvcCyxY575lzkFzOQ23nm1mODCKB0VKbrp/U78y9UT3H2JA6vPn6WFNr9Ma
         Ww678fdMioUvkjWrFZ40Aq5ObaKfdgailOS0oHfdv6w9bcposA+/3DET/+hVpLLLd6Xf
         ZguoLapYV7Hb871sqTW+FWK+w8tNb9iFNKHwHvfhWOqDmC50cMKDsYFXnlfTy3nlVcfh
         XRxb5vLQnxkbMAcb15yMDO/cSX9YihiGn4fz/KhEUAk/KwnfOy4lg+KquCF9Jx8ApsUS
         s0Mn+rVeWXIn1VBmHFf2rLz2M4XitsS5ANnJhEvKCdhha59s+2CTRcUgy3Wnt4WLDmYX
         vLbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=Vv5kDoooiSqKCfTgIDnajoD6vUyaVoxKuoTVM8PnMjk=;
        fh=0kRWZRDQ84echKop1D7lkGp6wFcQ8oy+FefYV99dQds=;
        b=ww90EfOvpW/oTu4HYDoIgJ9ozYUR5fo9kFmbRuVwcN6aLHdYT0IIPqenEd6UgZSJbj
         HEtR/uxycxb0O8hHrISxnnXcI/gM3pCJpEdZYh2BvXjtDgzAw58qVV0lJDK+uR4qptib
         cbObAF7SXSqvguTXTGJ7LochDqwfUsBW76fCNsQyEQgX9p0/bKbLm03Xw4TU9WZr0B1j
         tUJf+c3VDTzqCQpGINwmYN22xwLKdeYX6P/X/dYWi68mX5P+7vBWnl8p2vHDbcNEN9M7
         Qddnl9WztjDqwAIbuMsP3CuTysDFYbCgALn7IPYEAJX1i7R7bxcCY3Bp+/Qh9cm5l5s2
         vDAA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722932747; x=1723537547;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vv5kDoooiSqKCfTgIDnajoD6vUyaVoxKuoTVM8PnMjk=;
        b=jq1Y2MajH1NUGFn5HfYGwciu9Pf3OhQSQIuC08Fs0aCc8rlH4kGv4vHgXhGRn/n7DJ
         UQPlfAscsgJ9AuTkoHAqrj6lymO+3p5vio79mv5q8PS09XcYoqNP83FvQxtblz62xEIz
         lliLvUZLw5hnXTiUPR9R881LP79PKzZnuCkAP5eV/Dgpwg3/mSX1Hd3Erz1kIvNse9g9
         W6eN36irTzKX7j3/cpQ1dA0p1OimW6j5NepR7zwWxEVsIjB9Q4Dd6gIo+66dX9IBk50Y
         e5npNUdwGp39tHceRHkPPofzfKkFq6myaloVYGjfucyvq19qBVpebFSywaceKJs8iJX2
         sXNA==
X-Forwarded-Encrypted: i=2; AJvYcCWk6MXNb8o30qxDWh0s8jVFvp6JKARONGEccbRRhaRuo/jhwaoieeTr4ew29jlHxFmt7Ym6GI80vUd+tkMiB4xE2ymuETb4HKFz
X-Gm-Message-State: AOJu0YwUNncJqWwvD3JX45mLmhBoCtPIZiQC7NhUG2H+hDL7OPTOGVvi
	EgZKBRCf+yfD4rzjIDDGaGCHavudVU47zA/7KGYuh4GhCKfOW8StxlXev4SzHag=
X-Google-Smtp-Source: AGHT+IEMgespr+zEUzxdjWZsucY7vSkh0gvGwu+KzSflQAoR9mSeTVIXq9lD+tAwjU5oBCCghyEK7Q==
X-Received: by 2002:a05:6214:3907:b0:6b5:e8d3:6bf9 with SMTP id 6a1803df08f44-6bb9839253cmr205335536d6.28.1722932746798;
        Tue, 06 Aug 2024 01:25:46 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:cad:b0:6b0:91e6:b46d with SMTP id
 6a1803df08f44-6bba3408c2dls70190036d6.1.-pod-prod-02-us; Tue, 06 Aug 2024
 01:25:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW9ZKNDL9LhpMflZoXxq6e3UZVH+ZfVwg/eMEze9X5NvdGjApsRiRRcH7XTdoiOC/2WvlNjYQOEpjkjVGqS+fmIEElVIaWajvbm0TCk
X-Received: by 2002:a05:6214:5f0f:b0:6b7:ab98:b8b4 with SMTP id 6a1803df08f44-6bb98431103mr172490916d6.48.1722932745792;
        Tue, 06 Aug 2024 01:25:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722932745; cv=none;
        d=google.com; s=arc-20160816;
        b=S8lX1NxETH+nLYeYVl6oaOsQla0orJh30ODZCAF3M3pSoPTRNmH7Mw7g8Fj5k5Ezr5
         zDk1yjV7H8jV4d1ujF3WeKhk48Th3VAXF5+U16SKfKcwZTEn8MKbQtKWkMk5xuV6Jh6b
         IZN8vppV4mtd6YNRbax3VYKrHp1GlMw+IBDnnskf2wLcjDpnaVIcSA1WafahWzrKW588
         /v45YCApQDlbS5GcnaSyhIzpJb1J/mccI9MR4XtwJDxUIqXdAZ7FA1GbEJ/w85DxTdM3
         nL1f8yuUfxNona8/hb6Ljy/1EywoX9sxKknRYHNcO5ky6iRbL3Zfe9PSlrkrLfQLwQlR
         mhfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=nJTXCEKR/cNEtAzhPpzsfPvKaISpNP3bSf00NFEfXd4=;
        fh=h+avxhsP12CKrdN8dnqqKmbrfLptYfKr1D2HayTsjac=;
        b=YfyZWQpoOROTV9LOuSDLYVZ6kk2t6mNSIMRrO+XwawsIKtg6ztyn256hDzwS6qgJ/1
         S2t8ct7L4OcndubKL+mXsbM1oJdd06YG+PDsMOmHGrKxf1MjUYL/rrqf6RpZQKTsj+iy
         ekJoF/lUJApEiXkjgAaiVs6oXodu1wfFmKJwXU0Ca1g+6qcla6aKOfkomdRfyfswvvQG
         koWENqbaxFwB5rMG9NN31eLVE6dv4j9RiiIspj69jexDE0TO7biJwC36YOm1y0uu6qEq
         ZO/xN3Z0huRM2KGijxX7lZAulNkMw5heM8+rUsg8kZQpZqEJIkLO9WB5m6Gf/2r+2sIW
         wjxQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bb9c77107fsi111918626d6.92.2024.08.06.01.25.45
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 01:25:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-630-SQQmpnYLPNGOKkPcPMQUZw-1; Tue,
 06 Aug 2024 04:25:44 -0400
X-MC-Unique: SQQmpnYLPNGOKkPcPMQUZw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5072F1944B2D
	for <blinux-list@gapps.redhat.com>; Tue,  6 Aug 2024 08:25:43 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4C33D3000230; Tue,  6 Aug 2024 08:25:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49BE9300022B
	for <blinux-list@redhat.com>; Tue,  6 Aug 2024 08:25:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BD8521955D57
	for <blinux-list@redhat.com>; Tue,  6 Aug 2024 08:25:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-413-cxLeKpHROJ6G2mdZNRPvEg-1; Tue,
 06 Aug 2024 04:25:40 -0400
X-MC-Unique: cxLeKpHROJ6G2mdZNRPvEg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WdRFw00nHzy2q;
	Tue,  6 Aug 2024 04:25:39 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WdRFv6xB3zcbc; Tue,  6 Aug 2024 04:25:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WdRFv6ss2zcbV;
	Tue,  6 Aug 2024 04:25:39 -0400 (EDT)
Date: Tue, 6 Aug 2024 04:25:39 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
Subject: Re: Lios
In-Reply-To: <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
Message-ID: <b2694532-b822-9c5b-1bdf-1b4ee087ba23@panix.com>
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com> <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com> <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com> <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com> <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
 <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Time to call epson and ask some questions.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 5 Aug 2024, rodney jackson wrote:

> I am having issues with Lios, I am hoping someone can help me figure this out.
> Scanner I have: epson perfection v39 ii
> When trying to run Lios to scan documents
> Lios sees the scanner but I get the error below:
> Error I get:
> 	Scanner update list error Object has no attribute max_y
> I have tried this on Accessible Coconut and Linux mint as well as Debian
> Bookworm
> all other 3^rd    party scanning software on these machines have no issues
> with scanning with this scanner
> Any help will be greatly appreciated.
> Rodney
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

