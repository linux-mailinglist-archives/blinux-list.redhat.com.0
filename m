Return-Path: <blinux-list+bncBDYPVTOXSQEBBSG24CYAMGQEPVVHBAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 9559C8A1E68
	for <lists+blinux-list@lfdr.de>; Thu, 11 Apr 2024 20:34:50 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-434ea70629fsf735541cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 11 Apr 2024 11:34:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712860489; cv=pass;
        d=google.com; s=arc-20160816;
        b=MRmX3jyeefpmOknQCHXpnSt8seC+iY8RmlQI2kFTTOWGwDHC/0icbLqsLhGysvS4rn
         ZEJs07ii2Ph/5wbRxIW8c4VeFwiMkIsPdvXJPiYJySKm1JHKUNz0SdYhwN6Uurm31pka
         fdLChoAlZt9fTbAY5NnRJ24gDUBCXkykQFcS13L6GVtPDgLdUTeObnd2WDN1Hz3yvjH2
         R53FT6xYxgaJEyphmcgxM6nrbdWsZY4zd+Ja2tjyETrdDMfyeuAY/qES/D5IkiBMaWnM
         WC+ZkkkA/+/hTcFrAWl5gZOPHrKz7cG31im/CnnYj9bqYxG/cxgdAI4rI9yAXo6eK2JY
         7zVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=m1TigshNoIP+Vi9vmVvoPrnijghdjuv7XHq8GbsTDUE=;
        fh=e9C0jWBxiN8ysyP2HpmebP42j3PqYNl57jqRmDi7rAM=;
        b=rvCZ74oDx78VEbLFW4CDZfYbwFL8WCEaMNhSoHHM6/xuKMNTF/kRmFU1W6X/7CT2WU
         oH64FKXkE+dvtNKlsm03x9xII8wzO7KEpaP6X0wPv3X426Ny4CqK7nJqgz+iWfCzuW7L
         drd2ITz+VZYLVSmH6ShE8o1YsOUgt/+zrmhSCN/QslJju4A200hcs+s7A3OXrpWxCeDd
         /iJqYEjqC8YE8VYSrHatmFwsAmJm1AC9s08nXfjV9j0vn/zV6rewSfQ24G3dhYm2A3iI
         z/fL/0pUTMIwIOUMCdsYqLbyuQ16J4aT4wJHW6B/kYdHEMS37F3kgG3qUlkJJPtLMGJo
         VmwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712860489; x=1713465289;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m1TigshNoIP+Vi9vmVvoPrnijghdjuv7XHq8GbsTDUE=;
        b=VMzU3Qr8wzBeGqYIeyLDbJKKUhQLDcawbWimCkm8KsMukHW/DSD+d3Ynktz5Nodoej
         FnIUhhn9mpAAB+yQUQ4jap4FenkY8MVgU4oqFE1rWAo2nC1/5QB7Nx7Uw8sE1JF3w0zG
         bHbomQSTXiX3eZEe3RAgAA7tqFUJNrJkz/OMN/Mg4AdY+P3jMI6ATfjgbYCyTGTvKFQL
         ETm6rBCFndhMKXXFWF/BVWXL1hvzjvOF0pSLujZcObfUFW3gXR+fmI7+YNaRe55Z23U9
         IYiLgAqqMzbVvHx7f63RtN4obBUGH/50ikir+9XP698TWNy5SYVNSjBFfouxLiJTeahn
         fCnQ==
X-Forwarded-Encrypted: i=2; AJvYcCVTJorl0iRfJBgKrDwlmNeCZ1jdI/KtOWQy4jPQ3/Sh1OZtvDWIdJ6f7idEI5TwjtCPc8SqvkKisIk3UdNUrVAJdnfFSYC47vDw
X-Gm-Message-State: AOJu0YwguWYI09RL/e5HZttYtSs7I3STfRsb3AYJQY7LKA9G34JFF/9O
	vgBuL7SQ6nDQ0wmPgrEhqieblN090BRERXEc2MGhwKlP8vscPCzc5RLauVdpVXw=
