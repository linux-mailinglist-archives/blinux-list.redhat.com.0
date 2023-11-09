Return-Path: <blinux-list+bncBCVPTHE7K4IP7NFVVIDBUBAE5ISD2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7D17E744A
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 23:17:36 +0100 (CET)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-da0c4ab85e2sf894723276.2
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 14:17:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699568255; x=1700173055;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r7UJwKJycTba5D15OXqNj31l7TLM3bLomKwFyv5INgc=;
        b=etYKPMORynVml06oUq7AaliBr3S18iquRcrRp4y44bvpePY4i8otLfqWJsmVrkXF+X
         GYXZSmhPbvA3JTBzlhkQG7UzNNwwyK0pdLr3GZZmGMOnmzwH5oUgiia+1LxHybxhJz3k
         mmPSv0EGBbaeBFEjo8qLtq5gBiraI25BuNl9fADLDlxj2ZXW1ZHju/a6fd4JBRM/vaPP
         L0mBiTD9XSZbaN2xdAqprzguy6GJaG0PZrqyCCq7exdAsMKLKio1R0yV+JUGl0pa9gZu
         RX/f0cIPXDCqf/7RdE6FZC2QUTqvnZyCKq74aIPG+bAB1iclOa9rWeauUk6PmWVNLkPR
         9KqQ==
X-Gm-Message-State: AOJu0YyDUCSWjxn1H6Bnx38F8rRJzgevVke4cF1VxzHVCRKUzzMAm+3/
	f3L657Qj4jYznZnP0t+Y/UN/Vg==
X-Google-Smtp-Source: AGHT+IHOxQt55/RbdLhEGpBUBLsjGEuUJXeTNMqX7tRnvuZawmm9ayeKxOdbGTy49VE5XtilVaELCA==
X-Received: by 2002:a25:f808:0:b0:da0:46fa:cabe with SMTP id u8-20020a25f808000000b00da046facabemr5963220ybd.7.1699568255437;
        Thu, 09 Nov 2023 14:17:35 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a97:b0:41c:d096:577c with SMTP id
 s23-20020a05622a1a9700b0041cd096577cls1613086qtc.2.-pod-prod-07-us; Thu, 09
 Nov 2023 14:17:34 -0800 (PST)
X-Received: by 2002:a67:e0ca:0:b0:45d:b4d6:fa93 with SMTP id m10-20020a67e0ca000000b0045db4d6fa93mr5994838vsl.11.1699568254789;
        Thu, 09 Nov 2023 14:17:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699568254; cv=none;
        d=google.com; s=arc-20160816;
        b=Pd31hnJfZvgglGQ3vJwKPFxmRFNP9+spbPaUakGuiecnbKpeOv0EFGJmDTEbywamrn
         Vh3YnDkSmWgPtRpe94vlioUldY2RxjIuwEW+fj12/9VwCNqo9Ndcksv0X7FDzKaHHiWt
         yS0mQkrc7NDnQCGr0OLz+nGz3L8lb03TxCPJKANMu4JqsODJ2qOxE6cVGeI9kZt+T9ms
         CJNSr9NMqzN1nbRo3+HSzHFHdSKsUBReCwISOOwycr2Y4pMh8SuiKvkCRO6Rqazsr/Oi
         dsBeo2fykzOAFj99SPBVjNN5M4xiMFnVk8CdXxaTCAee8x7yH4dpHuHGcoydbhKdiWVb
         lMYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=r7UJwKJycTba5D15OXqNj31l7TLM3bLomKwFyv5INgc=;
        fh=qB+hyY+XQn4/TrirnkZVPN0bPRnABc2iz3k2OsGhHbg=;
        b=v+5ZGhHqu4YHNf9SofazNc6FKyJb9AickMIurQSmjbcL06T/qHGav3mDU1qDQe8V7f
         8G+jwwdlqHExOFupqEiBBZ+aRVjYlRaIiO2YQPE3mv71/ogObGvv4qmCVmdXITuWdukh
         80wBCM5mb2Y3BG77kHYmY71Vnh0k0fHNeo8bvm2bJbP8y9zpkehWepjV9OWdSIMpOtAz
         3FWwnbwXyTb/drVoQ/U/q2k3z0rZ0SG1v7gCG1WRbMHRJN6myEP1NE8aSwvH+JhfKp1K
         AcCmlAa1tm92BOswfVlqVpjss9QbEwlB7GahMzuFVmW6Qesj6e2yBwmpwFX7l35rNMG8
         xjiA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u11-20020ad4498b000000b0066cf9082811si3535262qvx.593.2023.11.09.14.17.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 14:17:34 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-55-cwUE5meJPkOOUOjLQbbcEw-1; Thu, 09 Nov 2023 17:17:33 -0500
X-MC-Unique: cwUE5meJPkOOUOjLQbbcEw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E91D9832D0E
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 22:17:32 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E5D192026D37; Thu,  9 Nov 2023 22:17:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE4402026D68
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 22:17:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A05FD185A783
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 22:17:32 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-581-PW7TKrMwM9yxghC_Od2pog-1; Thu,
 09 Nov 2023 17:17:28 -0500
X-MC-Unique: PW7TKrMwM9yxghC_Od2pog-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 38CBB44FC6;
	Thu,  9 Nov 2023 17:17:28 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id EE7AF100B35; Thu,  9 Nov 2023 17:17:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id EE0161001A6;
	Thu,  9 Nov 2023 17:17:27 -0500 (EST)
Date: Thu, 9 Nov 2023 17:17:27 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tom Masterson <kd7cyu@gmail.com>
cc: Chime Hart <chime@hubert-humphrey.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: insuring alpine's setup menu speaks?
In-Reply-To: <edfe7006-41f0-a034-4529-e269196556b1@gmail.com>
Message-ID: <Pine.LNX.4.64.2311091714290.3313835@users.shellworld.net>
References: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net>
 <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com>
 <Pine.LNX.4.64.2311091602230.3313038@users.shellworld.net>
 <Pine.LNX.4.64.2311091618110.3313276@users.shellworld.net>
 <edfe7006-41f0-a034-4529-e269196556b1@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

This is actually largely untrue.
Alpine itself has been expanded since Pine stopped development.
Further, since I am using both at services, not via individual builds of 
the  program, I do not have access to config files outside of settings.
The thing I can do is compare settings between my workspaces with 
dreamhost.
Its why I asked what settings to investigate.



On Thu, 9 Nov 2023, Tom Masterson wrote:

> Lpine uses the same settings as pine.  In fact myu alpine settings file is 
> called .pinerc so if you can a working pine settings file you can use it for 
> alpine.
>
> I can't help much with speech as I only use braille at the console but I use 
> alpine as my main email client.  If you would like I can send you a copy of 
> my .pinerc with personal information removed.
>
> Tom
>
>
> On Thu, 9 Nov 2023, Karen Lewellen wrote:
>
>>  Hi once more.
>>  Back to the speech factor.
>>  There are only three cursor related options in the config menu.
>>  One is control k cuts from cursor.
>>  one is force arrow cursor
>>  and last is show cursor.
>>  I did try the force arrow cursor, did not address what I seek.
>>  as an example, you are on  a feature, wishing that current line to be
>>  spoken. when performing the associated keystroke for your screen reading
>>  program of choice though you get silence.
>>  That is what I wish to correct, that alpine speaks where my  current line,
>>  i. e. where my cursor key is sitting.
>>  does that help?
>>  Kare
>> 
>> 
>> 
>> 
>
> -- 
> You received this message because you are subscribed to the Google Groups 
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

