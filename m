Return-Path: <blinux-list+bncBCFJ3VNT5EIBBNE3V6VAMGQEJRQLRAY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE4A7E5CD3
	for <lists+blinux-list@lfdr.de>; Wed,  8 Nov 2023 19:04:37 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41e3e4aa311sf109901cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 08 Nov 2023 10:04:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699466676; cv=pass;
        d=google.com; s=arc-20160816;
        b=k37KMG0mcnJQ9Wn3jcuC4zQYCfFllXl/W3NqBOswjZDfLyHaUl49xvjyaQ8K3w65BF
         4dxlZm2COZ61ot7UwKBMX7EgaFL3ncb6ro4+2LeDKPQfJMSFxha/zXdZqd+A7xuEwjGV
         WJsgU06YNAgAGTVlg9GchPRmbsUALia4DqyIrEyUSRPZx+a9nEdISE8xigMfVmIiPwCA
         jlkGtU/ntZjF8GM8p1m/4ueAeQvqlZvXp3zq7ROhuAGqhHLNIcXIK428LYsH3jSXprdL
         pFp5lbdIPm4Ucp2UaTPNDqhYPS9y8PIBfoOfh8IooXfHh9b/pAk4+FUA1qNprVdR8vri
         /APQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=F7b/n8nKpv6cpsS1QJdXWJKG62G+GLks80lVlEhnSBk=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=WxUoH7s9QU21wka499AVgvPkkbikBRLyMpIIq3DUmm4e6ZUwee4qujUvKzyY2cZTTA
         Cyohi58X0T3YTTF/Ls9AIdZ7ri7htncGinZJzsDO6WHyO4FlX8rSXAT3eo/T/6EE3pZ/
         WVimzQkKCJHwQ6rxJXsyOLCETjVP60RbRAglV307u7Oo92eUuTyEH4w4qPwV+RFqfQy4
         o1DjYEBbUGCu2d4ikZuO281gmj2EYkWAi49s6kBV/vE/0+LKH8gCrwnDxrzd4dGx5Wme
         WwbciWWqvKqRzHmwVYh1jWW3b1RVzbfDc8+YdC5nvAzghlMKJ/rg29lYXYCTm9z1I/fe
         NdAQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.50 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699466676; x=1700071476;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F7b/n8nKpv6cpsS1QJdXWJKG62G+GLks80lVlEhnSBk=;
        b=kb+aiiCH5wRpmEk23xfCzEbAxxNkuCL6VLNIhVCzJ/qnkuxU4j+iC9SB+ipbVarpI4
         r5/sjQ3GVlV85lBt5278bwXG1UuBoLh04C5C89onO6nLpwPl4REFEzFgShBXgXIQtCi8
         BOXq5/946QkBK1Lz1WtoEVj8GPQZy+J+B+LW8TpnkKuf/fPjHpgbB4F57QWzhOj1Itc2
         x6XkF221Ks81vHfFY3ik7MKPP4+H34Pw4d+ezSaviHgZzCpfD1aSZwxzrnBfiQaCATnW
         Ct8geIMKF0BrfSBq58UpkHg9D+6pGbRrAZ/3QUjWtB9i6muf0ouQNsV8O4kGs3zCoTp3
         qzMA==
X-Gm-Message-State: AOJu0Yz+zZSFtSkurV7eGH9fYCq7/9wdUGpWBs1JCxEnkqR7dkMZWHjg
	af2TALDYNEmlR9NPlbTdSTA20w==
X-Google-Smtp-Source: AGHT+IH9zb2J7koLRWBXi/MMUYT9+h5zvXyq7cz2b1AFbokfrjeiXpnMw1XEtN/eJ869kbFRUEHRZA==
X-Received: by 2002:a05:622a:186:b0:41c:dd28:d16f with SMTP id s6-20020a05622a018600b0041cdd28d16fmr2680434qtw.55.1699466676332;
        Wed, 08 Nov 2023 10:04:36 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:15ca:b0:41e:89d9:f2f1 with SMTP id
 d10-20020a05622a15ca00b0041e89d9f2f1ls14776qty.1.-pod-prod-06-us; Wed, 08 Nov
 2023 10:04:35 -0800 (PST)
