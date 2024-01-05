Return-Path: <blinux-list+bncBCFJ3VNT5EIBBRO24CWAMGQEMSWURCQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id A831E825813
	for <lists+blinux-list@lfdr.de>; Fri,  5 Jan 2024 17:24:39 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-595d3d83323sf2441874eaf.2
        for <lists+blinux-list@lfdr.de>; Fri, 05 Jan 2024 08:24:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1704471878; cv=pass;
        d=google.com; s=arc-20160816;
        b=tCsJh4iSaY6mni/PxH/yTq8aHyu/qpV2ssMXAJ59k2Cs1NQDvgDz1zIr/RyexkoXGK
         VRdPwe7yrGtLinfn5T2YsJqk5+Lgk/fVd60bAPi/LNkGZxaa8xcMRYowShtVAd/gI6m5
         uem3U3CaCFZxdvdm3JB+/78X+H1FEi0lXAbanF8mgEWrrVDAYynUq6z5sE9xKwsraoN7
         Ox6n1E1b888/2w1nZmy/0yR+TIBECjoFYQf452mVPuguhR95lJ845Jdvau8rm9wrdHuG
         w0e8ainmyDMHJx4/a56Jp7uNaPcU17Qc/FRu0x1RV/uQoffiPtE74PegFzJ2V4DfP3QX
         2TXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=L6J7WFD4q89XB7yCQtZeTiaKKd3Te66zvTZdDFpgaSg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Ks4V2OU6zLJ/+WVRy8mIQxj4F0w1j1SENcs0EnrEoIaV7cKlVUtV027AX5BVNyqZIO
         0x7Q6AzwHrGwPGxCzLrbsEXiENm/UKroJ/992LT4Gf86wIRF1wp+nHEStd4Aeipa15QE
         x7zOElt0ohURuWzYIljq0LGADioZTrHy9O05OFMWvNk7XtK/CvRvGSpYunUjGj8HZGFR
         69kbTkUIUtgyPtVXbtGZFuTJUXP3l0IlGHLPho5Z6ETqPQckIKDKCdDFnl/CJrFfMx19
         1NhKPTV+Dm8dycSxXWlmr3s+OsNVeyc0x4AkB/12/ui/5ztyJR9/Iv7HI0EPkoLmUIcR
         hJgQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.170 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704471878; x=1705076678;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L6J7WFD4q89XB7yCQtZeTiaKKd3Te66zvTZdDFpgaSg=;
        b=OdYGvdLXDXX5o6VWWH3qZLNdx/3S4deXgSFp4xbefoVapAfX5kH8swe3ueYCWfSsOE
         yy7cgfK2RNaWq4gQLy0RzUgaw78RCn7gtM68+mnnFP5VxXNk71u0DnKWnj+Dufyxf9L/
         1qSr8Yuboa/H7ffBITmryfpSUFgmbvWcMLPXY49X60jGsjxd1W/PXUYAA+mxA3k/rNz4
         h76W30dFH3Ocb/5nSJgyzgcitVCb7D9c9LzBx+GY44YqHLMbWz5A17cQniesbijgXhJO
         RWmixXpZM3eArE8Tmi4Gy9DP4VwVaX/oCy9gYxRg3gFLZKwozpDBNKKkULG8LXmbNyfL
         /SWA==
X-Gm-Message-State: AOJu0Ywnr5P3azFvuKUglGFD0c42M5HD7D6cwmuzD9tU3EoVj7elbrXS
	hvh168Q3+FthVIPBWKXQsQJpM5lOIuhyJw==
X-Google-Smtp-Source: AGHT+IGSiIUsTjDPr5POMrvvfdA3I/37GEgPYzmaimIhpGMR7kW9ecb4wmo4gMl/D94gCL7TE8Boyg==
X-Received: by 2002:a4a:9c02:0:b0:595:7c83:cf42 with SMTP id y2-20020a4a9c02000000b005957c83cf42mr2277175ooj.10.1704471878173;
        Fri, 05 Jan 2024 08:24:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1007:b0:596:181e:ebc5 with SMTP id
 v7-20020a056820100700b00596181eebc5ls706425oor.1.-pod-prod-05-us; Fri, 05 Jan
 2024 08:24:37 -0800 (PST)
