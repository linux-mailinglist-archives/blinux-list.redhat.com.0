Return-Path: <blinux-list+bncBDYPVTOXSQEBBT4DZ2VQMGQE2E324OI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id D719E80AE48
	for <lists+blinux-list@lfdr.de>; Fri,  8 Dec 2023 21:51:28 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-425965b3da4sf28004541cf.1
        for <lists+blinux-list@lfdr.de>; Fri, 08 Dec 2023 12:51:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702068687; cv=pass;
        d=google.com; s=arc-20160816;
        b=pAcl/aEHrVfrKcRTlHJE9RYHVfvg7yGk+9xdJWrnVRWKEorMCZj9vo7uBYn6iKsb9d
         y+f8Jj8EW6fDxTPrJLfb5Sy7iqRqdWsorI4J2jNpckraTOOSYgEw3+jYUU1kQDYhA9C/
         AF0dQ5uNW1lizvz6waEYojkEnJOkG2XuisACVjsbDspuTqmbupPxOA2sayGXPSLvZzf8
         hUiZqVongX8QuIP5+d0BCvql4MYfVLGVioV822ZWtxA0Vb0OG/bMFwjFl4S98qunOqKW
         lBnkDQCO6VqSYcfoL00xMEaMwskyng+kQkFRYnBhbrBfJ1oMhASXy7n+ig6IzmBW8yFh
         UwYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=ZQPJmmWk7Uf2htzLsBkio3CrZNy82jEzcncJHgIv0YU=;
        fh=2xobSpFZD2UITNPAxvbIz4RZZDEhMtbEKl2fI+2jMsQ=;
        b=iroMykWmkBfCrQ4uRW6H8VCzrAlhXJIxlPX2vA+xrh/Bju+y4lmuYT6UmRmdw87JU4
         f6PQDnhHLkxcnYIhfou6yH14hPZPqHrIUrDEzPWSjJ7pq31QYfprE209/VZEJlqteXZW
         1AuYwpUopaqwpQEMAsR0G4X4zkap1iO9RqS8JtRfYr5jh0mSNu5B22XW1+Wp+lCyumZl
         JNB3HdCTycunNGNDnMhiTSTRGIO5KWOCpS4lH6QVWAVU6fD0noE6nGjtPTL+2SnKjU9T
         l8l+Ux3caCwTEWwh7HbkfY3VDSvuM0fN1Nt7nShT37uLMGn4s11sJ1hJVoBP5Zh0vp+1
         kH7w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702068687; x=1702673487;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZQPJmmWk7Uf2htzLsBkio3CrZNy82jEzcncJHgIv0YU=;
        b=acByT4RZTJlmrU+hOGPB445FSYlZLpzleu8tBoKXLpLGqRJKQGdqwefyczIrqmWnin
         YFp3KjRvxGieP1UzSZnyKyX2AxBRTcl0lAY0fbjSX62uMfB+ft28PuPuM+c2WFrHQwD1
         AhdcZwWkz+GY6KA1e6KyM7bCkPinArkeXz68nk5F9TTXLh4H3aVS0CxTIYGHbcJzHivU
         XlROD8g2zvFzVqjWFcCUsgnjk7DCkv1bjA3SU7YXO6VkSrE3ATZU8Qxx8MlEoIlfjqnj
         Ya8Q2H0RT/sLwMuOQDpV9R5eo+525mY3QNVbxAkPrf02YZ68EJ6qI7ZtUoLlmBfDRKBM
         UnBw==
X-Gm-Message-State: AOJu0YztF/qHMZEY5jQYWkTj9HyiEIsKHSSRarmVjx5Kvm57uYk/SBNx
	VWnQuvk9JWIhkquYwgwXXN2gaA==
X-Google-Smtp-Source: AGHT+IELD2tLDjotaOC6hFF8htlgxX2aJmFZcZ1zCdj5t5bK9nAfT8JgjhLnBfL2rlPz/xke7MMd1g==
X-Received: by 2002:a05:622a:1a93:b0:423:7060:3d5e with SMTP id s19-20020a05622a1a9300b0042370603d5emr1047057qtc.11.1702068687601;
        Fri, 08 Dec 2023 12:51:27 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:199a:b0:423:707e:9eb with SMTP id
 u26-20020a05622a199a00b00423707e09ebls1031547qtc.0.-pod-prod-00-us; Fri, 08
 Dec 2023 12:51:26 -0800 (PST)