X-Received: by 2002:a05:622a:291:b0:418:1edd:d2ed with SMTP id z17-20020a05622a029100b004181eddd2edmr3108164qtw.4.1699466675390;
        Wed, 08 Nov 2023 10:04:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699466675; cv=none;
        d=google.com; s=arc-20160816;
        b=iER2k9wSHWAbZVJuwhUDS595mm7j5wUSR4WFMxmrUI8YVqCLoGRn/zwqlmHdSprRcV
         ogkYk+Nj/BMaM4o97MEND5c0R53yoiWSf0Ci+Owu3AVhYJzv0UD6639KXNQnBm4nh6s9
         eLdMuKYIjikb6xrraI+8hgdEQVSVw4ePfuhWfvusO9h6jOAzNEooWmhr255NlTWM6Aai
         WoW85/KFswOHulci5NOOxgHTLh+ZUBGQ58IcNQFUz3Wu0TUoD8bLNAoS9YVGAWaBxWQc
         8PssXn1ZXy8sx9mo57l93OkJDnMI7In9ll6mCUCU9BWnh7WE28SPPLE2EPrTrk+cvC04
         vurg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=PXwRt8JqYFtTnY7Kv9I0vI22JLbDf9++Hkl4/AeQuCk=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=dpIgZsBNWdTfEQIsPYbaUI5C/QnsQV2b8RQV0A+dT+ko0a4u7IQdkYCzEKC1pAkAPz
         M1y/Tyh4VJ5L0NjXnwzZeD+CBbcXH0tL59lcCio3sr6+z/u6pf7Dxdj9RuwuNggP2Usl
         fJ0ZfhAxPEdBeFsEaPXmH7B1XiDmy3aAQqt/i6nMj/ysXrgK5DWoGn/gS722SkkhN6jz
         QT/cIG3JqbH5ObeEKIdOlvtULPvQNLtKEWXzZJY/W+yD3V7g/gWdH2VtZGidBwfDn34G
         K7AfG0wcwTTyiHHsfAQasFXI+EKa8CoyZdoXfmC3ii3Lzb2gIwJDKhMR2H8yuM1R8hjs
         kcRw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.50 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id m8-20020a05622a118800b00417fa4d4ffcsi1664233qtk.104.2023.11.08.10.04.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 10:04:35 -0800 (PST)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.50 as permitted sender) client-ip=209.85.210.50;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-455-X_VpzMF1MQyDEenPCqno_g-1; Wed,
 08 Nov 2023 13:04:34 -0500
X-MC-Unique: X_VpzMF1MQyDEenPCqno_g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 951193810784
	for <blinux-list@gapps.redhat.com>; Wed,  8 Nov 2023 18:04:33 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 917052026D37; Wed,  8 Nov 2023 18:04:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88FCE2026D68
	for <blinux-list@redhat.com>; Wed,  8 Nov 2023 18:04:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F27A29AA38F
	for <blinux-list@redhat.com>; Wed,  8 Nov 2023 18:04:33 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-692-vZmiivZuOH69ArobsxikfA-1; Wed, 08 Nov 2023 13:04:31 -0500
X-MC-Unique: vZmiivZuOH69ArobsxikfA-1
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6ce532451c7so3787070a34.2
        for <blinux-list@redhat.com>; Wed, 08 Nov 2023 10:04:31 -0800 (PST)
X-Received: by 2002:a9d:634e:0:b0:6bd:db8:db with SMTP id y14-20020a9d634e000000b006bd0db800dbmr2413468otk.32.1699466670373;
        Wed, 08 Nov 2023 10:04:30 -0800 (PST)
Received: from smtpclient.apple ([2601:3cb:981:3e20:6cde:e9a4:4303:71d2])
        by smtp.gmail.com with ESMTPSA id a37-20020a4a98a8000000b0058737149513sm710522ooj.24.2023.11.08.10.04.29
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Nov 2023 10:04:29 -0800 (PST)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.100.2.1.4\))
Subject: playing mp4 files
Message-Id: <505BE7DD-17FB-4498-94FB-5A29D4E7FF90@gmail.com>
Date: Wed, 8 Nov 2023 12:04:25 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.210.50 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I have fedora 38.
I have parole media player and audacous.
I cannot play mp4 files.
How can this be fixed?

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

