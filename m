Return-Path: <blinux-list+bncBCVPTHE7K4IPPDOOVMDBUBEZQ5ZNI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 4957E80AE9D
	for <lists+blinux-list@lfdr.de>; Fri,  8 Dec 2023 22:13:29 +0100 (CET)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6d99fce5d8asf680472a34.0
        for <lists+blinux-list@lfdr.de>; Fri, 08 Dec 2023 13:13:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702070008; x=1702674808;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tRZ3ELe8VvZExKmiqoGRu8ZInYSx/PGhRkR4CWUMR8=;
        b=cXZ82Sjn0OFQFgX1OdpV38Kp/Ei6PXu/JKPHCdjORcApC38ydL/IF21nzx8sps0qoG
         mVQ1skvN9U6znSliS0dGe8JHJSMqbhkBlhf2iBjRUbeCxJHQsKxnkK4i579Z+rMorHto
         jPxVBqqG+oRB7Jluy5KRZYlItP4gPgXOyH66TfmFNEz4akcRe4K1uAIMV++XeNlmkO+q
         jZqd9Bsfqj2ehgmZMvSrx4XvJM4vkd2nK+a9Q4Ye2jdL9msYzHLK9TpfHk9aQzQPPesZ
         eXO84QSTb1PmervR+jiEKVGtiwUWIVcG0szf1Y1sN1Mqktbu6ZcabayPqLJDIQ3q9Sgn
         mtxQ==
X-Gm-Message-State: AOJu0YxHH/T5WstKLPdb2myHv0xuF/NmKrN7TA0yyglQuwU7VaQUMWcJ
	18jq6IwY5G0pMANvumam84emgQ==
X-Google-Smtp-Source: AGHT+IEKCCm6ojF5yMrtcdpltL3ev25Zh4LoXI6DcXTS2t52nAMFeY8lGtcFTiaTRK4c22G3QUp0Tw==
X-Received: by 2002:a05:6830:913:b0:6d9:e454:4e92 with SMTP id v19-20020a056830091300b006d9e4544e92mr1485500ott.2.1702070007939;
        Fri, 08 Dec 2023 13:13:27 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:651:b0:41c:d096:577c with SMTP id
 a17-20020a05622a065100b0041cd096577cls2724412qtb.2.-pod-prod-07-us; Fri, 08
 Dec 2023 13:13:27 -0800 (PST)
X-Received: by 2002:a05:622a:1650:b0:423:71e2:b341 with SMTP id y16-20020a05622a165000b0042371e2b341mr884035qtj.49.1702070006976;
        Fri, 08 Dec 2023 13:13:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702070006; cv=none;
        d=google.com; s=arc-20160816;
        b=gh2pC5k2jVv/6+BUrodnpkz4UkIMxpeU6DwChXuQWJvBViG72wjVvFJCmG4DNAXq5q
         IzBts3DJrOIfjuWfiHGmPxuQarZ3DSdcIFAVjky9lt8N6floZ5HMYwn9PsuWInwOTP3c
         cZUQzJyKp+igaWFaVjSnXv4BaxuhURI/xGvy5ZYXORRPpyRls4ckAs/bjT5BdfuX2CvU
         xwaECcNocDzZXSFbZWFfjnU1iR+B7PQtNBTJ1XDNjDIJVnA/bJce6kFLutIzOPuGwK73
         Jpl/1VjWSmxsGW7AJDGj/Xj6fmC9+n9UQgUXrawvVe2EHOfH5d3r8zHk6D6hnEQ8HLQt
         oTQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=4tRZ3ELe8VvZExKmiqoGRu8ZInYSx/PGhRkR4CWUMR8=;
        fh=y/YbekFG22edERQKGxN65Pv5t1bJPotRFgGRwngzQYQ=;
        b=bWIT1XpH8ASIrRy3geqfCQrB3FPUVK8F+7ukedmRj7Bltbq6/AEgIX6N3jaJWPziTR
         Xpmz4wdngUMOmD93U8qJvnRMb63OzyIqAumugKwVrugPg3AomtetgxvT2mJ6S0wjzGVU
         efKjiDYJmZLHTWBcxi56xBbp86hiN8+dJq0oJ2KYpHZLHSQsKqDt+cI1En2fj7cKK3HH
         xyymH6GGpvtGC/COKNrUimKaJERSzcdZRqwlTlgQSTByJdh/EN64OE67wtpur8tKa3TS
         1zGHKV+Rh5TqxDxqxrPjoEUaBeh/XZM2uxluoWc4UpiLH3p8VIG8vYD2SKUF0IfbT0zj
         ijBg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id bb26-20020a05622a1b1a00b004254e20ee87si3287080qtb.264.2023.12.08.13.13.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 13:13:26 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-202-uOS9X4O7Ncqr6LpR6EcepQ-1; Fri,
 08 Dec 2023 16:13:25 -0500
X-MC-Unique: uOS9X4O7Ncqr6LpR6EcepQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A0262818741
	for <blinux-list@gapps.redhat.com>; Fri,  8 Dec 2023 21:13:25 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 46C2D111E404; Fri,  8 Dec 2023 21:13:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E591111F3C6
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 21:13:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1876B2818743
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 21:13:25 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-114-jVBCaixiMrukAWIY6yDHBQ-1; Fri,
 08 Dec 2023 16:13:23 -0500
X-MC-Unique: jVBCaixiMrukAWIY6yDHBQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id D3AFB40508;
	Fri,  8 Dec 2023 16:13:21 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 9DA22100D35; Fri,  8 Dec 2023 16:13:21 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 9D340100C01;
	Fri,  8 Dec 2023 16:13:21 -0500 (EST)
Date: Fri, 8 Dec 2023 16:13:21 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Jude DaShiell <jdashiel@panix.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <a215dfab-bf37-3fdf-cd50-f41a70b8803d@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2312081611180.3852064@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
 <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
 <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com>
 <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net>
 <a215dfab-bf37-3fdf-cd50-f41a70b8803d@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Chime,
Try searching for this phrase
news nation now?
In l y n x when I did the search I reached the page just fine.
an error 308 is a permanent redirect error, not tied to the browser. It 
means the desired page has moved.
Kare



On Fri, 8 Dec 2023, Chime Hart wrote:

> Well, Karen, Jude, and All, since then I experimented with a site, which L Y 
> N X gave me a blank page after a 308 error, e L I N K S had "save display 
> cancel" but the winner was L I N K S where
> www.newsnationnow.com
> displays correctly. Also, some of us were wanting a tab option in L I N K S. 
> Well, I don't know what to do but in its man-page, makes a reference about 
> TAB having to with frames. Anyway, I purged E L I N K S as it seems useless.
> Chime
>
> -- 
> You received this message because you are subscribed to the Google Groups 
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>

