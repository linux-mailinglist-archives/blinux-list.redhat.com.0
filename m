Return-Path: <blinux-list+bncBCVPTHE7K4IIVGFDVMDBUBHQKNCDY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com [209.85.166.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 809017FF8D6
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 18:53:16 +0100 (CET)
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-35d37340e5bsf13455ab.0
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 09:53:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701366795; x=1701971595;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OckeIPEMbHdbbU4DEXGSxtphhHOi0PGFsP4gbc1HugE=;
        b=Ci/elRAjGRki5R/L/bvsKyEmn1LwiTFxeBeuxuBsXVb+ALqGmkcl0bwshL5Y8b8so8
         H5sN8lAy2C6apepuEB70EEaiG8U0p7PABXtofb67Ye7N5jlUxHVZ8Fxgmn4WpaGhDMwL
         b36I0DDrP0fymRns3idMD0epvE4e1z9j3wQE99GKFuD6VBdlUdAHwlgIL9sObZzQ4wce
         uAL2pgXfLvhT/r/KV00Dw7MiMOiq7lJ/TFLmZx4X5RogRCmwzyJEiw081b8LUefLFiAR
         wPavw1OLj1AjyFqwMWF74rwDXk92tzwPEx6530mps6KAo/OuU4toqqrTzK30M0eN/x/I
         NDvw==
X-Gm-Message-State: AOJu0YygzlbeWUcp8wAE1lp++n6WM/uj1t2S76Yz9iREwOgXTXHJQXWp
	58rwQEduIc3CItVFJhmvsdBiSQ==
X-Google-Smtp-Source: AGHT+IHfxixIXlKR6jQ/Q7CRy31zoWWMbAkxGMMnj/+UImxeFKzu9MgBEKusH+LwBRjt5zkIGbKw0Q==
X-Received: by 2002:a05:6e02:1a27:b0:35c:fe21:13f0 with SMTP id g7-20020a056e021a2700b0035cfe2113f0mr270040ile.16.1701366794766;
        Thu, 30 Nov 2023 09:53:14 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:58a:b0:1f9:e977:4baa with SMTP id
 u10-20020a056871058a00b001f9e9774baals1418802oan.0.-pod-prod-01-us; Thu, 30
 Nov 2023 09:53:14 -0800 (PST)
X-Received: by 2002:a05:6358:cf18:b0:170:5eb:522d with SMTP id iy24-20020a056358cf1800b0017005eb522dmr306902rwb.0.1701366794065;
        Thu, 30 Nov 2023 09:53:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701366794; cv=none;
        d=google.com; s=arc-20160816;
        b=AsOIG45IY6a/qMS1od513cYLRCu+ffizC54+LLn5MIT52DbJpD3OZHArpYxhNsUEK6
         jh05rriPoMl0fB3RuwoyvQ29z0DYWFiZjYkvExeA7EN8ojGk03zXmAEhb9bIQnzH6Uiv
         20mWWqB8tlKGQCNUy0coFYacnKCsJk47zHUVYAqRjPHlz/sq/G1yTnc5DsR5Bc3J1XJC
         z/1BvYAsE5GeZb7lC3NlLGOHD+mUDqEnLH5Sm8HZ4lEzmbTsotvddfunAsHSvLo6PvUV
         BrqLfJJ8B1gq/F8xTCeGNIGq6CK3umSPN9BzDHwzPgqg/lZF1td/vK3pHStYUxM68Bg3
         wezQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=OckeIPEMbHdbbU4DEXGSxtphhHOi0PGFsP4gbc1HugE=;
        fh=RYxCEWsAO6agnaLpj5IwU5Vlud7DVx2rj4v22zmVdeA=;
        b=Z9y6gRur1xsBYecVASW42rwxVg9vRfUYXyunDBmLTEX1caCSkbAtOnSBSFBNheOp+o
         3n2NrlF1TZU9ckeJbt1uLaUxecvlR8Rap74hMUL1fpMCSsY/upAWv8CnilFApUmSBP4k
         YBJFZOYGx+R4qCbS3Bls+Vokj7ZfHWlO4w/mRmNbEQU0fYerowi2MjG7i7I/uNzkNoVv
         6siWhPhNAz6afoHhQOrEO1CJhLjYeKT5CP2f2JrusXchM8EtztUZmLNNAtakSWChZgeg
         Lrk3yHzPBxQLozsQAktW7kYrnoVlJtrs5oeYHwmw/Nc/8fWcy7kE5ISayCMJEnp74hSh
         Dz8w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id s9-20020a05620a080900b0077d63517467si1409250qks.773.2023.11.30.09.53.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 09:53:13 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-513-dV7lOVXvPeGCnC7QA0V8Wg-1; Thu,
 30 Nov 2023 12:53:12 -0500
X-MC-Unique: dV7lOVXvPeGCnC7QA0V8Wg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2DE0B2801659
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 17:53:12 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2A85940C6EBA; Thu, 30 Nov 2023 17:53:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2351940C6EB9
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:53:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05B16822486
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:53:12 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-520-LCLF9bf0OoCSbgZ1JDEy8A-1; Thu,
 30 Nov 2023 12:53:10 -0500
X-MC-Unique: LCLF9bf0OoCSbgZ1JDEy8A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 872A744FC7;
	Thu, 30 Nov 2023 12:53:09 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 5891A1001B6; Thu, 30 Nov 2023 12:53:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 58373100094;
	Thu, 30 Nov 2023 12:53:09 -0500 (EST)
Date: Thu, 30 Nov 2023 12:53:09 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: blinux-list@redhat.com
Subject: Re: links the chain stinks!
In-Reply-To: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com>
Message-ID: <Pine.LNX.4.64.2311301247480.3728928@users.shellworld.net>
References: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

I disagree with this blanket statement.
There is a Links the chain build for DOS that includes JavaScript.
last night I followed Tim's suggestions,
turned on links are   numbered, and it works fine.
Given  you are not personally contributing to the development of this 
browser, are you fully in the right to criticize its documentation?
after all, if the developer knew his tool was so widely used by various 
populations, and individuals with the skills in those populations helped 
out?  this browser could be quite remarkable.
Same for e-links.
I can, because I pushed for it, use e-links at paypal Canada to log into 
my paypal Canada account.
again, uniformed support by those with the skills for these developers?  a 
world of difference speaking personally.
Kare



On Thu, 30 Nov 2023, Jude DaShiell wrote:

> the -html-numbered-links option on a command line does not work no matter
> how it is entered.  The documentation is vaporware.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