X-Received: by 2002:a05:6830:1db4:b0:6db:be64:8252 with SMTP id z20-20020a0568301db400b006dbbe648252mr2392735oti.48.1704471877451;
        Fri, 05 Jan 2024 08:24:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1704471877; cv=none;
        d=google.com; s=arc-20160816;
        b=wdkTVVlkxVkJkCY51mQG1d9YlNKgzZabZjvm6au4Iv1Nj+13u1USdplCpBmwAlW1L6
         3XAZ1lMcNmOcAuPkNyoYF17pvXO+Uo8B1aAmmbQNd170z3lLKoGt56jR4VUXPwdC9DHf
         HMQ82p2/RoNm2wywTthN328QzDRDY0oFfO9fYSjxpRPScUvNNVms+lZoD20ucJOm88iH
         72a9nEEXCJpyD9KY66MdLaYOfR6f8WUqj+n2QTM8W5aEwj/RGag50jQtiVRCqzt3LiPw
         6MSLPksTUWQY0rCghl6c2Ovr2uNtBmMWWJTYcvCgFtNR/xGjoWMKi5Vgg2el95SsdrfE
         gESw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=gFxA7dP3LBCIaunDtrD1Z8vclu6zcuAR4+/vHiBt26U=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=C5vOSnOx9rWihFXqJFapoYtgtgjXDf4qRZuumH/iJ39ozIiit7mgyA11+Ei3LeGLpK
         w8VcSWPI6L7fRVxlCP4lojQib4wykYrSYbumwYjEvGT5Tk5tio2jPVhGy8m2DzOJhor0
         vauuuhTujctHyJyKqgFraDa5O0QH/shepWxWnaj4OF1s+uOMzXuPMyDDOGR7im4fsSBO
         e7qBZTVbndFZMhKy0kASBXsSHXSNqSbtJhzwgaYDTy1F15KDY1HerhLfwqy79dTnSh1a
         g/RSfnHy4uKFu0UDMdwsLr/qGhobHo64x7V5HQI/kAtBKjJgMvjoom4uQN5oN4k7D8AI
         AE2Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.170 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o4-20020ac85a44000000b0042831bea150si2062693qta.534.2024.01.05.08.24.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 08:24:37 -0800 (PST)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.170 as permitted sender) client-ip=209.85.128.170;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-480-POVatO_nMMyEpaFvk-7NKw-1; Fri, 05 Jan 2024 11:24:36 -0500
X-MC-Unique: POVatO_nMMyEpaFvk-7NKw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0D27185A781
	for <blinux-list@gapps.redhat.com>; Fri,  5 Jan 2024 16:24:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id ED7C51121312; Fri,  5 Jan 2024 16:24:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E61DC1121306
	for <blinux-list@redhat.com>; Fri,  5 Jan 2024 16:24:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3278101A551
	for <blinux-list@redhat.com>; Fri,  5 Jan 2024 16:24:35 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com
 [209.85.128.170]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-694-Uak8ftHcOymfvpiQRHq3dA-1; Fri, 05 Jan 2024 11:24:34 -0500
X-MC-Unique: Uak8ftHcOymfvpiQRHq3dA-1
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5f0629e67f4so17915967b3.3
        for <blinux-list@redhat.com>; Fri, 05 Jan 2024 08:24:33 -0800 (PST)
X-Received: by 2002:a0d:c305:0:b0:5eb:bfac:69c with SMTP id f5-20020a0dc305000000b005ebbfac069cmr2151101ywd.45.1704471873350;
        Fri, 05 Jan 2024 08:24:33 -0800 (PST)
Received: from smtpclient.apple ([2607:fb90:d184:5013:51b4:1f28:29ce:171f])
        by smtp.gmail.com with ESMTPSA id j184-20020a0de0c1000000b005d39c874019sm739579ywe.66.2024.01.05.08.24.32
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jan 2024 08:24:33 -0800 (PST)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Subject: dragora and upgrading fedora
Message-Id: <F46D1BA2-10F4-4454-AAF4-3DE130D8C220@gmail.com>
Date: Fri, 5 Jan 2024 10:24:21 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.128.170 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

Anyone use dragora to upgrade fedora, or the command line dnf way?

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