X-Received: by 2002:a05:620a:4156:b0:77f:2f42:9b0a with SMTP id k22-20020a05620a415600b0077f2f429b0amr2128873qko.14.1702068686670;
        Fri, 08 Dec 2023 12:51:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702068686; cv=none;
        d=google.com; s=arc-20160816;
        b=iPR2iArD/yGiJn8VAWUegpl1fBMf53pjQwqy+UhUWH0Zd1pQjCOG9DE50XAQe69CFP
         N3765ZpTfTxTttRV5Vh4WfMQK1yav973vx++7pds4tIgGJa5vPOBuIKlvlR8es1XYaHq
         Iho9gtIwtkq29KAqHQUrpdRhRh3SoUQGACBTmOfSmpT4cED1RsVagLUBkxx7xqenHgcZ
         kCuUoc8GcxBTntMIJ7SnnPN7QAh+ZZonPMh4Y67ssTRgD34NaIsy8xeqRcw4eVihRDoC
         rXO0+qdQxQ0S/V29uNOMUCmTHywIE+6kQeIdnCUIQ9tkPs3/AcnFYIVvHSBnnR1su/Fx
         M6Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=KLUszFB8pJ2JnMfLHz2kPVkZmUCX7zFJxW5qAU1l9DY=;
        fh=2xobSpFZD2UITNPAxvbIz4RZZDEhMtbEKl2fI+2jMsQ=;
        b=hyGibi4iMq/l32a+qNJJkrgECb4ChG83ukbhwrm8ipYT7mrnoCYp3HQzHh9a+6zU/R
         y67wR2MRCiGp7QK3NhYYvfKouERFDZT/2vSUdh5qg0tlC8jgSSlhK01R4W8J4ixNx/LK
         EJtG8U6Yhm58E+s3kmpt098km8a4Gv7v8ulEqGJAE5tJ71NAFiR1jwyFp0MMelQjHmhw
         6sjqIaLvXAdJsG2b779NI228ADajSWPPR2CekGjQIal7VG/ACJqRv+0oXBZwDQjkdmDn
         NM8myhIYmMgaqyF2s5WxChFCelvNVU7U3ApR580aW+Gvm1FLgAwPoNFtZ+62J0Excz7v
         w4XA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id h4-20020a05620a284400b0076f280e295fsi2937090qkp.429.2023.12.08.12.51.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 12:51:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-259-sBWd4XC_MXaibUD1MPFilQ-1; Fri, 08 Dec 2023 15:51:24 -0500
X-MC-Unique: sBWd4XC_MXaibUD1MPFilQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78393185A780
	for <blinux-list@gapps.redhat.com>; Fri,  8 Dec 2023 20:51:24 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 758391C060B1; Fri,  8 Dec 2023 20:51:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DE7A1C060AF
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 20:51:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5259B830F2F
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 20:51:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-154-3awkdbQkPDef9rsGWhbGsw-1; Fri,
 08 Dec 2023 15:51:22 -0500
X-MC-Unique: 3awkdbQkPDef9rsGWhbGsw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sn3G22d3czNjm;
	Fri,  8 Dec 2023 15:51:22 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sn3G22TKDzcbf; Fri,  8 Dec 2023 15:51:22 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sn3G22SGpzcbd;
	Fri,  8 Dec 2023 15:51:22 -0500 (EST)
Date: Fri, 8 Dec 2023 15:51:22 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>, 
    Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <a215dfab-bf37-3fdf-cd50-f41a70b8803d@hubert-humphrey.com>
Message-ID: <182c0c33-d0e9-4a26-274b-6aa3285c5ef8@panix.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net> <c9277002-d894-203e-511b-952f27c98048@panix.com> <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net> <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com> <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net> <a215dfab-bf37-3fdf-cd50-f41a70b8803d@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
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

tab moves to the next frame.  For the next link use downarrow.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 8 Dec 2023, Chime Hart wrote:

> Well, Karen, Jude, and All, since then I experimented with a site, which L Y N
> X gave me a blank page after a 308 error, e L I N K S had "save display
> cancel" but the winner was L I N K S where
> www.newsnationnow.com
> displays correctly. Also, some of us were wanting a tab option in L I N K S.
> Well, I don't know what to do but in its man-page, makes a reference about TAB
> having to with frames. Anyway, I purged E L I N K S as it seems useless.
> Chime
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