X-Google-Smtp-Source: AGHT+IEzjmyZLIKZZDELgs3GGdoVbMVJBy3unjU8cj7XVndKLBckbXiJz24wFEbxrJtaW7RF4UTJEA==
X-Received: by 2002:a05:622a:1449:b0:434:feb7:4437 with SMTP id v9-20020a05622a144900b00434feb74437mr582103qtx.26.1712860488975;
        Thu, 11 Apr 2024 11:34:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:18a9:b0:436:6cad:911e with SMTP id
 v41-20020a05622a18a900b004366cad911els195236qtc.2.-pod-prod-05-us; Thu, 11
 Apr 2024 11:34:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUJ6xKJCvVf+qmH5Ip3Y5BPjbLS/RN30dfXhhZXew5yDkpAk30So5chy6YovXQmWoC9J7pPkRhxGcpmCOISp0CC+gO28z9jkQOZ6+17
X-Received: by 2002:a05:620a:24c2:b0:78e:c701:9f3d with SMTP id m2-20020a05620a24c200b0078ec7019f3dmr613333qkn.9.1712860488101;
        Thu, 11 Apr 2024 11:34:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712860488; cv=none;
        d=google.com; s=arc-20160816;
        b=LBazRaf40k5/fe3LUvsP21XYg/tE+ToypCPBW+DojEjrX4pbkyUVLYsjrOWGt2aIBR
         jFGox665RcnhERS+GDuxyQldevU7Cb6e/K+Ap9vvURrckJMu0jazVe82rnsQXYMalvoM
         9kWl6hx3BNA9RxIsaNDcl41vagT7ykpCLOfP1RTNuMzpaguDb8YN6bnGwV3Y+4v0hlaN
         HLh/p1ulqnwYOap3qmM+n1XPN44QYakIH2rcwrZjLkPTFpUUIQgzCkE7D+pW6Ynp51Vw
         eyNt6vtp6uXB1qBO6LFGKc4A0t4p1HzxP4+VdXxdi+m40nkUglsCzNofDokftHu21vaF
         YlfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=f22Y2u6w5RR4bPwpXeyY0x3WtEQDu0YIBGC1+2o+onE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=EQLSv/MEi7RQlTOczHZkpB34gOP4pMhc2p7JfSzKtCMTf4TkMPJX3HkUy7QcnY7ESc
         9gllrbpwDBqiDvx2OzOsfJSDIc6P+cOxB15mzif4tTrb9bcJdwHkx+9cs0xIKmw9HWpx
         BuvO9plxc8kwCFmrHnc16/fFS9OnMz6lUi/dLigYtCEOSCFhybJttkML4WL9bi3BM9mS
         LEKVonkJKDVZa/VczTCIVXvVeA3muUI0zAZB/kUDc+AUGLplX5/8+Fi6GCrYMiQXWKYI
         Xk6ROyt3PU+R2Nr3+LPBNJtWRaIaUkJYMRIjmSpOpDy6yVf2tElcabQjaJFqvk7QXgt9
         l4Yg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id x14-20020a05620a14ae00b0078d6e2a14b4si2015736qkj.456.2024.04.11.11.34.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 11:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-85-dPQsZsZeNDiSD_ul7D6aYA-1; Thu, 11 Apr 2024 14:34:46 -0400
X-MC-Unique: dPQsZsZeNDiSD_ul7D6aYA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 19821801701
	for <blinux-list@gapps.redhat.com>; Thu, 11 Apr 2024 18:34:46 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1698940B4984; Thu, 11 Apr 2024 18:34:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D137640B4983
	for <blinux-list@redhat.com>; Thu, 11 Apr 2024 18:34:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81847802CAF
	for <blinux-list@redhat.com>; Thu, 11 Apr 2024 18:34:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-213-xRPQeo5oN2SGrlwBxyJBNg-1; Thu,
 11 Apr 2024 14:34:43 -0400
X-MC-Unique: xRPQeo5oN2SGrlwBxyJBNg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VFpJb2HpRzsMj
	for <blinux-list@redhat.com>; Thu, 11 Apr 2024 14:34:39 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VFpJb20l4zcbc; Thu, 11 Apr 2024 14:34:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VFpJb1ytyzcbC
	for <blinux-list@redhat.com>; Thu, 11 Apr 2024 14:34:39 -0400 (EDT)
Date: Thu, 11 Apr 2024 14:34:39 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: found out why knoppix has trouble booting for screen readers
Message-ID: <9e01d48b-7cc5-e4ec-f6d8-7156464ad677@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

A tutorial on sonic.net explains that the default desktop on knoppix is
kde.
Until knoppix gets updated again none of its accessibility will work since
the last update on 9.1 if memory serves was sometime in 2021.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

