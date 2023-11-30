Return-Path: <blinux-list+bncBCVPTHE7K4INRU5AVMDBUBACOSONY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9417FE913
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 07:21:13 +0100 (CET)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-5ca26c07848sf10565587b3.0
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 22:21:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701325272; x=1701930072;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=05jkRfr82B6SbANgmTVLmQHMJR7s7SqvSvQMVqmRS0M=;
        b=r26UV0fAOlaeZSVx2QsoFgJsM+N50EqgaM45akKcA/1k+acyh6ljZ6yVEcKyuA4iGY
         LcwE/Cc8NN9z2cmzqR9yf+rnoYGikVqN5w1yfOkZv2I/KxtFGuvBsGhmqoXRgHBuorBo
         ELA0f/B3V6FyoxvYvZUYnDla21rdPJ/hEqA/Gv2AA9hqj93la87cXcTLgJd67Ms7+M9J
         RmaHkuJ3nTb+9CkkS/rRtI8BX82pyeYnCtbkLUvZUTljY5D/DgLTO8ENOZef9DkhPu/b
         /ISIFtL6SsrhKcytoacqak8xv4UYbJGAIXC8QGvhEhkOt5+bP5zzyItCPRnntULBWH0n
         +wZw==
X-Gm-Message-State: AOJu0YyCkLlAB16xwU07tLivI3fP/JJpGutss7FjFPFs6wk4V30WLV7k
	G7KjGp+z3WbtUaoRlVVYB8xxzw==
X-Google-Smtp-Source: AGHT+IHthQuutdWd85eiI5lx0a0C1OnPf+N0PFrIdaPic5NWpTVM+xWTZqDKrU/2CCOVCV/IXzV8Qw==
X-Received: by 2002:a0d:d756:0:b0:5ca:b053:8eab with SMTP id z83-20020a0dd756000000b005cab0538eabmr17021951ywd.24.1701325272362;
        Wed, 29 Nov 2023 22:21:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4ea7:0:b0:658:9457:9887 with SMTP id ed7-20020ad44ea7000000b0065894579887ls31487qvb.1.-pod-prod-09-us;
 Wed, 29 Nov 2023 22:21:11 -0800 (PST)
X-Received: by 2002:a05:620a:4381:b0:77d:b121:984f with SMTP id a1-20020a05620a438100b0077db121984fmr12779704qkp.39.1701325271584;
        Wed, 29 Nov 2023 22:21:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701325271; cv=none;
        d=google.com; s=arc-20160816;
        b=gbKfkGzycyudJgUZK3GhZ9zv8wpPDhZfFvJ4GGMyn7d9mnS2Iitb2/AOiv6d+CXPW+
         4xyUqiov4f5A/q917F2TK43JnY/4K2XZ/lRYy4cMuZDE8lJ+hsTEqIGu0zv4aq8Mq5qz
         G3GpNet0VDA9eW0KSCOkjho3Zd2RMZFCKxgsy1hnFxO4inD4yjZ4IM88nSVzVJKuIGS2
         F3Lgm8O6sJhcRdYeDMcOCB+P3bPcWBsww3Kq38DLuZJFF7bM+AMg/oUrZPUXMq2enebM
         kAO+aii4ZOT3+jLAhjkCItoRT8QOSaxyBHXGgcnWSfbbgpRg6tro7lpVDwakeuiurC2T
         fX4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=05jkRfr82B6SbANgmTVLmQHMJR7s7SqvSvQMVqmRS0M=;
        fh=y/YbekFG22edERQKGxN65Pv5t1bJPotRFgGRwngzQYQ=;
        b=KLRpx5QUknmOeGnJFQDFFS72ZnDCaJy5Bhw31jVJ6ykNjPvz1bXyWKahByHgDzvJ7F
         /pyroNN6Ez8NNJ2GixXIEqjo9q6I7d/Y55529CYYpP+XGSFtrV4oM8gRXEx3tqnwt5Ik
         bqfsZvalSUR0/PKkSlXkPiZgVfYLqFBRV441pRVvyg82EIzDys6K5wHxV6Uf0DIPzIYL
         snuxP1AFXoIt8YL9ugWVqpRoqkLFS3LH0n4Yer+Lcg2d/tC5waA6DP2LvESb39BscUgU
         GSRvtrP9iJPzj9f/2UOtOs4NDJnXSCylE3I0bck6+32kVt9wsBKk3mjYqA8h8YhbNj9S
         w+AA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id h19-20020a05620a245300b0077d8686cdaesi429604qkn.307.2023.11.29.22.21.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 22:21:10 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-81-b5YN0cqANV2xDSTSanXviQ-1; Thu, 30 Nov 2023 01:21:08 -0500
X-MC-Unique: b5YN0cqANV2xDSTSanXviQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38EEE185A782
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 06:21:08 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 362A9492BFA; Thu, 30 Nov 2023 06:21:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F283492BFC
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 06:21:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC05E185A786
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 06:21:07 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-44-Zv-uyw6zPdGAMn9hDW1G8A-1; Thu,
 30 Nov 2023 01:21:05 -0500
X-MC-Unique: Zv-uyw6zPdGAMn9hDW1G8A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id DE72044FC7;
	Thu, 30 Nov 2023 01:21:03 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 9E8841001B6; Thu, 30 Nov 2023 01:21:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 9D352100095;
	Thu, 30 Nov 2023 01:21:03 -0500 (EST)
Date: Thu, 30 Nov 2023 01:21:03 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Jude DaShiell <jdashiel@panix.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <c7729650-4674-9b10-4a3e-d65a802bce17@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2311300120150.3722274@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
 <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
 <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com>
 <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net>
 <Pine.LNX.4.64.2311292351310.3721152@users.shellworld.net>
 <c7729650-4674-9b10-4a3e-d65a802bce17@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
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
after you open elinks and get go to url, hit enter to clear that.
then try escape.



On Wed, 29 Nov 2023, Chime Hart wrote:

> O, Karen, after typing
> elinks
> it says "go to url" but after that nothing worked. An escape gave no output
> Chime
>
>

