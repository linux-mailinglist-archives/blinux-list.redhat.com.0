Return-Path: <blinux-list+bncBCVPTHE7K4IMBG5VVIDBUBFRLVOAK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2967E7392
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 22:23:13 +0100 (CET)
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-40837aa4a58sf9828565e9.0
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 13:23:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699564993; x=1700169793;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCc7fhWgbuTI0alImzXeJx+TlPZ7Xp9mKCArCjekmR4=;
        b=DMV/1WNEqT5De9dnQoWeZUOc1Ds1rPZZDn+7BVkd6u+bxj+chy56PASIN0e2vkn7/B
         cvH+GOwrfwrfUVNNeU5PVOKEETzANtEMuAgiWyHY2+m7gWYqLvDnnsfjud8MBNkOCoIk
         jpfBqezoA3MYzV1gBdzqzMPZx/HH+hhV0LLBEEOWVqd6Z5Aqt77JVgPvdwwsJPT1H7CJ
         ECN5Xbf9caaxfCy5LZmjwmQmcRu4FJiZvEXJ9df/sJ8DvKZ56R9zVrIomK7EEtrV5Rpq
         XdHwjogjQUV2IRheur4zN7E+PG1gXUb/fvJpPxDnTTlY+AmivicsePPkava6DNcDCVVz
         x5TQ==
X-Gm-Message-State: AOJu0Yw3H0OvWg66NB0jD32GVsKVGRV9xfUP2Z01jy/aU91gj5palM3q
	aTF4htm205Ql8eIF/gcrbC0/kw==
X-Google-Smtp-Source: AGHT+IFt5D18CeAr4SGvU1kL94n7CjCeSMybtOjcPBxdNwwVWidVxIIIbcSWorxqW+ljAk/VW6KYOg==
X-Received: by 2002:a05:600c:4687:b0:401:c8b9:4b86 with SMTP id p7-20020a05600c468700b00401c8b94b86mr594966wmo.9.1699564993289;
        Thu, 09 Nov 2023 13:23:13 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:600c:601b:b0:409:5426:9d6a with SMTP id
 az27-20020a05600c601b00b0040954269d6als678336wmb.1.-pod-prod-00-eu; Thu, 09
 Nov 2023 13:23:11 -0800 (PST)
X-Received: by 2002:a05:600c:46ca:b0:408:369a:dad1 with SMTP id q10-20020a05600c46ca00b00408369adad1mr625658wmo.4.1699564991165;
        Thu, 09 Nov 2023 13:23:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699564991; cv=none;
        d=google.com; s=arc-20160816;
        b=BMxN8o3aCsBst95HMgBFP44kzGHc2rlbZlJsU9tSOq0FF0M8Ahmcshezm264J2EVq+
         5/ij3SnbwbLBZzSXObnhuiNxq0V1S/wDiBctuZDoXuWOiTjv9/z1X79yD/Yx4sJizaLh
         55Wm8r7TD5LLJ752Zen3VtJVqvnWqq56vmxcWbpjRwoypLJiqi1VksCN/BcIya6EhRp1
         YDoMbA38K2ytnXRyBU7PFYG65sNzVpfNEvPfWbt6TbJpup2DMZgPGSK+4M8Z1Q4HgFMH
         wK/J6UXXozu2b67FTro/vEb01bhDQIGknwyJj4VKrjg56b5uTFzBkCg2PttvJxC8utFq
         AVZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=LCc7fhWgbuTI0alImzXeJx+TlPZ7Xp9mKCArCjekmR4=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=Kgh+S+8Ai4XgfVHXfdHFAxqUCNiIJod9w4HWaV+LhZOeuJlqvB/m9mMPiPxjsMHSXe
         /VgTmkv1PzSd3yIh09vFpE5Rv7EKvL2DfhmvkaBgG5Bf5SIE5I7w4MD64TssigbNQQfx
         IkdpGBWO1XY6z9wfsmbWvdsrqUHLXkh0MQFMUkCLDP/wG/ewhy+c/Sf90scRXE0i7k8C
         G9viX0VLrYxp5ULQhMyXrt6NrTv/tCF8EgCqM+FxO6Efh8LoNeCq+9nCbpJnOOaWSc2G
         T3USL6H2w5aFb0RM5/pZWP4EnDWzm9MDS1vb5wtKdrcu/FU6Ndrga7yYfmf0NAZBkWwQ
         USZw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id fc7-20020a05600c524700b00401cd401408si2029825wmb.158.2023.11.09.13.23.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:23:10 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-696--rLnO1RSPD2a9-ZMfzKOQw-1; Thu, 09 Nov 2023 16:23:08 -0500
X-MC-Unique: -rLnO1RSPD2a9-ZMfzKOQw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73741185A781
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 21:23:08 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7042940C6EBB; Thu,  9 Nov 2023 21:23:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 689C740C6EB9
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:23:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43A0A85A58C
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:23:08 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-453-3WJP4D61Meao37xhM5XTtg-1; Thu,
 09 Nov 2023 16:23:05 -0500
X-MC-Unique: 3WJP4D61Meao37xhM5XTtg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id BD72744FC6;
	Thu,  9 Nov 2023 16:23:04 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 8B878100B35; Thu,  9 Nov 2023 16:23:04 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 89F491001A6;
	Thu,  9 Nov 2023 16:23:04 -0500 (EST)
Date: Thu, 9 Nov 2023 16:23:04 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: insuring alpine's setup menu speaks?
In-Reply-To: <Pine.LNX.4.64.2311091602230.3313038@users.shellworld.net>
Message-ID: <Pine.LNX.4.64.2311091618110.3313276@users.shellworld.net>
References: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net>
 <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com>
 <Pine.LNX.4.64.2311091602230.3313038@users.shellworld.net>
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

Hi once more.
Back to the speech factor.
There are only three cursor related options in the config menu.
One is control k cuts from cursor.
one is force arrow cursor
and last is show cursor.
I did try the force arrow cursor, did not address what I seek.
as an example, you are on  a feature, wishing that current line to be 
spoken.  when performing the associated keystroke for your screen reading 
program of choice though you get silence.
That is what I wish to correct, that alpine speaks where my  current line, 
i. e. where my cursor key is sitting.
does that help?
Kare



